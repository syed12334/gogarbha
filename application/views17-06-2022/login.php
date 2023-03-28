<?php 
class login extends CI_Controller {

    protected $data;
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('utility_helper');
        $this->load->helper('cookie');
        no_cache();
        $this->load->model('home_db');
        $this->load->model('web_db');
		$this->data['session'] = 'USERSESSION_VAR';
      
		$this->data['UserDetail'] = $this->data['telecaller'] =  '';
		if($this->session->userdata(TELECALLERSESSION_VAR))
        $this->data['telecaller']=$this->session->userdata(TELECALLERSESSION_VAR);//Telecaller Sesion
		
		if($this->session->userdata(USERSESSION_VAR))
        $this->data['UserDetail']=$this->session->userdata(USERSESSION_VAR);//USER sESSION
	
      	$this->data['header'] = $this->load->view('header',$this->data, true);
      	$this->data['footer'] = $this->load->view('footer',$this->data, true);
      	$this->data['common'] = $this->load->view('commoncode',$this->data, true);
      	$this->data['jsFile'] = $this->load->view('jsFile',$this->data, true);
      	$this->data['searchcode'] = $this->load->view('searchcode',$this->data, true);
      	
    }
    
    /**********************Register******************/
    public function register()
	{
        $email = trim(preg_replace('!\s+!', '',$this->input->post('email')));
        $name = trim(preg_replace('!\s+!', ' ',ucwords($this->input->post('name'))));
        $phone = trim(preg_replace('!\s+!', ' ',$this->input->post('phone')));
        $password = trim(preg_replace('!\s+!', '',$this->input->post('password')));
        $referal_code = trim(preg_replace('!\s+!', '',strtoupper($this->input->post('rfrlid'))));
		$type = trim(preg_replace('!\s+!', ' ',$this->input->post('type')));
		$role = trim(preg_replace('!\s+!', '',$this->input->post('role')));
		$address = trim(preg_replace('!\s+!', ' ',$this->input->post('address')));
		$gst = trim(preg_replace('!\s+!', '',$this->input->post('gst')));
		$company_name = trim(preg_replace('!\s+!', ' ',$this->input->post('company_name')));
		
		
        if ($name == "" || $phone == ""  || $type == "") {
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>All the Fields are Mandatory</div>';exit; //All the Field are Mandatory
        }
        if($type == "general" && $password == ""){
        	echo json_encode(array("status" => "no", "msg" => "Please enter password"));exit;
        }
		
        $check_phone = $this->home_db->getRecords("users", array("phone"=>$phone), "id");
        if(count($check_phone)){
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Mobile Number Already registered.</div>';exit; //Phone number already registered.
        }
        if($email != ""){
			$check_email = $this->home_db->getRecords("users", array("emailid"=>$email), "id");
	        if(count($check_email)){
	        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Email ID Already registered.</div>';exit; //Email ID already registered."
	        }
        }
        
        $flag = 0; $check_code = array();
        if($referal_code != ""){
        	$check_code = $this->home_db->checkReferral($referal_code);
        	if(count($check_code)){
        		$referral_date = "2018-03-03";
				$reg_date = $check_code[0]->created_date;
				if(strtotime($reg_date) < strtotime($referral_date) || 
					(strtotime($reg_date) >= strtotime($referral_date) && ($check_code[0]->mobile_verify == 1 || $check_code[0]->email_verify == 1))){
					$flag=0;
				}
				else{
					$flag=0;
				}
        	}
        	else{
        		$flag=1;
        	}
        }
       // print_r(count($check_code));exit;		
        if($flag == 1){
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Refral Code.</div>';exit;//Invalid Referral Code.;
        }
        
        $randotp = mt_rand(1000, 9999);
		$referral_id = $this->home_db->generate_code();
		
		$db = array(
                'emailid'=>$email,
		    	'name'=>$name,
		    	'phone'=>$phone,
		    	'register_type'=>$type,
		    	'refral_code'=>$referral_id,
	    		'created_date'=>date('Y-m-d H:i:s'),
    			'mobile_verify'=>0,
            	'email_verify'=>0,
		        'otp'=>$randotp,
				
		    	'created_otp'=>date('Y-m-d H:i:s'),
				'register_source'=>"web"              
             );
			 
	    if($type == "general"){
			$db['password'] = sha1($password);
		}
		else{
			$db['email_verify'] = 1;
		}
		
		if($role == 2)
		{
		   $db['company_name'] = $company_name;
		   $db['gst'] = $gst;
		   $db['address'] = $address;
		   $db['user_type'] = 2;
		}
		else{
			 $db['user_type'] = 1;
		}
		//print_r($db);exit;
        $id = $this->home_db->insertRecord('users',$db);
		
        if($id == 0){
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Unable to register. Please try later.</div>';exit;//Unable to register. Please try later.;
        }
        $settings = $this->home_db->getRecords("settings", array(), "verify_register, order_email");
        $verify = 0; $orderemail = array();
        if(count($settings)){
        	$verify = $settings[0]->verify_register;
        	$orderemail = explode(",", $settings[0]->order_email);
        }
        $this->home_db->addWallet($id);
        
        
        $email_msg = "";
        if($email != ""){
			$referral_code = "";
			if($referral_id != ""){
				$referral_code = $referral_id." &nbsp;<span style='color:#d72583;' class='share'>You can ask your friends to register using your referral code and earn wallet amount when they make their first order.</span>";
			}
							
			$this->data['email'] = $email;
			$this->data['name'] = $name;
			$this->data['phone'] = $phone;
			$this->data['referral_code'] = $referral_code;
			$this->data['verify'] = $verify;
							
			$body=$this->load->view('send_login1',$this->data,true);
			if($type == "general" && $email != ""){
				if($verify == 1){
					$this->home_db->sendmailer(array($email), "Account created successfully! Needed Verification", $body);
					$email_msg="Verification link is sent to $email.<br/>";
				}
				else{
				$this->home_db->sendmailer(array($email), "Account created successfully!", $body);
				
				}
			}
        }
						
		$body1=$this->load->view('send_login1',$this->data,true);
		$this->home_db->sendmailer($orderemail, "New user have registered successfully!!", $body1);
			
		if($referal_code != "" && count($check_code)>0){
			$db=array(
	    			'refral_user_id'=>$check_code[0]->id,
	    			'user_refral_code'=>$check_code[0]->refral_code,
				);
			$this->home_db->updateRecord('users',$db, array("id"=>$id));
		}
		
		if($verify == 1){
        	$this->home_db->sendSMSOTP($phone, $randotp);
			$OTP = " OTP has been sent to Mobile Number: ".substr($phone, 0, 2)."XXXXX".substr($phone, -3).".Please verify your mobile number for better service.";
			echo '7'.'~'.$OTP.'~'.$email_msg;exit;
        }
		
			$val['data'] = $id;
    		$this->session->set_userdata(USERSESSION_VAR,$val['data']);
		
		echo 1;//Registration Success
    }
    
    
    /**********************OTP Verification******************/
    
    public function submitOTP(){
		$phone_no = trim(preg_replace('!\s+!', '',$this->input->post('phone_no')));
		$otp = trim(preg_replace('!\s+!', '',$this->input->post('otp')));
		
		$res_email = $this->home_db->getRecords("users", array("phone"=>$phone_no), "id, name, emailid, phone, email_verify, mobile_verify, otp");
		if(count($res_email)){
    		$mobile = $res_email[0]->phone;
    		$id = $res_email[0]->id;
    		if($res_email[0]->mobile_verify == 0 && $res_email[0]->otp == $otp){
    			$db = array(
		    				'mobile_verify'=>1,
		    				'mobile_verified_date'=>date('Y-m-d H:i:s')
		    			);
		    	$this->home_db->updateRecord('users', $db,array('id'=>$res_email[0]->id));
		    	
		    	if($res_email[0]->email_verify == 0 && $res_email[0]->mobile_verify == 0){
		    		//$this->home_db->addWallet($res_email[0]->id);
		    	}
				$val['data'] = $id;
    			$this->session->set_userdata(USERSESSION_VAR,$val['data']);
				$this->web_db->saveUserCart($id);
				echo 1;
    		}
	    	else if($res_email[0]->mobile_verify == 1){
				$val['data'] = $id;
    			$this->session->set_userdata(USERSESSION_VAR,$val['data']);
				$this->web_db->saveUserCart($id);
				echo 1;
			}
	    	else{
				echo "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>Invalid OTP</div>";
			}	
    	}
		else{
			echo "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>Invalid OTP</div>";
		}
    }
    
	public function skipOTP(){
		$phone_no = trim(preg_replace('!\s+!', '',$this->input->post('phone_no')));
		
		$res_email = $this->home_db->getRecords("users", array("phone"=>$phone_no), "id, name, emailid, phone, email_verify, mobile_verify, otp");
		if(count($res_email)){
    		$mobile = $res_email[0]->phone;
			$id = $res_email[0]->id;
			$val['data'] = $id;
    		$this->session->set_userdata(USERSESSION_VAR,$val['data']);
			$this->web_db->saveUserCart($id);
		}
   }
    
    function sendOTPtoVerify(){
		
		$phone_no = trim(preg_replace('!\s+!', '',$this->input->post('phone_no')));
		$res_email = $this->home_db->getRecords("users", array("phone"=>$phone_no), "id, name, emailid, phone, email_verify, mobile_verify");
		if(count($res_email)){
			$mobile = $res_email[0]->phone;
			if($res_email[0]->mobile_verify == 0){
				$this->data['name']=$res_email[0]->name;
				$randotp = mt_rand(1000, 9999);
		        $db = array(
	            			'otp'=>$randotp,
			    			'created_otp'=>date('Y-m-d H:i:s')
	            	  );
	            $res = $this->home_db->updateRecord("users", $db, array("id"=>$res_email[0]->id));
	            $this->home_db->sendSMSOTP($mobile, $randotp);
		        
		        echo "<div class='alert alert-success alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>OTP has been sent to Mobile Number: ".substr($mobile, 0, 2)."XXXXX".substr($mobile, -3)."</div>";
			}
			else if($res_email[0]->mobile_verify == 1){
				
				echo "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>Mobile No. already verified.</div>";//Mobile No. already verified.;
			}
			else{
				
				echo "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>Invalid Mobile No</div>";//Invalid Mobile No;
			}
		}
		else{
			echo "<div class='alert alert-danger alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>Invalid User</div>";//Invalid User;
		}
	}
	
	
	/*****************Login*********************/
	
		public function index(){
        
        $user_name = trim(preg_replace('!\s+!', '',$this->input->post('user_name')));
		$password = trim(preg_replace('!\s+!', '',$this->input->post('password')));
        
		if($user_name == "" || $password == ""){
			echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>All fields are required</div>';exit;
		}
		
        $condition = " and password = '".sha1($password)."' ";
        $check = $this->home_db->getuser($user_name, $condition);
        if(count($check) == 0){
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Credentials.</div>';exit;
        }
        
        $id = $check[0]->id;
        $name = $check[0]->name;
        $email_id = $check[0]->emailid;
        $phone = $check[0]->phone;
        
        $db = array(
			'lastlogin'=>date('Y-m-d H:i:s'),
			'logout_status'=>1,
			'login_type'=>"general"
        );
        $this->home_db->updateRecord('users',$db,array('id'=>$id));
        
        $db = array(
			'source'=>'web',
			'login_type'=>"general",
			'login_date'=>date('Y-m-d H:i:s'),
			'user_id'=>$id
        );
		
        $this->home_db->insertRecord('users_login_report',$db);
        
        $settings = $this->home_db->getRecords("settings", array(), "verify_register");
		$verify = 0;  $email_msg = $mobile_msg = "";
        if(count($settings)){
        	$verify = $settings[0]->verify_register;
        }
		
        $val['data'] = $id;
		$this->session->set_userdata(USERSESSION_VAR,$val['data']);
		$this->web_db->saveUserCart($id);
		
		
		$wish = $this->session->userdata('wishid');
		
		if(!empty($wish))
		{
			$check_wishlist = $this->home_db->getRecords('wishlist',array('pid'=>$wish['pid'],"user_id"=>$id), "id");
			if(count($check_wishlist) == 0)
			{
				$db=array(
					'source'=>'web',
					'pid'=>$wish['pid'],
					'user_id'=>$id,
					'created_date'=>date('Y-m-d H:i:s'),
				);
				$this->home_db->insertRecord('wishlist',$db);
				$this->session->unset_userdata('wishid');
			}
		}
       
		
        if($verify == 1 && $check[0]->mobile_verify == 0){
        	$randotp = mt_rand(1000, 9999);
        	$db = array(
                    'otp'=>$randotp,
                    'created_otp'=>date('Y-m-d H:i:s')
                );
        	$this->home_db->updateRecord('users',$db,array('id'=>$id));
        	$this->home_db->sendSMSOTP($phone, $randotp);
        	$mobile_msg = "OTP has been sent to Mobile Number: ".substr($phone, 0, 2)."XXXXX".substr($phone, -3).".Please verify your mobile number for better service.";
			echo '2'.'~'.$mobile_msg.'~'.$phone;exit;
        }
        if($verify == 1 && $check[0]->email_verify == 0 && $email_id != ""){
        	$this->data['emailid'] = $email_id;
			$this->data['name'] = $name;
        	$body=$this->load->view('verify_email_view',$this->data,true);
			$this->home_db->sendmailer(array($email_id), "Account Verification", $body);
			$email_msg = "Verification link is sent to {$email_id}";
			echo '1'.'~'.$email_msg;exit;
        }
		echo '1'.'~'.'';exit;
         
       
    }
	
	/**********************Forgot Password**********/
	
	function forgotpassword(){
    	$username = trim(preg_replace('!\s+!', '',$this->input->post('user_name')));
    	
    	if($_SERVER['REQUEST_METHOD']==='POST' && $username != "")
        {
	        $check_user = $this->home_db->getuser($username);
			$mobile_msg =$email_msg='';
	        if(count($check_user) && $check_user[0]->phone == $username){
	        	$is_phone = 1;
	        	$id = $check_user[0]->id;
	        }
	        else if(count($check_user) && $check_user[0]->emailid == $username){
	        	$is_phone = 0;
	        	$id = $check_user[0]->id;
	        }
	        else{
	        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>You are not registered with us. Please sign up</div>';exit;
	        }
	        if($is_phone == 1){
	        	$randotp = mt_rand(1000, 9999);
		        $db = array(
	            			'forgot_otp'=>$randotp,
			    			'forgot_created_otp'=>date('Y-m-d H:i:s')
	            	  );
	            
	            $this->home_db->updateRecord('users', $db, array('id'=>$id));
	            $this->home_db->sendForgotSMSOTP($username, $randotp);
            	$mobile_msg = "<div class='alert alert-success alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>OTP has been sent to Mobile Number: ".substr($username, 0, 2)."XXXXX".substr($username, -3)."</div>";
				
				echo '1'.'~'.$mobile_msg.'~'.$username;exit;
				
	        }
	        else{
	        	$this->data['name'] = $check_user[0]->name;
            	$this->data['emailid'] = $email = $username;
            	$body = $this->load->view('forgotpassword',$this->data,true);
            	$this->home_db->sendmailer(array($email), "Reset Your Password", $body);
            	echo '2'.'~'.'<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Reset Link is sent to'.$username.'</div>';exit;
				
	        }
        }
        else{
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID/Mobile Number</div>';
        } 
    }
	
	/**************Forgot OTP***************/
	
	function sendForgotOTP(){
		
		$id = trim(preg_replace('!\s+!', '',$this->input->post('phone_no')));
		$res_email = $this->home_db->getRecords("users", array("phone"=>$id, "status"=>0), "id, name, emailid, phone");
		if(count($res_email)){
			$mobile = $res_email[0]->phone;
			$this->data['name']=$res_email[0]->name;
			$randotp = mt_rand(1000, 9999);
	        $db = array(
            			'forgot_otp'=>$randotp,
		    			'forgot_created_otp'=>date('Y-m-d H:i:s')
            	  );
            $res = $this->home_db->updateRecord("users", $db, array("id"=>$res_email[0]->id));
            $this->home_db->sendForgotSMSOTP($mobile, $randotp);
	        
	        echo "<div class='alert alert-success alert-dismissable'><button class='close' aria-hidden='true' data-dismiss='alert' type='button'>×</button>OTP has been sent to Mobile Number: ".substr($mobile, 0, 2)."XXXXX".substr($mobile, -3);			
		}
		else{
		   echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid User</div>';
		}
	}
    
    function createNewPassword(){
    	$username = trim(preg_replace('!\s+!', '',$this->input->post('phone_no')));
    	$otp = trim(preg_replace('!\s+!', '',$this->input->post('otp')));
    	$newPassword = trim(preg_replace('!\s+!', '',$this->input->post('fpassword')));
    	$confirmPassword = trim(preg_replace('!\s+!', '',$this->input->post('fconfpassword')));
    	if($_SERVER['REQUEST_METHOD']==='POST' && $username != "" && $otp != "" && $newPassword != "" && $confirmPassword != "")
        {
        	$checkDevice = $this->home_db->getRecords("users", array("phone"=>$username, "status"=>0), "id, forgot_otp, password");         
            if(count($checkDevice)) // login check
            {    
            	if($newPassword != $confirmPassword){
            		echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>New Password and Confirm Password did not match.</div>';exit;
            	}
            	
            	if($checkDevice[0]->forgot_otp != $otp){
            		echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid OTP.</div>';exit;
            	}
            	$db = array(
		            		"password"=>sha1($newPassword)
		            	);
		       $this->home_db->updateRecord('users',$db,array('id'=>$checkDevice[0]->id));
		            
	            echo '<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Updated Successfully.</div>';         
		    }
            else
            {
            	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Phone number not yet registered.</div>';
            } 
        }
        else{
        	echo '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Request.</div>';
        } 
    }
	/*******************Google Login***************/
	
	public function google_login()
    {
		error_reporting(-1);ini_set('display_errors',1);
    	require_once 'Google/src/apiClient.php';
    	require_once 'Google/src/contrib/apiPlusService.php';
    	$client = new apiClient();
    	$client->setApplicationName("Wewin Bazaar");
    	$client->setClientId('749447556715-bu54mgdfrlpomfdgjhqkiagvv488gitd.apps.googleusercontent.com');
        $client->setClientSecret('HoT2LgnZK-rk5lTKTSh6Z5nh');
    	
    	$client->setRedirectUri(base_url().'login/google_login');
    	$client->setApprovalPrompt ("auto");
    	$client->setDeveloperKey('composed-field-664');
    	//************************************************************
    
    	$client->setScopes(array('https://www.googleapis.com/auth/plus.profile.emails.read',' https://www.googleapis.com/auth/plus.login'));
    	$client->setAccesstype('online');
    	 
    	$plus = new apiPlusService($client);
		
		echo $_GET['code'];
    	if (isset($_GET['code'])) 
		{
    		$client->authenticate();
    		$client->setAccessToken($client->getAccessToken());
    		$me = $plus->people->get('me');
			
    		$optParams = array('maxResults' => 100);
    		$activities = $plus->activities->listActivities('me', 'public', $optParams);
			print_r($activities);exit;
    		$fname=$me['name']['givenName'];
    		$lname=$me['name']['familyName'];
    		$email=$me['emails'][0]['value'];
    		$name=$me['displayName'];
            $image=$me['image']['url'];
			$type="google";
			print_r($me);exit;
    		$check = $this->home_db->getRecords('users',array('emailid'=>$email,"status"=>0));
			 $id = $check[0]->id;
    		if(count($check)){
				$db = array(
					'source'=>'web',
					'login_type'=>"google",
					'login_date'=>date('Y-m-d H:i:s'),
					'user_id'=>$check[0]->id
				);
                $this->home_db->insertRecord('users_login_report',$db);
                
                $wish = $this->session->userdata('wishid');
				if(!empty($wish))
				{
					$check_wishlist = $this->home_db->getRecords('wishlist',array('pid'=>$wish['pid'],"user_id"=>$id), "id");
					
					if(count($check_wishlist) == 0)
					{
						$db=array(
							'source'=>'web',
							'pid'=>$wish['pid'],
							'user_id'=>$id,
							'created_date'=>date('Y-m-d H:i:s'),
						);
						$this->home_db->insertRecord('wishlist',$db);
						$this->session->unset_userdata('wishid');
					}
				}
				
    			$reg = 0;
    		}
    		else
			{
				$this->data['emailid'] = $email;
				$this->data['name'] = $fname;
				$this->data['type'] = "google";
			    redirect(base_url().'home?code='.$_GET['code'].'&googleredirect=google&googlename='.$fname.'&googleemail='.$email);
    		}
    		if($reg != '-1' || $reg==0)
    		{
	    		$val['data'] = $check[0]->id;
	    		$this->session->set_userdata(USERSESSION_VAR,$val['data']);
    
    			$redirect_url = $this->session->userdata('redirect_back');  // grab value and put into a temp variable so we unset the session value
    			$this->session->unset_userdata('redirect_back');
    			redirect($redirect_url);
    
    		}
    	}    
    
    }
	
	/***************Facebook Login*****************/
	
	 public function facebook_login()
     {    
		$user_profile=$this->input->post(NULL,TRUE);
    	if($user_profile['email']!="")
    	{
    		if(!$user_profile['email'])
    		{
    		}
    		else
    		{
    			$check = $this->home_db->getRecords('users',array('emailid'=>$user_profile['email'],"status"=>0),'id,name,emailid');
    			$id = $check[0]->id;
    			if(count($check))
				{
					$db = array(
						'source'=>'web',
						'login_type'=>"facebook",
						'login_date'=>date('Y-m-d H:i:s'),
						'user_id'=>$check[0]->id
				    );
                    $this->home_db->insertRecord('users_login_report',$db);
                    
                    $wish = $this->session->userdata('wishid');
		
					if(!empty($wish))
					{
						$check_wishlist = $this->home_db->getRecords('wishlist',array('pid'=>$wish['pid'],"user_id"=>$id), "id");
						
						if(count($check_wishlist) == 0)
						{
							$db=array(
								'source'=>'web',
								'pid'=>$wish['pid'],
								'user_id'=>$id,
								'created_date'=>date('Y-m-d H:i:s'),
							);
							$this->home_db->insertRecord('wishlist',$db);
							$this->session->unset_userdata('wishid');
						}
					}
					
    				$reg = 0;
    			}
    			else
				{
					/*$emailid = $user_profile['email'];
					$name = $user_profile['fname'];
					$type = "facebook";
					echo $name.'~'.$emailid.'~'.$type;exit;*/
					echo 0;exit;
    			}
    			if($reg == 0 || $reg == 3)
    			{
    				$val['data'] = $check[0]->id;
	    		    $this->session->set_userdata(USERSESSION_VAR,$val['data']);
    				//$redirect_url = $this->session->userdata('redirect_back');  // grab value and put into a temp variable so we unset the session value
    				//$this->session->unset_userdata('redirect_back');
    				//redirect($redirect_url);
					echo 1;
    			}
    		}
    	}
    }

	/**********************Logout******************/
	
	public function logout()
    {
    	$this->load->library('facebook',array("appId"=>'983700298317291',"secret"=>'66549d3a7c1b768ab3f131aedef3886f'));
    	$this->facebook->destroySession();
    	$this->session->unset_userdata('user_timestamp');
    	$this->session->sess_destroy();
    	redirect(base_url());
    }
    
    
    
}
?>