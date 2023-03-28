<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gifts extends CI_Controller {
 
    protected $data;
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Kolkata');
        $this->load->helper('utility_helper');
        $this->load->model('home_db');
        $this->load->model('products_db');
        
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
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        $this->data['header1']=$this->load->view('header1', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
    }
    
   
    
    public function index()
	{
		$UserDetail = $this->data['UserDetail'];
       // echo "<pre>";print_r($UserDetail);exit;
		$user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
    	$prod_url = $this->input->get('page');
    	
		$this->data['user_type'] = $user_type;
   
    	$this->load->view('gift_form_view',$this->data);
    }
    
    public function giftregister() {
        //echo "<pre>";print_r($_POST);
         $name = trim(preg_replace('!\s+!', ' ',html_escape($this->input->post('rname', true))));
         $mobile = trim(preg_replace('!\s+!', '',html_escape($this->input->post('phone', true))));
         $email_id = trim(preg_replace('!\s+!', '',html_escape($this->input->post('remail', true))));
         $order = trim(preg_replace('!\s+!', '',html_escape($this->input->post('order', true))));
         $db = ['title'=>$name,'email'=>$email_id,'mphone'=>$mobile,'order_details'=>$order,'created_date'=>date('Y-m-d H:i:s')];
         $insert = $this->home_db->insertRecord('gifts',$db);
         if($insert) {
            $this->session->set_flashdata('success','<div class="alert alert-success">Gifts inserted successfully</div>');
            redirect('gifts');
         }
    }
    
  
}

?>