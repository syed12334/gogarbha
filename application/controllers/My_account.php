<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class my_account extends CI_Controller {
    protected $data;
    public function __construct()
    {
        parent::__construct();
    
        $this->load->helper('utility_helper');
        date_default_timezone_set('Asia/Kolkata');
        $this->load->model('home_db');
        $this->load->model('products_db');
		$this->load->model('account_db');
		$this->load->model('cart_db');
        $this->load->library('session');
        $this->data['UserDetail'] = '';
        if($this->session->userdata('atpUserDetail'))
        $this->data['UserDetail']=$this->session->userdata('atpUserDetail');
        $this->data['jsFile']=$this->load->view('jsFile', $this->data , TRUE);
        $settings = $this->home_db->getcontent1('settings','','','','','');
        $call = "98453 24064"; $emlid= "info@dhrtva.com";$time = '8:00am - 10:00pm';
        if(is_array($settings)){
        	if(!empty($settings[0]->phone)){
        		$call = $settings[0]->phone; 
        	}
        	if(!empty($settings[0]->email)){
        		$emlid= $settings[0]->email;
        	}
        	if(!empty($settings[0]->time)){
        		$time= $settings[0]->time;
        	}
        }
        $this->data['settings'] = $settings;
        $this->data['call']=$call;
        $this->data['emlid']=$emlid;
        $this->data['time']=$time;
        $this->data['social']= $this->home_db->sqlExecute('select * from social_links');
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);        
        
    }
    
    public function index()
    {
    	$det = $this->data['UserDetail'];
		if(!$this->session->userdata('atpUserDetail'))
		{
			redirect(base_url().'login');
		}
    	$id = $det[0]->id;
    	$this->data['users'] = $this->home_db->getcontent('users','id',$id,'','');
		
    	$this->data['orders'] = $this->home_db->getcontentstatus('orders','user_id',$id,'status','3,0,1,2','ordered_date','desc');    	
    	
        $this->load->view('myaccount',$this->data);
    }
    
    public function save_details(){    	
    	
    	if($_SERVER['REQUEST_METHOD']=='POST'){
    		$det = $this->data['UserDetail'];
    		
    		$name=$this->input->post('name');
    		$sname=$this->input->post('sname');
    		$phone=$this->input->post('phone');
    		$address1=$this->input->post('address1');
    		$address2=$this->input->post('address2');
    		$town=$this->input->post('city');
    		$zip=$this->input->post('pincode');
    		
    		$id = $det[0]->id;
    		
    		$getdata = $this->cart_db->getstatedata($town);
    		
    		if(!empty($name) && !empty($address1) && !empty($phone)){
    			$db = array(
    					'name'=>trim(preg_replace('!\s+!', ' ',$name)),
    					'phone'=>trim(preg_replace('!\s+!', '',$phone)),
    					'address1'=>trim(preg_replace('!\s+!', ' ',$address1)),
    					'address2'=>trim(preg_replace('!\s+!', ' ',$address2)),
    					'town'=>$town,
    					'town_name'=>$getdata[0]->cname,
    					'state_name'=>$getdata[0]->sname,
    					'zip'=>trim(preg_replace('!\s+!', '',$zip)),
    					//'password'=>$password,
    					'modified_date'=>date('Y-m-d H:i:s')
    			);
    			$password=$this->input->post('passwrd');
    			if($password != '........'){
    				$db['password'] = sha1($password);
    				//$password = $det[0]->password;
    			}
    			$id = $this->home_db->updateRecord('users',$db,'id',$id);
    			$this->session->set_flashdata('message','<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Updated Successfully.</div>');
    			redirect("my_account");
    		}
    		else{
    			$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter required fields.</div>');
    			redirect("my_account");
    		}
    	}
    	else{
    		
    		redirect(base_url());
    	}
    }
    
     
    
    public function my_orders()
    {
    	$det = $this->data['UserDetail'];
		if(!$this->session->userdata('atpUserDetail'))
		{
			redirect(base_url().'login');
		}
    	$id = $det[0]->id;
    	$db=array(
    			'id'=>$id,
    	);
    
    	$this->data['orders'] = $this->account_db->myorders($db);
		//echo $this->db->last_query();exit;
    	$this->load->view('myorder',$this->data);
    }
    
	  public function order_view()
    {
		$det = $this->data['UserDetail'];
		$id = $this->input->get('id');
    	$db=array(
    			'id'=>$id,
    	);
		$this->data['orders'] = $this->account_db->myordersid($db);
        //echo "<pre>";print_r($this->data['orders']);exit;
        $this->data['settings'] = $this->home_db->runSql('select * from settings');
		//echo $this->db->last_query();exit;
    	$this->load->view('order_list_view',$this->data);
    }
	
    public function my_wishlist()
    {
    	$det = $this->data['UserDetail'];
		if(!$this->session->userdata('atpUserDetail'))
		{
			redirect(base_url().'login');
		}
    	$id = $det[0]->id;
    	$sorttype = $this->input->get('sorttype');
    	$condition = 'desc';
    	if(!empty($sorttype)){
    		$condition = $sorttype;
    	}
    	$products = $this->account_db->getallProductssql($id, $condition);
        //echo $this->db->last_query();exit;
    	$this->data['sorttype'] = $sorttype;
    	$this->data['productsSql'] = $products;
        //echo "<pre>";print_r($products);exit;
    		
    	$this->load->view('mywishlist',$this->data);    	
   
    }
    
    public function removeWishlist(){
    	if($_SERVER['REQUEST_METHOD']=='POST'){
    		
    		$det = $this->data['UserDetail'];
    		$id = $det[0]->id;
    		
    		$type=$this->input->post('val_id');
    		$pid=$this->input->post('val1_id');
    		$spec_id=$this->input->post('val2_id');
    		$db=array(
    			'type'=>$type,
    			'pid'=>$pid,
    			'user_id'=>$id,
    			'spec_id'=>$spec_id,    				
    		);
    		echo $this->account_db->delete_wishlist($db);
    		
    	}
    	else{
    		redirect(base_url());
    	}
    }
    
    public function wishlistcount(){
    	$det = $this->data['UserDetail'];
    	$id = $det[0]->id;
    	$sql = $this->account_db->getallProductssql($id, '');
    	echo $prodcount=count($this->home_db->runSql($sql));
    }
    
    
    
    
}

?>