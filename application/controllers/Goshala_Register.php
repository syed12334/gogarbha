<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Goshala_Register extends CI_Controller {
    
    protected $data;
    public function __construct()
    {
        date_default_timezone_set('Asia/Kolkata');
        parent::__construct();
       
        $this->load->helper('utility_helper');
        $this->load->model('home_db');
        $this->load->model('blog_db');


        $this->data['UserDetail'] = '';
        if($this->session->userdata('atpUserDetail'))
        $this->data['UserDetail']=$this->session->userdata('atpUserDetail');
        $this->data['jsFile']=$this->load->view('jsFile', $this->data , TRUE);
        $settings = $this->home_db->getcontent1('settings','','','','',''); 
         
        
        $this->data['settings'] = $settings; 
        $this->data['social']= $this->home_db->sqlExecute('select * from social_links');
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
        
        
    }
    
    function index(){
		$this->load->view('goshala_registration',$this->data);

	}
	
	
	
	
    
    



}

?>