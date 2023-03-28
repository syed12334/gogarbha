<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once('easebuzz-lib/easebuzz_payment_gateway.php');
include_once('easebuzz-lib/payment.php');

class Cart extends CI_Controller {

    protected $data;
    public function __construct()
    {
        parent::__construct();
     
        $this->load->helper('utility_helper');
        date_default_timezone_set('Asia/Kolkata');

        $this->load->model('home_db');
        $this->load->model('cart_db');
		$this->load->model('web_db');

        $this->load->library('MY_Cart');
        
        $this->data['UserDetail'] = '';
        if($this->session->userdata('atpUserDetail'))
        $this->data['UserDetail']=$this->session->userdata('atpUserDetail');
        $this->data['jsFile']=$this->load->view('jsFile', $this->data , TRUE);
        $settings = $this->home_db->getcontent1('settings','','','','','');
        $call = "98862 03199"; $orderemail = $emlid= "info@gogarbha.com";$time = '8:00am - 10:00pm';
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
		$this->data['currencyid']= $this->session->userdata('currencyid');
        $this->data['settings'] = $settings;
        $this->data['call']=$call;
        $this->data['emlid']=$emlid;
        $this->data['time']=$time;
        $this->data['social']= $this->home_db->sqlExecute('select * from social_links');
        $this->data['orderemail']=$orderemail;
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
    }
    
    public function addtocart(){
	   $UserDetail = $this->data['UserDetail'];
        $user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
        $user_id = ($UserDetail !='') ? $UserDetail[0]->id : '';
        
        //echo "<pre>";print_r($_POST);exit;
        $type = $this->input->post('type');
        $hid = $this->input->post('hid');
        
         
        $product = $this->home_db->sqlExecute("SELECT p.id as pid,c.id as cid,c.page_url as cpage_url,su.page_url as subpage_url, su.id as suid,p.cat_id,p.subcat_id,p.name as pname,p.page_url,p.material_id,p.color_id,p.pcode,pi.image_path,pi.thumb,ps.size_id,ps.selling_price,ps.mrp,ps.b2b_selling_price,ps.stock,ps.minimum_buy,s.name as sname,s.page_url as spage_url,ps.id as psid,su.id as suid FROM products p left join product_images pi on pi.pid =p.id left join product_sizes ps on ps.pid=p.id left join sizes s on s.id=ps.size_id left join category c on c.id = p.cat_id left join subcategory su on su.id =p.subcat_id where ps.id=".$hid." ");
        //echo $this->db->last_query();exit;
        $min_qty = ($user_type ==2 && $product[0]->minimum_buy !=0) ?  $product[0]->minimum_buy: 1;
        if(is_array($product)){
                $selling_price = $product[0]->selling_price;
        if($user_type ==2 )
        {
            $selling_price = $product[0]->b2b_selling_price;
        }
        $db = array(
                    'id'         => $hid,
                    'qty'        => $min_qty,
                    'image'      => cdn_url().$product[0]->image_path,
                    'price'      => $selling_price,
                    'discount'   => $this->home_db->discount($product[0]->mrp,$selling_price),
                    'mrp'        => $product[0]->mrp,
                    'pcode'      => $product[0]->pcode,
                    'name'       => $product[0]->pname,
                    'pid'        => $product[0]->pid,
                    'purl'       => $product[0]->page_url,
                    'stock'      => $product[0]->stock,
                    'sizeid'     => $product[0]->size_id,
                    'sname'      => $product[0]->sname,
                    'plink'      => base_url().'product/'.$product[0]->page_url.'',
                    'options' => array('categ' => $type),
                    'user_type'=>$user_type,
                    'dmsg'=>''
            );
        
      
    
            $this->cart->insert($db);
            echo $this->loadcart();
        }
        else{
            echo 0;//invalid
        }
    }
    
