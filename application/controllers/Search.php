<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//error_reporting(-1);ini_set('display_errors',1);
class Search extends CI_Controller {

	protected $data;
	public function __construct()
	{
		parent::__construct();
       
        $this->load->helper('utility_helper');
        date_default_timezone_set('Asia/Kolkata');
        $this->load->model('home_db');
        $this->load->model('products_db');
        $this->load->model('search_db');
        
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
		$this->session->set_userdata('redirect_back', current_url() );
		
		$UserDetail = $this->data['UserDetail'];
		$user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
		$this->data['user_type'] = $user_type;

    	$searchbar = $this->input->get('searchbar');
    	$categ =$this->home_db->runSql('select c.name as cname,p.name as pname,p.subcat_id,p.page_url as ppage_url,p.id,p.id as pid,p.page_url,p.pcode,p.status,pi.image_path,pi.thumb,ps.selling_price,ps.mrp,ps.stock,s.name as sname from products p left join category c on p.cat_id = c.id left join product_sizes ps on ps.pid=p.id left join product_images pi on pi.pid = p.id left join sizes s on s.id = ps.size_id left join subcategory su on su.id=p.subcat_id where  p.name like "%'.$searchbar.'%" or c.name like "%'.$searchbar.'%" or su.name like "%'.$searchbar.'%"  and p.status=0 group by ps.pid order by p.id desc');
    	//echo $this->db->last_query(); exit;
    	
    	$this->data['products'] = $categ;
    	$this->data['searcheddata'] = $searchbar;
    	$this->load->view('searchpage',$this->data);
	}  

	public function search_auto()
	{
		$var=$this->input->get('term');
		if ($var)
		{			
			$categ = $this->input->get('type');
			$material = $this->input->get('material');
			$color = $this->input->get('color');
			$size = $this->input->get('size');
			$products = "";
			$category = array();
			if(is_array($categ)){
			
				foreach ($categ as $m){
					$categoryexist = $this->home_db->getcontent1('view_categ_exist','cpage_url',$m,'','corder_no','asc');
					if(is_array($categoryexist)){
						$category[] = $m;
					}
				}
			
			}
			else{
				$categoryexist = $this->home_db->getcontent1('view_categ_exist','','','','corder_no','asc');
				if(is_array($categoryexist)){
					foreach ($categoryexist as $m){
						$category[] = $m->cpage_url;
					}
				}
			}
			
			$category_id = 0;
			if(count($category)>0){
				$condition = '';
			
				if(is_array($material)){
					$matarr = array();
					foreach ($material as $m){
						$matarr[] = '\''.$m.'\'';
					}
					$mattext = implode(',', $matarr);
					$condition .= " and mpage_url IN (".$mattext.")";
				}
				 
				if(is_array($color)){
					$colorarr = array();
					foreach ($color as $c){
						$colorarr[] = '\''.$c.'\'';
					}
					$colortext = implode(',', $colorarr);
					$condition .= " and clpage_url IN (".$colortext.")";
				}
				 
				if(is_array($size)){
					$sizearr = array();
					$t = '';
					foreach ($size as $s){
						$si = explode("~",$s);
							
						if($si[1] != '0'){
							$sizearr[] = '\''.$si[0].'\'';
						}
						else{
							$t = " or size_id=0";
						}
					}
					$sizetext = implode(',', $sizearr);
					$condition .= " and (spage_url IN (".$sizetext.")".$t.")";
				}
				$condition .= " and trim(REPLACE(REPLACE(REPLACE(pname,' ',' %'),'% ',''),'%','')) like '%".trim(preg_replace('!\s+!', ' ',$var))."%'";
				$result=$this->search_db->getsuggestions($category, $condition);
				echo $result;				
				flush();
			}
			else{
				echo '';
			}
			
		}
		echo '';
	}

 
}


/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */