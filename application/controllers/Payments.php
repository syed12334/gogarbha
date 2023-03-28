<?php
defined('BASEPATH') or exit('No direct script access allowed');

require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
class payments extends CI_Controller
{

	 public function __construct(){
		 parent::__construct();
		 date_default_timezone_set('Asia/Kolkata');
		 $this->load->model('home_db');
		 $this->data = array();
	 }

	public function StartPayment()
    {    
			//$txnnum_temp=substr(hash('sha256', mt_rand() . microtime()), 0, 20);
			$page_url   = $this->input->post('page_url');
			$mobile_no = $this->input->post('mobile_no');
			$name = $this->input->post('name');
			$address = $this->input->post('address');
			$order_no = $this->input->post('order_no');
			//print_r($_POST);exit;
			$homa_det = $this->home_db->getRecords('homa',array('page_url'=> $page_url),'id,homa_name,amount,page_url');
			
			//if(count($homa_det) && $mobile_no != "" && is_array($name)){
			if(count($homa_det) && $mobile_no != "" && ($name)){
				/*$name_val = array();
				foreach($name as $key=>$val){
					if($val != ""){
						$name_val[] = $val;
					}
				}*/
				$digits = 4;
				$rand = str_pad(rand(0, pow(10, $digits)-1), $digits, '0', STR_PAD_LEFT);
				$order_id = $rand.time();
				//$currency = $student[0]->is_nri ? "USD" : "INR";
				$currency = "INR";
				$amount = $homa_det[0]->amount;
				
				$dbp = array(
							'order_id'=>$order_id,
							'homa_id'=>$homa_det[0]->id,
							'amount'=>$amount,
							//'pay_array'=>print_r($_POST, true),
							'added_datetime'=>date('Y-m-d H:i:s'),
							'status'=>-1,
						);
						
				$payid = $this->home_db->insertRecord('payment_log',$dbp);
				
				//$notes = array("mobile_no"=>$mobile_no, "names"=>implode("~", $name_val), "homa"=>$homa_det[0]->homa_name, "pay_id"=>$payid);
				$notes = array("mobile_no"=>$mobile_no, "names"=>$name, "homa"=>$homa_det[0]->homa_name, "pay_id"=>$payid);
				$logarray = $notes;
				$logarray["address"] = $address;
				$logarray["order_no"] = $order_no;
				$logarray = json_encode($logarray,true);
				$this->home_db->updateRecord('payment_log', array("pay_array"=>$logarray), array("id"=>$payid));
				//razorpay
				//https://razorpay.com/docs/payment-gateway/web-integration/standard/
				$api = new Api(MERCHANT_KEY, MERCHANT_SECRET);
				
				$razor_amt = $amount*100;
				
				$order  = $api->order->create(array('receipt' => $order_id, 'amount' => $razor_amt, 'currency' => $currency, 'payment_capture'=>1, 'notes'=>$notes)); // Creates order//, 'transfers'=>$tranfers
				
				$orderId = "";
				if(isset($order["id"])){
					$orderId = $order['id']; // Get the created Order ID
					$this->home_db->updateRecord("payment_log", array("razor_oid"=>$orderId), array("id"=>$payid));
					echo json_encode(array("status"=>"success", "orderId"=>$orderId, "amount"=>$razor_amt, "currency"=>$currency, "key"=>MERCHANT_KEY));
				}
				else{
					echo json_encode(array("status"=>"failure", "msg"=>"Unable to proceed for payment"));
				}
			}
			else{
				echo json_encode(array("status"=>"failure", "msg"=>"Student details not found")); 
			}
        
    }

		