    public function countcart(){
		$UserDetail = $this->data['UserDetail'];
		$user_id = ($UserDetail !='') ? $UserDetail[0]->id : '';
		if($user_id !='')
		{
			$cart_prod = $this->home_db->getRecords("cart_products", array("user_id"=>$UserDetail[0]->id), "id,prodsize_id, qty");
			$cart_count = count($cart_prod);
		}else{
			$cart_count = count($this->cart->contents());
		}
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
		
    	if($this->cart->update($dat)){
            echo "item removed";
        }else {
            echo "Item not removed";
        }
		//echo $this->cart->update($dat);exit;
		echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$this->session->userdata('charges'));
    }
    
	public function cart_total(){
		
		$UserDetail = $this->data['UserDetail'];
        $settings = $this->home_db->runSql('select * from settings');
		$user_id = ($UserDetail !='') ? $UserDetail[0]->id : '';
                $tax_amts = $settings[0]->invoice_tax/100*$this->cart->total();

		if($user_id !='')
		{
			$cart_prod = $this->home_db->getRecords("cart_products", array("user_id"=>$user_id), "id,prodsize_id, qty");
			$cart_tot =  $this->home_db->getcarttotal($this->session->userdata('discount'),count($cart_prod),$this->session->userdata('charges'));
		}else{
			$cart_tot = $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total()+$tax_amts+$settings[0]->delivery_charges,$this->session->userdata('charges'));
		}
        $tax_amts = $settings[0]->invoice_tax/100*$this->cart->total();
    	echo $this->cart->total()+$tax_amts+$settings[0]->delivery_charges;
    	
    }
	
    
    public function cart_summary()
    {
		$UserDetail = $this->data['UserDetail'];
      // echo "<pre>";print_r($UserDetail);exit;
		$user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : 0;
		$this->data['user_type'] = $user_type;
		$this->data['settings'] = $this->home_db->runSql('select * from settings');
		  $requesturi = $_SERVER['REQUEST_URI'];
       $res = str_replace("/shop/", "", $requesturi);
          $this->session->set_userdata('rurl',$res);
    	$this->session->set_userdata('redirect_back', current_url() );
		if(!is_array($UserDetail)){
            //echo "<pre>";print_r($this->cart->contents());exit;
			$this->load->view('cart-summary',$this->data);
		}
		if(is_array($UserDetail))
		{
           // echo "New";
    	       $this->load->view('cart_summary_b2b',$this->data);
		}
		
    }
    
	
	public function removeCartitem()
    {
		$UserDetail = $this->data['UserDetail'];
    	$id=$this->input->post('id');
        //echo "<pre>";print_r($_POST);exit;
        $dat=array(
                'rowid'=>$id,
                'qty'=>0
                
        );
        
        //$delete = $this->cart->delete($dat);
        if($this->cart->update($dat)) {
            echo "Deleted successfuly";
        }else {
            echo "Not Deleted";
        }
    
    	//$this->home_db->deleterecord('cart_products',array("id"=>$id));
		
		
		//$cart_prod = $this->home_db->getRecords("cart_products", array("user_id"=>$UserDetail[0]->id), "id,prodsize_id, qty");
		//echo $this->home_db->getcarttotal($this->session->userdata('discount'),count($cart_prod),$this->session->userdata('charges'));
    }
	
	public function updateCartProd()
    {
		$UserDetail = $this->data['UserDetail'];
    	$id = $this->input->post('id');
    	$qty = $this->input->post('qty');
		
		$user_type = $UserDetail[0]->user_type;
		$user_id = $UserDetail[0]->id;
		$cart_prod = $this->home_db->getRecords("cart_products", array("user_id"=>$user_id), "id,prodsize_id, qty");
    	$msg = '';
    	$chaneqty = 0;
    	if(count($cart_prod)>0)
	    {
		   foreach($cart_prod as $cp)
		   {
			  $cart_products = $this->web_db->getStockProducts($cp->prodsize_id,$user_type);
		
			
			
				
    		  if($id==$cp->id){ // not a cushion
			     if($user_type ==2) 
				 {				 
					 if(intval($qty) < intval($cart_products[0]->minimum_buy) ){
						 $msg = "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>We're sorry! You have to order minimum  ".$cart_products[0]->minimum_buy." items of ".$cart_products[0]->pname." for each customer.</div>";
						echo $this->data['msg'] = $msg;exit;
					 }
				 } 
    			if(intval($qty) <= intval($cart_products[0]->stock)){
    				$chaneqty = $qty;
    			}
				else{
    				$chaneqty = $cart_products[0]->stock;
    				$msg = "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>We're sorry! We are able to accommodate only ".$cart_products[0]->stock." items of ".$cart_products[0]->pname." for each customer.</div>";
    			}
				
    			
    			$dat = array(
    					'qty'=>$chaneqty
    			);
    			$this->home_db->updateRecord_arr('cart_products', $dat,array("id"=>$id));
				//echo $this->db->last_query();exit;
    			break;
    		 }
			}
    	}
    	echo $this->data['msg'] = $msg;
    }
    
    public function updateCart()
    {
    	$rowid = $this->input->post('rowid');
    	$qty = $this->input->post('qty');
		
		//print_r($_POST);exit;
    	$msg = '';
    	$chaneqty = 0;$tax =[];$ars = [];
    	foreach ($this->cart->contents() as $items)
    	{
            $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
            //echo $this->db->last_query();
            $taxes = [];
                $tax_amt = (int)$productTax[0]->tax / 100 * (int)$items['subtotal'];
                $taxes[] = (int)$productTax[0]->tax / 100 * (int)$items['subtotal'];
  
         

            $ars[] = (int)$items['subtotal'];
                    
    		if($items['rowid']==$rowid){ // not a cushion
    		
    			$dat = array(
    					'rowid'=>$rowid,
    					'qty'=>$qty
    			);
    			$this->cart->update($dat);
    		}
    	}
        $tax = number_format($this->cart->total()+(int)array_sum($tax));
       // echo array_sum($tax);
        //echo $tax;exit;
    	echo json_encode(['status'=>true,'totalitems'=>$this->cart->total_items(),'totalamount'=>number_format($this->cart->total()),'totaltax'=>$tax,'tax'=>(int)array_sum($taxes)]);
        //redirect('cart/cart_summary');
    }
    
    public function loadsummary(){
		
		$UserDetail = $this->data['UserDetail'];
		$this->data['user_type'] = ($UserDetail !='') ? $UserDetail[0]->user_type : 0;
    	$this->data['msg'] = '';
    	$this->load->view('loadcartsummary', $this->data);
    }
	
	 public function loadb2bsummary(){
		$UserDetail = $this->data['UserDetail'];
		$this->data['user_type'] = ($UserDetail !='') ? $UserDetail[0]->user_type : 0;
    	$this->data['msg'] = '';
    	$this->load->view('loadb2bcartsummary', $this->data);
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
          $settings = $this->home_db->runSql('select * from settings');
          $tax_amts = $settings[0]->invoice_tax/100*$this->cart->total();
 		//print_r($coupon);exit;
          $this->session->set_userdata('couponcode',$coupon);
    	$result = $this->cart_db->checkcoupon($coupon);
        //echo $this->db->last_query();exit();
    	if(is_array($result)){
    		if($result[0]->type == "0" && $result[0]->used_count != "0"){
    			echo 1;// already used
    		}
    		else{
    			$this->session->set_userdata('coupon', $coupon );
    			$discount = $result[0]->discount;
    			$this->session->set_userdata('discount', $discount );
    			$cart_tot = $this->cart->total()+$tax_amts+$settings[0]->delivery_charges;
    			$charges = $this->session->userdata('charges');
    			if(empty($charges)){
    				$charges = 0;
    			}
    			if($cart_tot > 0){
    				//$tot = $this->home_db->calculatedisc($discount,$cart_tot);
                    $tot = $this->cart->total()+$tax_amts+$settings[0]->delivery_charges;
    				//$tot = $this->home_db->getcarttotal($this->session->userdata('discount'),,$charges);
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
   public function destroycoupon() {
       $this->session->unset_userdata('discount');
       $this->session->unset_userdata('coupon');
                  
     
        redirect('cart/cart_summary');
      
   }
    public function billing_shipping(){
		$UserDetail = $this->data['UserDetail'];
        //echo "<pre>";print_r($UserDetail);exit;
        //echo "<pre>";print_r($this->cart->contents());exit;
		$this->data['settings'] = $this->home_db->runSql('select * from settings');
    	if(!empty($UserDetail)){

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
    					'landmark' => $landmark,
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
     $UserDetail = $this->data['UserDetail'];
    	$bill = $this->session->userdata('billing');
		//print_r($bill);exit;
		$cart_prod = array();
		if(is_array($UserDetail))
		{
			$user_type = $UserDetail[0]->user_type;
			$cart_prod = $this->home_db->getRecords("cart_products", array("user_id"=>$UserDetail[0]->id), "id,prodsize_id, qty");
		}
    	if(!empty($bill) && count($cart_prod) > 0){
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
        //error_reporting(1);ini_set('display_errors', 1);
    	 $UserDetail = $this->data['UserDetail'];
        //echo "<pre>";print_r($_POST);exit;
	    $type = $this->input->post('type');
        if($_SERVER['REQUEST_METHOD'] ='POST'){
                $settings = $this->home_db->runSql('select * from settings');
            $settings = $this->data['settings'];
            $randid = rand(1234567799999999,9999999999999999);
            $bill = $this->session->userdata('billing');
            //echo "<pre>";print_r($bill);exit;
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

            if($type == 'razor') {
                                if(is_array($UserDetail))
                            {
                                $user_type = $UserDetail[0]->user_type;
                                //$cart_prod = $this->home_db->getRecords("cart_products", array("user_id"=>$UserDetail[0]->id), "id,prodsize_id, qty");
                            }
                             $checkPin = $this->home_db->getRecords('pincodes',['pincode'=>$pincode,'pincode1'=>$shippincode,'city_id'=>$city,'status'=>0],"*");
                             if(count($checkPin) >0) {

                           
                            $this->data['user_type'] = $user_type;
                            //print_r($_POST);exit;
                            $tax_amts=[];$arss=[];
                                foreach($this->cart->contents() as $value) {
                                    $productTax = $this->home_db->getRecords('products',['id'=>$value['pid']],'tax');
                                    $tass = (int)$productTax[0]->tax / 100 * $value['subtotal'];
                                    $arss[] = $value['subtotal']+$tass;
                                    $tax_amts[] = (int)$productTax[0]->tax / 100 * $value['subtotal'];
                                }
                                //echo "<pre>";print_r($tax_amts);
                                //echo array_sum($tax_amts);
                                $totals = (int)array_sum($arss);
                             $discountAmount ="";
                             if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                $discountAmount .= (int)$this->session->userdata('discount')/100*$totals;
                             }
                            if($type == "razor"){
                            if(isset($_POST))
                            {
                                $txnnum_temp=substr(hash('sha256', mt_rand() . microtime()), 0, 20);
                                $UserDetail = $this->data['UserDetail'];
                                if(is_array($UserDetail)){ // check whether user logged in
                                    $det = $UserDetail;
                                    $id = $det[0]->id;
                                    $name=$det[0]->name;
                                    $emailid=$det[0]->emailid;
                                    //echo "<pre>";print_r($det);exit;
                                }
                                else{ // check guest details exists
                                    $emailid = $email;
                                    $db = array(
                                            'email'=>trim(preg_replace('!\s+!', '',$email)),
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
                                                'emailid'=>$email,
                                                'name'=>$name,
                                                'phone'=>$phone,
                                                'address1'=>$address1,
                                                'address2'=>$address2,
                                                'country'=>'India',
                                                'town'=>$city,
                                                'zip'=>$pincode,
                                                'created_date'=>date('Y-m-d H:i:s'),
                                                'password'=>sha1($pass),
                                                'login_type'=>'general'
                                        );
                                        $reg = $this->home_db->insertRecord('users',$db);
                                        $id = $reg;
                                        $db=array(
                                                'email'=>$email,
                                                'type'=>'general'
                                        );
                                        $this->load->library('email');
                                        $config = array (
                                                'mailtype' => 'html',
                                                'charset'  => 'utf-8',
                                                'priority' => '1'
                                        ); 
                                        $this->data['password'] = $pass;
                                        $this->data['email'] = $email;
                                        $this->data['name'] = $name;
                                        $body=$this->load->view('send_login',$this->data,true);
                                        $this->email->initialize($config);
                                        $this->email->from('noreply@gogarbha.com', 'Gogarbha');
                                        $this->email->to($bill['email']);
                                        $this->email->subject('Your Account created successfully!!');
                                        $this->email->message($body);
                                        $this->email->send();           
                                        $name=$name;
                                    }
                                    $val['regdata'] = $this->home_db->getloginval($db);
                                   // echo "<pre>";print_r($val['regdata']);exit;
                                    $this->session->set_userdata('atpUserDetail',$val['regdata']);
                                }
                                $tot_amt = (int)$this->cart->total()+(int)array_sum($tax_amts);
                                //$total_amt = $this->home_db->getcarttotalamt($this->session->userdata('discount'),$tot_amt);
                                $coupon = (int)$this->session->userdata('coupon');
                                $discount_amt = (int)$this->session->userdata('discount_amt');
                                $discount = $this->session->userdata('discount');
                                $total_ = $this->home_db->calculatedisc($this->session->userdata('discount'),$tot_amt);
                                //$tax_amt = $this->home_db->calculate_tax(0,$total_);
                                $charges = $this->session->userdata('charges');
                                $total_amt_paid = $settings[0]->delivery_charges+(int)$this->cart->total();
                                   $arsss = []; 
                                   foreach ($this->cart->contents() as $items){
                                       $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
                                        if(empty($productTax[0]->tax) && $productTax[0]->tax=="") {
                    
                                        }else {
                                            $tax_amts = $productTax[0]->tax / 100 * $items["subtotal"];
                                            $arsss[] = $tax_amts;
                                        }
                                  }
                                $tax_amts = (int)$settings[0]->invoice_tax/100*(int)$this->cart->total();
                                $totalTaxAmount = (int)$checkPin[0]->charges+number_format(floatval($this->cart->total()),2)+number_format(floatval(array_sum($arsss)),2)-number_format(floatval($discountAmount),2);
                                $total_amt_paid = str_replace(",","",$total_amt_paid);
                                $currencyid = $this->session->userdata('currencyid');
                                $priceType = ($currencyid !='' ) ? $currencyid['price_type'] : '';
                                $qtyss=array();
                                foreach($this->cart->contents() as $qorders){
                                    $qtyss[]= $qorders['qty'];
                                }
                                      $dborders=array(
                                        'txnid'=>$txnnum_temp,
                                        'user_id'=>$id,
                                        'user_name'=>$name,
                                        'emailid'=>$email,
                                        'tot_qty'=>array_sum($qtyss),
                                        'total_amt'=>$tot_amt,
                                        'coupon_code'=>$coupon,
                                        'discount'=>$discountAmount,
                                        'saved_amt'=>str_replace(",","",$discount_amt),
                                        'devilery_charge'=>$checkPin[0]->charges,
                                        'total_amt_paid'=>$totalTaxAmount,
                                        'delivery_days'=>$settings[0]->delivery_days,
                                        'ordered_date'=>date('Y-m-d H:i:s'),
                                        'status'=>2,
                                        'paymode'=>'Online',
                                        'currency_type'=>$priceType,
                                        'taxamount'=>array_sum($arsss),
                                        'pincode'=>$this->session->userdata('pincode'),
                                        'randid'=>$randid,
                                        'discount_per'=>(int)$this->session->userdata('discount')
                                );
                                $getOrders = $this->home_db->getRecords('orders',['randid'=>$randid],'*');
                                $oid="";
                               if(count($getOrders) >0) {

                               }else {
                                   $oid = $this->home_db->insertRecord('orders',$dborders);
                                     $this->session->set_userdata('orderids',$oid);
                                    if($oid) {                    
                                        $orderNo = $this->cart_db->generateOrderNo($oid);
                                        $db = array('orderid' => $orderNo);
                                        $this->home_db->updateRecord('orders',$db,'id',$oid);
                                    }
                               } 
                                $dbb=array(
                                        'oid'=>$oid,
                                        'bname'=>$name,
                                        'bemail'=>$email,
                                        'baddr1'=>$address1,
                                        'baddr2'=>$address2,
                                        'bcity'=>$city,
                                        'bcity_id'=>$city,
                                        'bcountry'=>'India',
                                        'bpincode'=>$pincode,
                                        'bphone'=>$phone,
                                        'sname'=>$shipname,
                                        'saddr1'=>$shipaddress1,
                                        'saddr2'=>$shipaddress2,
                                        'scity_id'=>$shipcity,
                                        'sstate'=>$shipcity,
                                        'scountry'=>'India',
                                        'spincode'=>$shippincode,
                                        'sphone'=>$shipphone,
                                        'randid'=>$randid
                                );
                            $this->home_db->insertRecord('orders_bill_ship',$dbb);
                                $name=$name;
                                $phone=$phone;
                                $prod_info = '';$delivery = array();$tot_qty = 0;
                                foreach ($this->cart->contents() as $items){
                                     $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
                                     $taxAmo ="";
                                     if(empty((int)$productTax[0]->tax) && (int)$productTax[0]->tax=="") {
                                        $taxAmo .="";
                                     }else {
                                        $tax_amts = (int)$productTax[0]->tax / 100 * $items["subtotal"];
                                        $taxAmo .= $tax_amts;
                                    }
                                    $dbp=array(
                                            'oid'=>$oid,
                                            'pname'=>$items['name'],
                                            'pcode'=>$items['pcode'],
                                            'qty'=>$items['qty'],
                                            'unit_price'=>$items['mrp'],
                                            'price'=>$items['price'],
                                            'size_id'=>$items['sizeid'],
                                            'size_name'=>$items['sname'],
                                            'image_path'=>$items['image'],
                                            'status'=>0,
                                            'tax' =>(int)$productTax[0]->tax / 100 * $items["subtotal"],
                                            'randid'=>$randid,
                                    );
                                        $this->home_db->insertRecord('orders_products',$dbp);
                                }
                                if($type == "razor"){
                                    $digits = 4;
                                    $rand = str_pad(rand(0, pow(10, $digits)-1), $digits, '0', STR_PAD_LEFT);
                                    $order_id = $rand.time();
                                    $currency = "INR";
                                    $arss = []; 
                                    foreach ($this->cart->contents() as $items){
                                        $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
                                        if(empty((int)$productTax[0]->tax) && (int)$productTax[0]->tax=="") {
                    
                                        }else {
                                            $tax_amts = (int)$productTax[0]->tax / 100 * $items["subtotal"];
                                            $arss[] = $tax_amts;
                                        }
                                    }
                                    $tors = (int)$settings[0]->invoice_tax/100*(int)$this->cart->total();
                                    $totalPayamount = (int)array_sum($arsss)+(int)$this->cart->total()+(int)array_sum($arss);
                                    $this->session->set_userdata('totalpayamount',$totalPayamount);
                                                    //$notes = array("mobile_no"=>$mobile_no, "names"=>implode("~", $name_val), "homa"=>$homa_det[0]->homa_name, "pay_id"=>$payid);
                                    $notes="";$logarray=[];
                                    foreach ($this->cart->contents() as $itemss){
                                    $notes = array( "pname"=>$itemss['name'], "pcode"=>$itemss['pcode'], "size_name"=>$itemss['sname']);
                                    $logarray = $notes;
                                    }
                                    $logarray["order_no"] = $orderNo;
                                    $logarray = json_encode($logarray,true);
                                    
                                    $c =$checkPin[0]->charges;
                                     $tax_amtss = array_sum($arsss);
                                     $discountAmountss ="";
                                    if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                        $discountAmountss .= (int)$this->session->userdata('discount')/100*(int)$this->cart->total()*100;
                                    }
                                    $tax_amts=[];$arss=[];
                                    foreach($this->cart->contents() as $value) {
                                        $productTax = $this->home_db->getRecords('products',['id'=>$value['pid']],'tax');
                                        $tax_amts[] = floatval($productTax[0]->tax / 100 * $value['subtotal']);
                                        $tass = floatval($productTax[0]->tax / 100 * $value['subtotal']);
                                        $arss[] = $value['subtotal']+$tass;
                                        $tax_amts[] = floatval($productTax[0]->tax / 100 * $value['subtotal']);
                                    }
                                    $totals = array_sum($arss);
                                    $discountAmount ="";
                                    if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                        $discountAmount .= (int)$this->session->userdata('discount')/100*$totals;
                                    }
                                    $razor_amt = floatval($tax_amtss)+(int)$c+floatval($this->cart->total())- floatval($discountAmount);
                                    $orderId = "";
                                    $easebuzzObj = new Easebuzz(MERCHANT_KEY, SALT, ENV);
                                    $txnid = 'GOG'.rand(1,100);
                                    $postData = array ( 
                                        "txnid" => $txnid, 
                                        "amount" => sprintf("%.2f", $razor_amt), 
                                        "firstname" => $name, 
                                        "email" => $email, 
                                        "phone" => $phone, 
                                        "productinfo" => "For test", 
                                        "surl" =>base_url().'cart/easebuzzResponse/', 
                                        "furl" => base_url().'cart/easebuzzResponse/',
                                        "udf1" =>$orderNo,
                                    );
                                    $easebuzzObj->initiatePaymentAPI($postData);    
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

                            }else {
                                $this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Sorry Service is not available for entered Pincode.</div>');
                                redirect( base_url().'cart/billing_shipping' );
                            }
            }else if($type =="cod") {
                $randid = rand(1234567799999999,9999999999999999);
                    if(is_array($UserDetail))
                    {
                        $user_type = $UserDetail[0]->user_type;
                    }
                     $checkPin = $this->home_db->getRecords('pincodes',['pincode'=>$pincode,'pincode1'=>$shippincode,'city_id'=>$city,'status'=>0],"*");
                     if(count($checkPin) >0) {
                                     $this->data['user_type'] = $user_type;
                                //print_r($_POST);exit;
                                $tax_amts=[];$arss=[];
                                    foreach($this->cart->contents() as $value) {
                                        $productTax = $this->home_db->getRecords('products',['id'=>$value['pid']],'tax');
                                        $tass = (int)$productTax[0]->tax / 100 * $value['subtotal'];
                                        $arss[] = $value['subtotal']+$tass;
                                        $tax_amts[] = (int)$productTax[0]->tax / 100 * $value['subtotal'];
                                    }
                                    //echo "<pre>";print_r($tax_amts);
                                    //echo array_sum($tax_amts);
                                    $totals = (int)array_sum($arss);
                                 $discountAmount ="";
                                 if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                    $discountAmount .= (int)$this->session->userdata('discount')/100*$totals;
                                 }

          
                                        $txnnum_temp=substr(hash('sha256', mt_rand() . microtime()), 0, 20);
                $UserDetail = $this->data['UserDetail'];
                if(is_array($UserDetail)){ // check whether user logged in
                    $det = $UserDetail;
                    $id = $det[0]->id;
                    $name=$det[0]->name;
                    $emailid=$det[0]->emailid;
                    //echo "<pre>";print_r($det);exit;
                }
                else{ // check guest details exists
                    $emailid = $email;
                    $db = array(
                            'email'=>trim(preg_replace('!\s+!', '',$email)),
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
                                'emailid'=>$email,
                                'name'=>$name,
                                'phone'=>$phone,
                                'address1'=>$address1,
                                'address2'=>$address2,
                                'country'=>'India',
                                'town'=>$city,
                                'zip'=>$pincode,
                                'created_date'=>date('Y-m-d H:i:s'),
                                'password'=>sha1($pass),
                                'login_type'=>'general'
                        );
                        $reg = $this->home_db->insertRecord('users',$db);
                        $id = $reg;
                        $db=array(
                                'email'=>$email,
                                'type'=>'general'
                        );
                        $this->load->library('email');
                        $config = array (
                                'mailtype' => 'html',
                                'charset'  => 'utf-8',
                                'priority' => '1'
                        ); 
                        $this->data['password'] = $pass;
                        $this->data['email'] = $email;
                        $this->data['name'] = $name;
                        $body=$this->load->view('send_login',$this->data,true);
                        $this->email->initialize($config);
                        $this->email->from('noreply@gogarbha.com', 'Gogarbha');
                        $this->email->to($bill['email']);
                        $this->email->subject('Your Account created successfully!!');
                        $this->email->message($body);
                        $this->email->send();           
                        $name=$name;
                    }
                    $val['regdata'] = $this->home_db->getloginval($db);
                   // echo "<pre>";print_r($val['regdata']);exit;
                    $this->session->set_userdata('atpUserDetail',$val['regdata']);
                }
                $tot_amt = (int)$this->cart->total()+(int)array_sum($tax_amts);
                //$total_amt = $this->home_db->getcarttotalamt($this->session->userdata('discount'),$tot_amt);
                $coupon = (int)$this->session->userdata('coupon');
                $discount_amt = (int)$this->session->userdata('discount_amt');
                $discount = $this->session->userdata('discount');
                $total_ = $this->home_db->calculatedisc($this->session->userdata('discount'),$tot_amt);
                //$tax_amt = $this->home_db->calculate_tax(0,$total_);
                $charges = $this->session->userdata('charges');
                $total_amt_paid = $settings[0]->delivery_charges+(int)$this->cart->total();
                   $arsss = []; 
                   foreach ($this->cart->contents() as $items){
                       $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
                        if(empty($productTax[0]->tax) && $productTax[0]->tax=="") {
    
                        }else {
                            $tax_amts = $productTax[0]->tax / 100 * $items["subtotal"];
                            $arsss[] = $tax_amts;
                        }
                  }
                $tax_amts = (int)$settings[0]->invoice_tax/100*(int)$this->cart->total();
                $totalTaxAmount =  (int)$checkPin[0]->charges+number_format(floatval($this->cart->total()),2)+number_format(floatval(array_sum($arsss)),2)-number_format(floatval($discountAmount),2);
                $total_amt_paid = str_replace(",","",$total_amt_paid);
                $currencyid = $this->session->userdata('currencyid');
                $priceType = ($currencyid !='' ) ? $currencyid['price_type'] : '';
                $qtyss=array();
                foreach($this->cart->contents() as $qorders){
                    $qtyss[]= $qorders['qty'];
                }
                      $dborders=array(
                        'txnid'=>$txnnum_temp,
                        'user_id'=>$id,
                        'user_name'=>$name,
                        'emailid'=>$email,
                        'tot_qty'=>array_sum($qtyss),
                        'total_amt'=>$tot_amt,
                        'coupon_code'=>$coupon,
                        'discount'=>$discountAmount,
                        'saved_amt'=>str_replace(",","",$discount_amt),
                        'devilery_charge'=>$checkPin[0]->charges,
                        'total_amt_paid'=>$totalTaxAmount,
                        'delivery_days'=>$settings[0]->delivery_days,
                        'ordered_date'=>date('Y-m-d H:i:s'),
                        'status'=>1,
                        'paymode'=>'cod',
                        'currency_type'=>$priceType,
                        'taxamount'=>array_sum($arsss),
                        'pincode'=>$this->session->userdata('pincode'),
                        'randid'=>$randid,
                        'discount_per'=>(int)$this->session->userdata('discount')
                );
                $getOrders = $this->home_db->getRecords('orders',['randid'=>$randid],'*');
                $oid="";
               if(count($getOrders) >0) {

               }else {
                   $oid = $this->home_db->insertRecord('orders',$dborders);
                     $this->session->set_userdata('orderids',$oid);
                    if($oid) {                    
                        $orderNo = $this->cart_db->generateOrderNo($oid);
                        $db = array('orderid' => $orderNo);
                        $this->home_db->updateRecord('orders',$db,'id',$oid);
                    }
               } 
                $dbb=array(
                        'oid'=>$oid,
                        'bname'=>$name,
                        'bemail'=>$email,
                        'baddr1'=>$address1,
                        'baddr2'=>$address2,
                        'bcity'=>$city,
                        'bcity_id'=>$city,
                        'bcountry'=>'India',
                        'bpincode'=>$pincode,
                        'bphone'=>$phone,
                        'sname'=>$shipname,
                        'saddr1'=>$shipaddress1,
                        'saddr2'=>$shipaddress2,
                        'scity_id'=>$shipcity,
                        'sstate'=>$shipcity,
                        'scountry'=>'India',
                        'spincode'=>$shippincode,
                        'sphone'=>$shipphone,
                        'randid'=>$randid
                );
            $this->home_db->insertRecord('orders_bill_ship',$dbb);
                $name=$name;
                $phone=$phone;
                $prod_info = '';$delivery = array();$tot_qty = 0;
                        foreach ($this->cart->contents() as $items){
                             $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
                             $taxAmo ="";
                             if(empty((int)$productTax[0]->tax) && (int)$productTax[0]->tax=="") {
                                $taxAmo .="";
                             }else {
                                $tax_amts = (int)$productTax[0]->tax / 100 * $items["subtotal"];
                                $taxAmo .= $tax_amts;
                            }
                            $dbp=array(
                                    'oid'=>$oid,
                                    'pname'=>$items['name'],
                                    'pcode'=>$items['pcode'],
                                    'qty'=>$items['qty'],
                                    'unit_price'=>$items['mrp'],
                                    'price'=>$items['price'],
                                    'size_id'=>$items['sizeid'],
                                    'size_name'=>$items['sname'],
                                    'image_path'=>$items['image'],
                                    'status'=>0,
                                    'tax' =>(int)$productTax[0]->tax / 100 * $items["subtotal"],
                                    'randid'=>$randid,
                            );
                                $this->home_db->insertRecord('orders_products',$dbp);
                        }


                        $getOid = $this->home_db->getRecords('orders',['id'=>$oid],'orderid');
                          $dbpp = array(
                        'order_id'=>rand(1111111111,99999999999),
                        'amount'=>$totalTaxAmount,
                        'added_datetime'=>date('Y-m-d H:i:s'),
                        'status'=>-1,
                        'pstatus'=>'pending',
                        'oid'=>$oid
                    );
                    //print_r($dbp);exit;       
                    $payid = $this->home_db->insertRecord('payment_log',$dbpp);
                        redirect(base_url().'cart/order_success/'.$getOid[0]->orderid);
                }

                     else {
                        $this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Sorry Service is not available for entered Pincode.</div>');
                        redirect( base_url().'cart/billing_shipping' );
                     }
            }

    }
  
    }
	function easebuzzResponse(){       
  $easebuzzObj = new Easebuzz(MERCHANT_KEY, SALT, ENV);
        $result = $easebuzzObj->easebuzzResponse($_POST);
       // echo "<pre>";print_r($result);exit;
        $pdecode = json_decode($result,true);
         $pay_array = json_encode($pdecode['data']);
            if($pdecode['status'] == '1') {
                $val = 0;
                $payid = $pdecode['data']['easepayid'];
                $signature =$pdecode['data']['hash'];
                $order = $this->home_db->getRecords("orders", array("orderid"=>$pdecode['data']['udf1']), "user_name,orderid,paymode,pamount_debit,total_amt_paid,paymode,id");
                if ($payid == "")
                {
                        $this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Payment is pending. Please try again later</div>');
                        redirect( base_url().'cart/billing_shipping' );
                }
                else{
                        if($pdecode['data']['status'] =='success') {
                                     $dbp = array(
                                    'order_id'=>rand(1111111111,99999999999),
                                    'amount'=>$this->input->post('amount'),
                                    'pay_array'=>$pay_array,
                                    'added_datetime'=>date('Y-m-d H:i:s'),
                                    'status'=>1,
                                    'pay_id'=>$payid,
                                    'signature'=>$signature,
                                    'pstatus'=>'success',
                                    'oid'=>$order[0]->id
                                );
                                //print_r($dbp);exit;       
                                $payid = $this->home_db->insertRecord('payment_log',$dbp);
                                 $dbp = array(
                                    'status' => 1,
                                    'pstatus'=>"success",
                                );
                                $this->home_db->updateRecord('orders',$dbp, 'orderid',$pdecode['data']['udf1']);
                                $this->data['order'] = $order;
                                $this->data['msg'] = $msg;
                                redirect( base_url().'cart/order_success/'.$order[0]->orderid );
                        }else if($pdecode['data']['status'] =='pending') {
                             $this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Payment is pending. Please try again later</div>');
                            redirect( base_url().'cart/billing_shipping' );   
                        }else if($pdecode['data']['status'] =='failure') {
                                $dbp = array(
                                'status'=>-1,
                                'pstatus'=>'failure',
                                'oid'=>$oid
                            );
                            //print_r($dbp);exit;       
                            $payid = $this->home_db->insertRecord('payment_log',$dbp);
                             $dbp = array(
                                'status' => -1,
                                'pstatus'=>"failure"
                            );
                            $this->home_db->updateRecord('orders',$dbp, 'orderid',$pdecode['data']['udf1']);
                            //echo '<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Your registration details are already captured towards Reference no.'.$insertedpaylog[0]->order_id.' </div>';
                            redirect( base_url().'cart/order_failure/'.$order[0]->orderid);
                        }
                }
            }
    }
	private function checkRazorpayTxn($insertedpaylog, $check_sign = 1){
	    $api = new Api(TEST_MERCHANT_KEY, TEST_MERCHANT_SECRET);
       // echo "<pre>";print_r($insertedpaylog);exit;
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
                    $this->home_db->updateRecord('payment_log',array("pay_id"=>$pay_id), 'id',$oid);
                }
                else if($pay_id == ""){
                    $status = strtolower($val["status"]);
                    $pay_id = $val["id"];
                    $this->home_db->updateRecord('payment_log',array("pay_id"=>$pay_id), 'id',$oid);
                }
                else if($orgstatus != "captured" && $orgstatus != "failed"){
                    $status = strtolower($val["status"]);
                    $pay_id = $val["id"];
                    $this->home_db->updateRecord('payment_log',array("pay_id"=>$pay_id), 'id',$oid);
                }
            }
        }
        $logarray = print_r($orderDetails, true);
        $db = array(
            'payment_log' => $logarray,
            'modify_date' => date("Y-m-d H:i:s"),
        );
        $this->home_db->updateRecord('payment_log',$db, 'id',$oid);
        $file = 'rtxn_status.txt';
        $log_array = $insertedpaylog[0]->pay_id."---".$razor_oid."---".$order_id."==response=".$logarray."\r\n";
        file_put_contents($file, $log_array , FILE_APPEND | LOCK_EX);
        $insertedpaylog = $this->home_db->getPaymentLog(array('id'=>$oid));
        $razorpay_signature = $insertedpaylog[0]->signature;
        $generated_signature = hash_hmac('sha256', $insertedpaylog[0]->razor_oid . '|' . $insertedpaylog[0]->pay_id, TEST_MERCHANT_SECRET);
        if($status == "failed"){
            $db = array(
                'status' => -1,
                'pstatus'=>"failure"
            );
            $this->home_db->updateRecord('payment_log',$db, 'id',$oid);
            return -1;
        }
        else if($status != "captured"){
            $db = array(
                'status' => -1,
                'pstatus'=>""
            );
            $this->home_db->updateRecord('payment_log',$db, 'id',$oid);
            return -2;
        }
        if ($check_sign == 0 || ($check_sign == 1 && $generated_signature == $razorpay_signature)) {
            $db = array(
                    'status' => 1,
                    'pstatus'=>"success"
                );
            $this->home_db->updateRecord('payment_log',$db, 'id',$oid);
			$resorders = $this->home_db->getRecords('orders',['id'=>$insertedpaylog[0]->oid],'*'); 
          //  $res = $this->saveDetails($insertedpaylog, $api);
			return 1 ;
        }
        else{
            $this->home_db->updateRecord("payment_log", array("gen_signature"=>$generated_signature), "id",$oid);
            return -1;
        }
    }
	function checkrazor(){
        $orderID = $this->input->post("orderid");
        $insertedpaylog = $this->home_db->getPaymentLog(array('razor_oid'=>$orderID));
        if(count($insertedpaylog)){    
            
                $api = new Api(TEST_MERCHANT_KEY, TEST_MERCHANT_SECRET);
                
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
                    $this->home_db->updateRecord("payment_log", array("pay_id"=>$pay_id),"id",$insertedpaylog[0]->id);
                   
                    if($res == 1){
                        $db["pstatus"] = "success";
                        $db["status"] = 1;
                    }
					
					$this->home_db->updateRecord("payment_log", $db, "id",$insertedpaylog[0]->id);
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
    
    
    public function order_success(){
        $this->load->library('mail');
    	$oid = $this->uri->segment(3);
        //
                $order = $this->home_db->getRecords('orders',['orderid'=>$oid],'*');
                 if($order[0]->paymode=='cod') {
                    $this->cart->destroy();
                    $this->session->unset_userdata('coupon');
                //$discount = (int)$result[0]->discount;
                    (int)$this->session->unset_userdata('discount');
                    (int)$this->session->unset_userdata('payids');
                //$this->session->unset_userdata('orderids');
                    (int)$this->session->unset_userdata('totalpayamount');
                 }
                else if($order[0]->paymode=='Online') {
                }
    	if($oid){
    		$this->data['order'] = $order;
    		$order_products = $this->home_db->getRecords('orders_products',['oid'=>$order[0]->id],'*');
            $ordership = $this->home_db->getRecords('orders_bill_ship',['oid'=>$order[0]->id],'*');
            $social_links = $this->home_db->getRecords('social_links',['status'=>0],'*');
            $this->data['social'] = $social_links;
    		$this->data['order_products'] = $order_products;
            $this->data['order_bill'] = $ordership;
            $html = $this->load->view('order_success',$this->data,true);
            $this->mail->sendMail($order[0]->emailid,$html,'Your Order Summary');
    	}
    	else{
    		$order = 0;
    		$this->data['order'] = $order;
    	}
    	$this->load->view('success',$this->data);
    }
	
	  public function order_message(){
    	$oid = $this->uri->segment(3);
		$msg = $this->uri->segment(4);
    	 
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
		if($msg == "failed")
		{
		  $this->data['msg'] = 'Your order has not been placed successfully.Amount gets refunded within 4-5 working days if amount is debited. Reference no.'.$insertedpaylog[0]->order_id.' on '.date("d-m-Y H:i:s").'. Thank you, Gogarbha';
    	}
		
		if($msg == "pending")
		{
			$this->data['msg'] = 'YTransaction is Pending. Save the Reference no.'.$insertedpaylog[0]->order_id.'. Please wait for sometime to know the transaction status.';
		}		    
		$this->load->view('message_view',$this->data);
    }
    
    public function order_failure() {
    	/* Payment failure logic goes here. */
    	$oid = $this->uri->segment(3);
         $this->cart->destroy();
         $this->session->unset_userdata('coupon');
                $discount = $result[0]->discount;
                $this->session->unset_userdata('discount');
                $this->session->unset_userdata('payids');
                //$this->session->unset_userdata('orderids');
                $this->session->unset_userdata('totalpayamount');
    
    	if($oid){
    		$order = $this->home_db->getcontent('orders','orderid',$oid,'-1','');
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
    	$this->email->from('noreply@gogarbha.com', 'gogarbha');
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
    	$this->email->from('noreply@gogarbha.com', 'gogarbha');
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

         public function select_states() 
    {
        $state= $this->input->post('state');
        $district = $this->home_db->sqlExecute("select * from cities where state_id='$state'");
        $val="";
        $val.='<option value="">--Select city--</option>';
        foreach($district as $v)
        {
            $val.= '<option value="'.$v->id.'" >'.$v->name.'</option>';
        }
        echo $val;
    }
    public function selectstates() 
    {
        $shipstate= $this->input->post('shipstate');
        $district = $this->home_db->sqlExecute("select * from cities where state_id='$shipstate'");
        $val="";
        $val.='<option value="">--Select city--</option>';
        foreach($district as $v)
        {
            $val.= '<option value="'.$v->id.'" >'.$v->name.'</option>';
        }
        echo $val;
    }

}

?>