<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class aboutus extends CI_Controller {
    protected $data;
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('utility_helper');
       date_default_timezone_set('Asia/Kolkata');
        $this->load->model('home_db');
        $this->load->model('blog_db');
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
    function index(){
        $this->data['info'] = $this->blog_db->getcontent1("aboutus","","","","","");
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
		$this->load->view('about-us',$this->data);
	}
    function about_app(){
        $this->data['info'] = $this->blog_db->getcontent1("aboutus","","","","","");
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
		$this->load->view('about-us-mobile',$this->data);
	}
    function organic(){
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
		$this->load->view('about_organic',$this->data);
	}
	
	function contact(){
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
		$this->load->view('contact',$this->data);
	}
}
?>