	function razorpayResponse(){
        $student_string = "";
        $status = "&status=failure";
        if($_SERVER['REQUEST_METHOD']=='POST'){
            
            $val = 0;
            $payid = $this->input->post('paymentID');
            $orderID = $this->input->post('orderID');
            $signature = $this->input->post('signature');
			
            $insertedpaylog = $this->home_db->getPaymentLog(array('razor_oid'=>$orderID));
            
            $payDetails = array();
            //This is submited by the checkout form
            
            if(count($insertedpaylog)){
                $db = array(
                            'pay_id' => $payid,
                            'signature' => $signature,
                            );
                $this->home_db->updateRecord('payment_log', $db, array('id'=>$insertedpaylog[0]->id));
            }
            $insertedpaylog = $this->home_db->getPaymentLog(array('razor_oid'=>$orderID));
            if ($payid == "" || $orderID == "" || $signature == "" || count($insertedpaylog) == 0)
            {
                echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Registration un-successful. Payment Details not found</div>';
            }
            else{
                $val = $this->checkRazorpayTxn($insertedpaylog);
				if($val == 1){
					echo '<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Registered successfuly. Amount of Rs.'.$this->home_db->getnumberformat($insertedpaylog[0]->amount).' received towards reference no.'.$insertedpaylog[0]->order_id.' on '.date("d-m-Y H:i:s").'. Thank you</div>';
                }
				else if($val == 2){
					echo '<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Your registration details are already captured towards Reference no.'.$insertedpaylog[0]->order_id.' </div>';
				}
				else if($val == -2){
				    echo '<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Transaction is Pending. Save the Reference no.'.$insertedpaylog[0]->order_id.'. Please wait for sometime to know the transaction status. </div>';
				}
				else{
					$db = array(
						'pstatus'=>"signature mismatch"
					);
					$this->home_db->updateRecord('payment_log',$db, array('id'=>$insertedpaylog[0]->id));
					echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Not registered successfuly. Amount gets refunded within 4-5 working days if amount is debited. Reference no.'.$insertedpaylog[0]->order_id.' on '.date("d-m-Y H:i:s").'. Thank you, Srisankara TV - Kamadhenu Telefilms Pvt Ltd</div>';
				}
               
            }
        }
        
    }
	
	private function checkRazorpayTxn($insertedpaylog, $check_sign = 1){
        
	    $api = new Api(MERCHANT_KEY, MERCHANT_SECRET);
	    	    
        
        $oid = $insertedpaylog[0]->id;
        $pay_id = "";
        $razor_oid = $orderID = $insertedpaylog[0]->razor_oid;
        $order_id = $insertedpaylog[0]->order_id;
        
        $order  = $api->order->fetch($orderID)->payments();
        $orderDetails = $order->toArray();
        $amount = 0; $status = "failed";
        if(isset($orderDetails["items"])){
            $items = $orderDetails["items"];
            foreach ($items as $key=>$val){
                $amount = $val["amount"] - $val["fee"];//paise amount
                $orgstatus = strtolower($val["status"]);
                if($orgstatus == "captured"){
                    $status = strtolower($val["status"]);
                    $pay_id = $val["id"];
                    $this->home_db->updateRecord('payment_log',array("pay_id"=>$pay_id), array('id'=>$oid));
                }
                else if($pay_id == ""){
                    $status = strtolower($val["status"]);
                    $pay_id = $val["id"];
                    $this->home_db->updateRecord('payment_log',array("pay_id"=>$pay_id), array('id'=>$oid));
                }
                else if($orgstatus != "captured" && $orgstatus != "failed"){
                    $status = strtolower($val["status"]);
                    $pay_id = $val["id"];
                    $this->home_db->updateRecord('payment_log',array("pay_id"=>$pay_id), array('id'=>$oid));
                }
                
            }
        }
        
        $logarray = print_r($orderDetails, true);
        
        $db = array(
            'payment_log' => $logarray,
            'modify_date' => date("Y-m-d H:i:s"),
        );
        $this->home_db->updateRecord('payment_log',$db, array('id'=>$oid));
        
        $file = 'rtxn_status.txt';
        $log_array = $insertedpaylog[0]->pay_id."---".$razor_oid."---".$order_id."==response=".$logarray."\r\n";
        file_put_contents($file, $log_array , FILE_APPEND | LOCK_EX);
        
        $insertedpaylog = $this->home_db->getPaymentLog(array('id'=>$oid));
        
        $razorpay_signature = $insertedpaylog[0]->signature;
        $generated_signature = hash_hmac('sha256', $insertedpaylog[0]->razor_oid . '|' . $insertedpaylog[0]->pay_id, MERCHANT_SECRET);
        
        
        if($status == "failed"){
            $db = array(
                'status' => -1,
                'pstatus'=>"failure"
            );
            
            $this->home_db->updateRecord('payment_log',$db, array('id'=>$oid));
            return -1;
        }
        else if($status != "captured"){
            $db = array(
                'status' => -1,
                'pstatus'=>""
            );
            
            $this->home_db->updateRecord('payment_log',$db, array('id'=>$oid));
            return -2;
        }
        
        if ($check_sign == 0 || ($check_sign == 1 && $generated_signature == $razorpay_signature)) {
            $db = array(
                    'status' => 1,
                    'pstatus'=>"success"
                );
           
            $this->home_db->updateRecord('payment_log',$db, array('id'=>$oid));
            
            $res = $this->saveDetails($insertedpaylog, $api);
			
			return $res ;
        }
        else{
            $this->home_db->updateRecord("payment_log", array("gen_signature"=>$generated_signature), array("id"=>$oid));
            return -1;
        }
        
    }
	
