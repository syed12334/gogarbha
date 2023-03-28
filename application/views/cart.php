<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cart extends CI_Controller {
    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *         http://example.com/index.php/welcome
     *    - or -  
     *         http://example.com/index.php/welcome/index
     *    - or -
     * Since this controller is set as the default controller in 
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    protected $data;
    public function __construct()
    {
        parent::__construct();
        header("Expires: Sat, 01 Jan 2000 00:00:00 GMT");
        header("Last-Modified: ".gmdate("D, d M Y H:i:s")." GMT");
        header("Cache-Control: post-check=0, pre-check=0",false);
        session_cache_limiter("must-revalidate");
        $this->load->helper('utility_helper');
        no_cache();
        $this->load->model('home_db');
        $this->load->model('cart_db');

        $this->load->library('MY_Cart');
        
        $this->data['UserDetail'] = '';
        if($this->session->userdata('atpUserDetail'))
        $this->data['UserDetail']=$this->session->userdata('atpUserDetail');
        $this->data['jsFile']=$this->load->view('jsFile', $this->data , TRUE);
        $settings = $this->home_db->getcontent1('settings','','','','','');
        $call = "080 25588985 / 86"; $orderemail = $emlid= "info@artiiplant.com";$time = '8:00am - 10:00pm';
        if(is_array($settings)){
        	if(!empty($settings[0]->phone)){
        		$call = $settings[0]->phone; 
        	}
        	if(!empty($settings[0]->email)){
        		$orderemail = $emlid= $settings[0]->email;
        	}
        	if(!empty($settings[0]->time)){
        		$time= $settings[0]->time;
        	}
        	
        	if(!empty($settings[0]->order_email)){
        		$orderemail= $settings[0]->order_email;
        	}
        }
        $this->data['settings'] = $settings;
        $this->data['call']=$call;
        $this->data['emlid']=$emlid;
        $this->data['time']=$time;
        $this->data['orderemail']=$orderemail;
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
    }
    
    public function addtocart(){
    	$type = $this->input->post('type');
    	$hid = $this->input->post('hid');
    	 
    	$product = $this->home_db->getcontent('frontview_'.$type.'_product','psid',$hid,'','');
    	if(is_array($product)){
    		$dat = array(
    				'id'      	 => $hid,
    				'qty'     	 => 1,
    				'image'   	 => cdn_url().$product[0]->image_path,
    				'price'   	 => $product[0]->selling_price,
    				'pcode'   	 => $product[0]->pcode,
    				'name'    	 => $product[0]->pname,
    				'pid'    	 => $product[0]->pid,
    				'purl'    	 => $product[0]->ppage_url,
    				'stock'    	 => $product[0]->stock,
    				'sizeid'     => $product[0]->size_id,
    				'sname'    	 => $product[0]->sname,
    				'color'    	 => $product[0]->clname,
    				'material'    	 => $product[0]->mname,
    				'plink'    	 => base_url().'products/product_view?page='.$product[0]->ppage_url.'&size='.$hid,
    				'options' => array('categ' => $type)
    		);
    
    		$this->cart->insert($dat);
    		echo $this->loadcart();
    	}
    	else{
    		echo 0;//invalid
    	}
    }
    
    public function countcart(){
    	echo count($this->cart->contents());
    }
    
    public function loadcart(){
    	$this->load->view('loadcart', $this->data);
    }
    
    public function removeitem()
    {
    	$rowid=$this->input->post('id');
    
    	$dat=array(
    			'rowid'=>$rowid,
    			'qty'=>'0'
    	);
		//print_r($dat);exit;
    	if($this->cart->update($dat))
		echo $this->cart->update($dat);exit;
		echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$this->session->userdata('charges'));
    }
    
	public function cart_total(){
    	echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$this->session->userdata('charges'));
    }
    
    public function cart_summary()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$this->load->view('cart-summary',$this->data);
    }
    
    
    public function updateCart()
    {
    	$rowid = $this->input->post('rowid');
    	$qty = $this->input->post('qty');
    	$msg = '';
    	$chaneqty = 0;
    	foreach ($this->cart->contents() as $items)
    	{
    		if($items['rowid']==$rowid){ // not a cushion
    			if(intval($qty) <= intval($items['stock'])){
    				$chaneqty = $qty;
    			}
    			else{
    				$chaneqty = $items['stock'];
    				$msg = "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>We're sorry! We are able to accommodate only ".$items['stock']." items of ".$items['name']." for each customer.</div>";
    			}
    			$dat = array(
    					'rowid'=>$rowid,
    					'qty'=>$chaneqty
    			);
    			$this->cart->update($dat);
    			break;
    		}
    	}
    	echo $this->data['msg'] = $msg;
    }
    
    public function loadsummary(){
    	$this->data['msg'] = '';
    	$this->load->view('loadcartsummary', $this->data);
    }
    
    public function removecoupon(){
    	$this->session->unset_userdata('coupon' );
    	$this->session->unset_userdata('discount');
    	$this->session->unset_userdata('discount_amt');
    
//     	$total_ = $this->home_db->calculatedisc('0',$this->cart->total());
//     	$tax_amt = $this->home_db->calculate_tax($this->data['tax'],$total_);
//     	echo '<div class="total saved"><span class="text">Tax:</span> <span class="price">'.$this->home_db->getnumberformat($tax_amt).'</span></div>';
//     	echo '<div class="total"><span class="text">Total:</span> <span class="price">'.$this->home_db->getcarttotal('0',$this->cart->total(),$this->data['tax']).'</span><span class="tax">(Incl.tax)</span></div>';
    }
    
    
    public function checkcoupon(){
    	$coupon = $this->input->post('coupon');
    	$result = $this->cart_db->checkcoupon($coupon);
    	if(is_array($result)){
    		if($result[0]->type == "0" && $result[0]->used_count != "0"){
    			echo 1;// already used
    		}
    		else{
    			$this->session->set_userdata('coupon', $coupon );
    			$discount = $result[0]->discount;
    			$this->session->set_userdata('discount', $discount );
    			$cart_tot = $this->cart->total();
    			$charges = $this->session->userdata('charges');
    			if(empty($charges)){
    				$charges = 0;
    			}
    			if($cart_tot > 0){
    				//$tot = $this->home_db->calculatedisc($discount,$cart_tot);
    				$tot = $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$charges);
    				$save = '';
    				if(floatval($tot)>0){
    					$save = '<span class="save">You have saved <i class="icon_rs_green"></i>'.$this->session->userdata('discount_amt').'</span>';
    				}
    										
    				echo '0~<p class="have gift_coupon_added">1 gift coupon added<span class="removecoupon icon icon-pencil" title="Edit"></span><br>'.$save.'</p>~<i class="icon_rs_green"></i>'.$tot;// exists
    				
    										
    			}
    			else{
    				echo '0~ ';// exists
    			}
    			 
    		}
    	}
    	else{
    		echo 1;// not exists
    	}
    }
    
    public function billing_shipping(){
    	if(count($this->cart->contents()) > 0){
    		$this->session->set_userdata('redirect_back', current_url() );
    		$this->load->view('billing-shipping', $this->data);
    	}
    	else{
    		redirect( base_url().'cart/cart_summary' );
    	}
    }
    
    public function billingdetails(){
    	if($_SERVER['REQUEST_METHOD']=='POST'){
    		$name = trim(preg_replace('!\s+!', ' ',$this->input->post('name')));
    		$phone = trim(preg_replace('!\s+!', '',$this->input->post('phone')));
    		$address1 = trim(preg_replace('!\s+!', ' ',$this->input->post('address1')));
    		$address2 = trim(preg_replace('!\s+!', ' ',$this->input->post('address2')));
    		$city = trim(preg_replace('!\s+!', ' ',$this->input->post('city')));
    		$pincode = trim(preg_replace('!\s+!', '',$this->input->post('pincode')));
    		$email = trim(preg_replace('!\s+!', ' ',$this->input->post('email')));
    
    		$shipname = trim(preg_replace('!\s+!', ' ',$this->input->post('shipname')));
    		$shipphone = trim(preg_replace('!\s+!', '',$this->input->post('shipphone')));
    		$shipaddress1 = trim(preg_replace('!\s+!', ' ',$this->input->post('shipaddress1')));
    		$shipaddress2 = trim(preg_replace('!\s+!', '',$this->input->post('shipaddress2')));
    		$shipcity = trim(preg_replace('!\s+!', ' ',$this->input->post('shipcity')));
    		$shippincode = trim(preg_replace('!\s+!', '',$this->input->post('shippincode')));
    		$landmark = trim(preg_replace('!\s+!', ' ',$this->input->post('landmark')));
    		$getdata = $this->cart_db->getstatedata($city);
    		$getshipdata = $this->cart_db->getstatedata($shipcity);
    
    		if((!empty($name) &&
    				!empty($phone) &&
    				!empty($address1) &&
    				!empty($city) &&
    				!empty($pincode) &&
    				!empty($shipname) &&
    				!empty($shipaddress1) &&
    				!empty($shippincode) &&
    				is_array($getdata) &&
    				is_array($getshipdata))
    		){
    			$db = array(
    					'name' => $name,
    					'phone' => $phone,
    					'address1' => $address1,
    					'address2' => $address2,
    					'city' => $city,
    					'cityname' => $getdata[0]->cname,
    					'statename' => $getdata[0]->sname,
    					'pincode' => $pincode,
    					'email' => $email,
    
    					'shipname' => $shipname,
    					'shipphone' => $shipphone,
    					'shipaddress1' => $shipaddress1,
    					'shipaddress2' => $shipaddress2,
    					'shipcity' => $shipcity,
    					'shipcityname' => $getshipdata[0]->cname,
    					'shipstatename' => $getshipdata[0]->sname,
    					'shippincode' => $shippincode,
    					'landmark' => $landmark
    			);
    			$this->session->set_userdata('billing', $db );
    
    			echo 1;
    		}
    		else{
    			echo 0;
    		}
    	}
    	else{
    		echo 0;
    	}
    }
    
    public function payment(){
    
    	$bill = $this->session->userdata('billing');
    	if(!empty($bill) && count($this->cart->contents()) > 0){
    		$this->session->set_userdata('redirect_back', current_url() );
    		//$this->load->view('order-summary.php', $this->data);
			redirect( base_url().'cart/billing_shipping' );
    	}
    	else{
    		$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Please fill required details</div>');
    		redirect( base_url().'cart/billing_shipping' );
    	}
    	 
    }
    
    
    
    public function placeorder(){
    	
    	if($_SERVER['REQUEST_METHOD']!='POST'){
    		$bill = $this->session->userdata('billing');
    		$type = strtolower($this->input->get('type'));
    		
    		if($type == "cod" || $type == "payu"){
    		if(!empty($bill) && count($this->cart->contents()) > 0)
			{
    			$txnnum_temp=substr(hash('sha256', mt_rand() . microtime()), 0, 20);
    			$UserDetail = $this->data['UserDetail'];
    			if(is_array($UserDetail)){ // check whether user logged in
    				$det = $UserDetail;
    				$id = $det[0]->id;
    				$name=$det[0]->name;
    				$emailid=$det[0]->emailid;
    			}
    			else{ // check guest details exists
    				$emailid = $bill['email'];
    				$db = array(
    						'email'=>trim(preg_replace('!\s+!', '',$bill['email'])),
    						'type'=>'general'
    				);
    				$check = $this->home_db->getloginval($db);
    				if(is_array($check)){ // guest exists
    					$id = $check[0]->id;
    					$name=$check[0]->name;
    				}
    				else{ // guest not exists
    					$pass = mt_rand(100000,999999);
    					$db=array(
    							'emailid'=>$bill['email'],
    							'name'=>$bill['name'],
    							'phone'=>$bill['phone'],
    							'address1'=>$bill['address1'],
    							'address2'=>$bill['address2'],
    							'country'=>'India',
    							'town'=>$bill['city'],
    							'town_name'=>$bill['cityname'],
    							'state_name'=>$bill['statename'],
    							'zip'=>$bill['pincode'],
    							'created_date'=>date('Y-m-d H:i:s'),
    							'password'=>sha1($pass),
    							'login_type'=>'general'
    					);
    					$reg = $this->home_db->insertRecord('users',$db);
    					$id = $reg;
    		
    					$db=array(
    							'email'=>$bill['email'],
    							'type'=>'general'
    					);
    					
    					$this->load->library('email');
    					$config = array (
    							'mailtype' => 'html',
    							'charset'  => 'utf-8',
    							'priority' => '1'
    					); 
    					$this->data['password'] = $pass;
    					$this->data['email'] = $bill['email'];
    					$this->data['name'] = $bill['name'];
    					$body=$this->load->view('send_login',$this->data,true);
    					$this->email->initialize($config);
    					$this->email->from('noreply@artiiplant.com', 'Artiiplants');
    					$this->email->to($bill['email']);
    					$this->email->subject('Your Account created successfully!!');
    					$this->email->message($body);
    					$this->email->send();    		
    					$name=$bill['name'];
    				}
    				
    				$val['regdata'] = $this->home_db->getloginval($db);
    				$this->session->set_userdata('atpUserDetail',$val['regdata']);
    			}
    		
    			$total_amt = $this->cart->total();
    			$coupon = $this->session->userdata('coupon');
    			$discount_amt = $this->session->userdata('discount_amt');
    			$discount = $this->session->userdata('discount');
    			$total_ = $this->home_db->calculatedisc($this->session->userdata('discount'),$total_amt);
    			$tax_amt = $this->home_db->calculate_tax(0,$total_);
    			$charges = $this->session->userdata('charges');
    			$total_amt_paid = $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$charges);
    			$total_amt_paid = str_replace(",","",$total_amt_paid);
    		
    			$db=array(
    					'txnid'=>$txnnum_temp,
    					'user_id'=>$id,
    					'user_name'=>$name,
    					'total_amt'=>$total_amt,
    					'coupon_code'=>$coupon,
    					'paymode'=>$type,
    					'discount'=>$discount,
    					'saved_amt'=>str_replace(",","",$discount_amt),
    					'devilery_charge'=>str_replace(",","",$charges),
    					'total_amt_paid'=>$total_amt_paid,
    					'ordered_date'=>date('Y-m-d H:i:s'),
    					'status'=>-1
    			);
    			$oid = $this->home_db->insertRecord('orders',$db);
    		
    			$orderNo = $this->cart_db->generateOrderNo($oid);
    			$db = array('orderid' => $orderNo);
    		
    			$this->home_db->updateRecord('orders',$db,'id',$oid);
    		
    			$db=array(
    					'oid'=>$oid,
    					'bname'=>$bill['name'],
    					'bemail'=>$bill['email'],
    					'baddr1'=>$bill['address1'],
    					'baddr2'=>$bill['address2'],
    					'bcity'=>$bill['cityname'],
    					'bcity_id'=>$bill['city'],
    					'bstate'=>$bill['statename'],
    					'bcountry'=>'India',
    					'bpincode'=>$bill['pincode'],
    					'bphone'=>$bill['phone'],
    					'sname'=>preg_replace("/[^A-Za-z ]/", '', $bill['shipname']),
    					'saddr1'=>$bill['shipaddress1'],
    					'saddr2'=>$bill['shipaddress2'],
    					'scity'=>$bill['shipcityname'],
    					'scity_id'=>$bill['shipcity'],
    					'sstate'=>$bill['shipstatename'],
    					'scountry'=>'India',
    					'spincode'=>$bill['shippincode'],
    					'sphone'=>$bill['shipphone'],
    					'landmark'=>$bill['landmark']
    			);
    		
    			$this->home_db->insertRecord('orders_bill_ship',$db);
    		
    			$name=$bill['name'];
    			$phone=$bill['phone'];
    		
    			$prod_info = '';$delivery = array();$tot_qty = 0;
    			foreach ($this->cart->contents() as $items){
    				$options = $this->cart->product_options($items['rowid']);
    				$categ = $options['categ'];
    				//echo $items['image'];
    				$img = str_replace(cdn_url(),"",$items['image']);
    				$img = str_replace("assets/".$categ."/","",$img);
    				$dest = 'assets/orders/'.$categ.'/'.$img;
    				if(!empty($img)){
	    				if(!file_exists('assets/orders/'.$categ.'/'.$img)){
	    					copy($items['image'], $dest);
	    				}
    				}
    				$psid = $items['id'];
    				$prod_info = preg_replace('/[^a-zA-Z0-9\s]/', '', $items['name']);
    				$tot_qty = $tot_qty+$items['qty'];
    				
    				
    				$db=array(
    						'oid'=>$oid,
    						'categ'=>$categ,
    						'psid'=>$psid,
    						'pname'=>$items['name'],
    						'pcode'=>$items['pcode'],
    						'qty'=>$items['qty'],
    						'unit_price'=>$items['price'],
    						'price'=>$items['price']*$items['qty'],
    						'size_id'=>$items['sizeid'],
    						'size_name'=>$items['sname'],
    						'color'=>$items['color'],
    						'material'=>$items['material'],
    						'image_path'=>$dest,
    						'status'=>0
    				);
    				$this->home_db->insertRecord('orders_products',$db);
    			}
    			
    			$days = 6;
    			$settings = $this->data['settings'];
    			if(is_array($settings)){
    				if(!empty($settings[0]->delivery_days)){
    					$days = $settings[0]->delivery_days;
    				}
    			}
    		
    			$value = $days;
    		
    			$db = array(
    					'delivery_date' => date("Y-m-d",strtotime(date('Y-m-d') . "+".$value." days")),
    					'delivery_days' => $days,
    					'tot_qty' => $tot_qty,
    					'emailid' => $bill['email']
    					);
    		
    			$this->home_db->updateRecord('orders',$db,'id',$oid);
    		//echo $prod_info;
    		if($type == "payu"){
    			/* require_once 'payu/payu.php';
    		
    			pay_page( array (
		    			'key' => 'KsDoun',
		    			'txnid' => $txnnum_temp,
		    			'amount' => $total_amt_paid,
		    			'firstname' => urlencode(preg_replace("/[^A-Za-z ]/", '', $name)),
		    			'email' => $emailid,
		    			'phone' => $phone,
		    			'productinfo' => $prod_info,
		    			'surl' => base_url().'cart/order_success/'.urlencode($orderNo),
		    			'furl' => base_url().'cart/order_failure/'.urlencode($orderNo)),
		    			'Bgekb0Uu' ); */
    			$this->data['key']='Z1bZM2';
    			$this->data['txnid']=$txnnum_temp;
    			$this->data['amount']=$total_amt_paid;
    			$this->data['firstname']=urlencode(preg_replace("/[^A-Za-z ]/", '', $name));
    			$this->data['email']=$emailid;
    			$this->data['phone']=$phone;
    			$this->data['productinfo']=$prod_info;
    			$this->data['surl']=base_url().'cart/placeorder';
    			$this->data['furl']=base_url().'cart/placeorder';
    			$this->data['service_provider']='payu_paisa';
    			$this->load->view('placeorder', $this->data);
    			
    			
    		}
    		else if($type == "cod"){
    			$db = array(
    					
    					'status' => 1,
    					'paymode' => 'COD'
    			);
    			
    			$this->home_db->updateRecord('orders',$db,'id',$oid);
    			$order = $this->home_db->getcontent1('orders','id',$oid,'1','id','desc');
    			$order_products = $this->home_db->getcontent('orders_products','oid',$order[0]->id,'0','');
    					if(is_array($order_products)){
    						foreach ($order_products as $p){
    							$this->cart_db->updateStock($p->psid,$p->qty);
    						}
    					}
    					
    					$cpcnt = $this->home_db->getcontent1('voucher_code','code',$order[0]->coupon_code,'','','');
    		
    					if(is_array($cpcnt)){
    						$db = array(
    		
    								'used_count' => $cpcnt[0]->used_count + 1,
    						);
    		
    						$this->home_db->updateRecord('voucher_code',$db,'code',$order[0]->coupon_code);
    					}
    		
    					$this->send_mail($order[0]->id, 'success');
    					require_once 'payu/smsAPI.php';
    					$mclass = new sendSms();
    					
    					$days = $order[0]->delivery_days;
    					if(intval($days) > 1){
    						$days = ''.($days-1).'-'.($days+1).' working days';
    					}
    					else if(intval($days) == 1){
    						$days = '1 working day';
    					}
    					else if(intval($days) == 0){
    						$days = '5-7 working days';
    					}
    					$order_bill = $this->home_db->getcontent('orders_bill_ship','oid',$order[0]->id,'','');
    					$shpname = $order_bill[0]->sname;
    					$sms = "Dear $shpname,Thank you for choosing Artiiplant products for your Home Decor. Order No: ".$order[0]->orderid." of Total Amount: Rs.".$this->home_db->getnumberformat($order[0]->total_amt_paid).". Order will be delivered to you within ".$days.".";
    					$response = $mclass->sendSmsToUser($sms, "91".$order_bill[0]->sphone);
    					$db = array(
    							'sms_response' => $response
    							);
    					
    					$this->home_db->updateRecord('orders',$db,'id',$order[0]->id);
    					$this->session->unset_userdata('coupon');
    					$this->session->unset_userdata('discount');
    					$this->session->unset_userdata('discount_amt');
    					$this->session->unset_userdata('billing');
    					$this->session->unset_userdata('charges');
    					$this->cart->destroy();
    					redirect( base_url().'cart/order_success/'.$order[0]->orderid );
    		}
    		}
    		else{
    			$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Please fill required details</div>');
    			redirect( base_url().'cart/billing_shipping' );
    		}
    	}
    	else{
    		$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Please select payment method</div>');
    		redirect( base_url().'cart/payment' );
    	}
    	}
    	else{
    		$mihpayid = $this->input->post('mihpayid');
    		$mode = $this->input->post('mode');
    		$status = $this->input->post('status');
    		$unmappedstatus = $this->input->post('unmappedstatus');
    		$key = $this->input->post('key');
    		$txnid = $this->input->post('txnid');
    		$amount = $this->input->post('amount');
    		$net_amount_debit = $this->input->post('net_amount_debit');
    		$addedon = $this->input->post('addedon');
    		print_r($_POST);exit;
    		if(!empty($mihpayid) &&
    				!empty($status) &&
    				!empty($unmappedstatus) &&
    				!empty($key) && $key == 'Z1bZM2' &&
    				!empty($txnid) &&
    				!empty($amount) &&
    				!empty($net_amount_debit) &&
    				!empty($addedon))
					{
    			$order = $this->home_db->getcontent1('orders','txnid',$txnid,'-1','id','desc');
    		
    			$this->session->unset_userdata('coupon');
    			$this->session->unset_userdata('discount');
    			$this->session->unset_userdata('discount_amt');
    			$this->session->unset_userdata('billing');
    			$this->session->unset_userdata('charges');
    			$this->cart->destroy();
    		
    			if(strtoupper($status)=="SUCCESS" && is_array($order))
    			{
    				if($net_amount_debit == $order[0]->total_amt_paid){ // amount debited correct
    					$db = array(
    							'status' => 1,
    							'payuid' => $mihpayid,
    							'paymode' => $mode,
    							'pstatus' => $status,
    							'pamount' => $amount,
    							'pamount_debit' => $net_amount_debit,
    							'payudate' => $addedon
    					);
    		
    					$this->home_db->updateRecord('orders',$db,'id',$order[0]->id);
    					
    					$order_products = $this->home_db->getcontent('orders_products','oid',$order[0]->id,'0','');
    					if(is_array($order_products)){
    						foreach ($order_products as $p){
    							$this->cart_db->updateStock($p->psid,$p->qty);
    						}
    					}
    					
    					$cpcnt = $this->home_db->getcontent1('voucher_code','code',$order[0]->coupon_code,'','','');
    		
    					if(is_array($cpcnt)){
    						$db = array(
    		
    								'used_count' => $cpcnt[0]->used_count + 1,
    						);
    		
    						$this->home_db->updateRecord('voucher_code',$db,'code',$order[0]->coupon_code);
    					}
    		
    					$this->send_mail($order[0]->id, 'success');
    					require_once 'payu/smsAPI.php';
    					$mclass = new sendSms();
    					
    					$days = $order[0]->delivery_days;
    					if(intval($days) > 1){
    						$days = ''.($days-1).'-'.($days+1).' working days';
    					}
    					else if(intval($days) == 1){
    						$days = '1 working day';
    					}
    					else if(intval($days) == 0){
    						$days = '5-7 working days';
    					}
    					$order_bill = $this->home_db->getcontent('orders_bill_ship','oid',$order[0]->id,'','');
    					$shpname = $order_bill[0]->sname;
    					$sms = "Dear $shpname,Thank you for choosing Artiiplant products for your Home Decor. Order No: ".$order[0]->orderid." of Total Amount: Rs.".$this->home_db->getnumberformat($order[0]->total_amt_paid).". Order will be delivered to you within ".$days.".";
       					$response = $mclass->sendSmsToUser($sms, "91".$order_bill[0]->sphone);
    					$db = array(
    							'sms_response' => $response
    							);
    					
    					$this->home_db->updateRecord('orders',$db,'id',$order[0]->id);
    					redirect( base_url().'cart/order_success/'.$order[0]->orderid );
    				}
    				else{ // amount mismatch
    		
    					$db = array(
    							'status' => -1,
    							'payuid' => $mihpayid,
    							'paymode' => $mode,
    							'pstatus' => $status,
    							'pamount' => $amount,
    							'pamount_debit' => $net_amount_debit,
    							'payudate' => $addedon
    					);
    		
    					$this->home_db->updateRecord('orders',$db,'id',$order[0]->id);
    		
    					$this->load->library('email');
    					$config = array (
    							'mailtype' => 'html',
    							'charset'  => 'utf-8',
    							'priority' => '1'
    					);
    		
    					$this->email->initialize($config);
    					$this->email->from('noreply@artiiplant.com', 'Artiiplants');
    					$this->email->to($this->data['orderemail']);
    					//$this->email->to("aruna@savithru.com");
    					$this->email->subject($order[0]->orderid.' - Amount Mismatch');
    					$logarray = print_r( $_POST, true );
    					$this->email->message('Amount Mismatch ordered amount('.$order[0]->total_amt_paid.') != paid amount('.$net_amount_debit.').<br><pre>'.$logarray.'</pre>');
    					$this->email->send();
    		
    					$this->send_mail($order[0]->id, 'failure');
    					redirect( base_url().'cart/order_failure/'.$order[0]->orderid );
    				}
    			}
    			else{
    				$db = array(
    						'status' => -1,
    						'payuid' => $mihpayid,
    						'paymode' => $mode,
    						'pstatus' => $status,
    						'pamount' => $amount,
    						'pamount_debit' => $net_amount_debit,
    						'payudate' => $addedon
    				);
    		
    				$this->home_db->updateRecord('orders',$db,'id',$order[0]->id);
    				$this->send_mail($order[0]->id, 'failure');
    				redirect( base_url().'cart/order_failure/'.$order[0]->orderid );
    			}
    		
    		}
    		else{
    			redirect( base_url().'cart/order_failure/0' );
    		}
    	}
    	
    }
    
    
    public function order_success(){
    	$oid = $this->uri->segment(3);
    	 
    	if($oid){
    		$order = $this->home_db->getcontentstatus('orders','orderid',$oid,'status','','','');
    		//$this->send_mail($order[0]->id, 'success');
    		$this->data['order'] = $order;
    		$order_products = $this->home_db->getcontent('orders_products','oid',$order[0]->id,'0','');
    		$this->data['order_products'] = $order_products;
    	}
    	else{
    		$order = 0;
    		$this->data['order'] = $order;
    	}
    	$this->load->view('success',$this->data);
    }
    
    public function order_failure() {
    	/* Payment failure logic goes here. */
    	$oid = $this->uri->segment(3);
		print_r($oid);exit;
    	if($oid){
    		$order = $this->home_db->getcontent('orders','orderid',$oid,'-1','');
			echo $this->db->last_query();exit;
    		$this->data['order'] = $order;
    		$order_products = $this->home_db->getcontent('orders_products','oid',$order[0]->id,'0','');
    		$this->data['order_products'] = $order_products;
    	}
    	else{
    		$order = 0;
    		$this->data['order'] = $order;
    	}
    	$this->load->view('failure',$this->data);
    }
    
    
    public function send_mail($oid, $msg){
    	 
    	$this->data['msg'] = $msg;
    	$orders =$this->home_db->getcontent('orders','id',$oid,'','');
    	$this->data['orders'] = $orders;
    	$order_bill = $this->home_db->getcontent('orders_bill_ship','oid',$oid,'','');
    	//print_r($order_bill);
    	$this->data['order_bill'] = $order_bill;
    	$this->data['order_products'] = $this->home_db->getcontent('orders_products','oid',$oid,'0','');
    	 
    	//$text = $this->home_db->getcontent('emailer','','','','');
    
    	$body=$this->load->view('order_success',$this->data,true);
    
    	$this->load->library('email');
    	$config = array (
    			'mailtype' => 'html',
    			'charset'  => 'utf-8',
    			'priority' => '1'
    	);
    
    	/*seller mail*/
    	 
    	$body1=$this->load->view('order_successseller',$this->data,true);
    	 
    	$this->email->initialize($config);
    	$this->email->from('noreply@artiiplant.com', 'Artiiplants');
    	$this->email->to($this->data['orderemail']);
    	//$this->email->to("aruna@savithru.com");
    	if($msg == 'success'){
    		/* if(is_array($text) && !empty($text[0]->osheaderadmin)){
    			$this->email->subject($text[0]->osheaderadmin);
    		}
    		else{ */
    			$this->email->subject($orders[0]->orderid.' - You Got New Order (Success)');
    		//}
    		 
    	}
    	else{
    		/* if(is_array($text) && !empty($text[0]->ofheaderadmin)){
    			$this->email->subject($text[0]->ofheaderadmin);
    		}
    		else{ */
    			$this->email->subject($orders[0]->orderid.' - You Got New Order (Falied)');
    		//}
    		 
    	}
    	$this->email->message($body1);
    	$this->email->send();
    
    	/*seller mail*/
    	  
    	/*customer mail*/
    	$this->email->initialize($config);
    	$this->email->from('noreply@artiiplant.com', 'Artiiplants');
    	$list = array($order_bill[0]->bemail);
    	//$list = array( 'aruna@savithru.com');
    	$this->email->to($list);
    	if($msg == 'success'){
    		/* if(is_array($text) && !empty($text[0]->osheader)){
    			$this->email->subject($text[0]->osheader);
    		}
    		else{ */
    			$this->email->subject($orders[0]->orderid.' - Thanks for Order');
    		//}
    	}
    	else{
    		/* if(is_array($text) && !empty($text[0]->ofheader)){
    			$this->email->subject($text[0]->ofheader);
    		}
    		else{ */
    			$this->email->subject($orders[0]->orderid.' - Oops!! Something is wrong with payment');
    		//}
    
    	}
    	$this->email->message($body);
    	$send = $this->email->send();
    	if($send){
    		$db = array(
    				'email_status' => 1
    		);
    
    		$this->home_db->updateRecord('orders',$db,'id',$oid);
    	}
    	/*customer mail*/
        
        
        
    }
    
    
}

?>