	function checkrazor(){
        $orderID = $this->input->post("orderid");
        $insertedpaylog = $this->home_db->getPaymentLog(array('razor_oid'=>$orderID));
        if(count($insertedpaylog)){    
            
                $api = new Api(MERCHANT_KEY, MERCHANT_SECRET);
                
                $order  = $api->order->fetch($orderID)->payments();
                $orderDetails = $order->toArray();
                $pay_id = "";
                $flag = 0;
                if(isset($orderDetails["items"])){
                    $items = $orderDetails["items"];
                    foreach ($items as $key=>$val){
                        if(strtolower($val["status"]) == "captured"){
                            $flag = 1;
                            $pay_id = $val["id"];
                        }
                    }
                }
                $db = array("payment_log"=>print_r($orderDetails, true));
                
                if($flag == 1){     
                    $this->home_db->updateRecord("payment_log", array("pay_id"=>$pay_id), array("id"=>$insertedpaylog[0]->id));
                    $res = $this->saveDetails($insertedpaylog, $api);
                    if($res == 1){
                        $db["pstatus"] = "success";
                        $db["status"] = 1;
                    }
					
					$this->home_db->updateRecord("payment_log", $db, array("id"=>$insertedpaylog[0]->id));
                }
				/* else{
					$db["pstatus"] = "failure";
					$this->home_db->updateRecord("payment_log", $db, array("id"=>$insertedpaylog[0]->id));
				} */
            
        }
        
    }
    
    function setCronjob(){
        //$insertedpaylog = $this->home_db->getPaymentLog(array('razor_oid'=>$orderID));
        $order = $this->home_db->getPaymentLog(array("pstatus"=>"", "id >="=>2610, "razor_oid !="=>"")); // all pending status
        //print_r($order); exit;
        foreach ($order as $o){
            $insertedpaylog = $this->home_db->getPaymentLog(array('id'=>$o->id));
            $val = $this->checkRazorpayTxn($insertedpaylog, 0);
            $oid = $insertedpaylog[0]->id;
            switch($val){
                case 1: $this->home_db->updateRecord("payment_log", array("save_resp"=>"success"), array("id"=>$oid)); break;
                case 2: $this->home_db->updateRecord("payment_log", array("save_resp"=>"already reg"), array("id"=>$oid)); break;
                case -2: $this->home_db->updateRecord("payment_log", array("save_resp"=>"pending"), array("id"=>$oid)); break;
                case -1: $this->home_db->updateRecord("payment_log", array("save_resp"=>"failure"), array("id"=>$oid)); break;
                default:  break;
            }
        }
        
        $currentdate = date("Y-m-d H:i:s");
        $handle = fopen("lastruntime.txt", "r");
        if ($handle) {
            unlink("lastruntime.txt");
        }
        
        $file = 'lastruntime.txt';
        $log_array = $currentdate;
        file_put_contents($file, $log_array , FILE_APPEND | LOCK_EX);
    }
	
		private function saveDetails($insertedpaylog){
		
		$mobile_no = $this->input->post('mobile_no', true);
		$address   = $this->input->post('address', true);
		$page_url   = $this->input->post('page_url', true);
		
		$name = $this->input->post('name', true);
		
	
			
		$homa_id = $insertedpaylog[0]->homa_id;
		$pay_id = $insertedpaylog[0]->id;
		$reg_det = $this->home_db->getRecords('homa_registration',array('pay_log_id'=> $pay_id),'id');
		if(count($reg_det) == 0){
			$homa_det = $this->home_db->getRecords('homa',array('id'=> $homa_id),'id,homa_name,amount,page_url');
			$db = array(
					'homa_id'=>$homa_det[0]->id,
					'homa_name'=>$homa_det[0]->homa_name,
					'mobile_no'=>$mobile_no,
					//'name'=>$name,
					'address'=>$address,
					'amount'=>$homa_det[0]->amount,
					'registered_date'=>date('Y-m-d H:i:s'),
					'pay_log_id'=>$insertedpaylog[0]->id,
				  );

			$regid = $this->home_db->insertRecord('homa_registration',$db);
		
			$msg=0;
			
				$dbp = array(
					'reg_id'=>$regid,
					'name'=>$name,
					//'rashi'=>$rashi[$k],
					//'nakshatra'=>$nakshatra[$k],
					//'gotra'=>$gotra[$k],
				);
				//print_r($dbp);exit;
				$msg = $this->home_db->insertRecord('homa_persons',$dbp);	
				//echo $this->db->last_query();exit;
			
			
			//$msg = "Successfully registered to ".$homa_det[0]->homa_name.". Amount of Rs.".$this->home_db->getnumberformat($homa_det[0]->amount)." received towards reference no.".$insertedpaylog[0]->order_id." on ".date("d-m-Y H:i:s").". Thank you, Srisankara TV";
			$msg = "Successfully registered to ".$homa_det[0]->homa_name.". Amount of Rs.".$this->home_db->getnumberformat($homa_det[0]->amount)." received towards reference no.".$insertedpaylog[0]->order_id.". Thank you, Srisankara TV - Kamadhenu Telefilms Pvt Ltd";
			$this->sendSMS($msg, $mobile_no);
			return 1;
		}
		else{
			return 2;
		}
	}
	
	
  
	
	function sendRegretSMS(){
	    $msg = "We found the registration to Thamasoma Jyotirgamaya towards reference no. 06331622870946 is invalid, due to the payment that you have made in Test mode. Please register again to perform pooja in your name. Sorry for the inconvenience happened. Thank you, Srisankara TV - Kamadhenu Telefilms Pvt Ltd";
	    $this->sendSMS($msg, "9632551617");//9916096298, 9619230181, 9845625164, 9916096298
	    //echo "9632551617";
	}
	
	private function sendSMS($msg, $phone){
        require_once("razorpay-php/smsAPI.php");
		$mclass = new sendSms();
		$res = $mclass->sendSmsToUser($msg, $phone);
    }
	
	public function testSMS(){
		$msg= "Successfully registered to Rs.900. Amount of Rs.900 received towards reference no.900. Thank you, Srisankara TV - Kamadhenu Telefilms Pvt Ltd";
		$phone = "9632551617";
        require_once("razorpay-php/smsAPI.php");
		$mclass = new sendSms();
		$res = $mclass->sendSmsToUser($msg, $phone);
    }
}
