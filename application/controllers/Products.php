<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(-1);ini_set('display_errors',1);
class Products extends CI_Controller {
  
    protected $data;
    public function __construct()
    {
        parent::__construct();
       
        $this->load->helper('utility_helper');
        date_default_timezone_set('Asia/Kolkata');
        $this->load->model('home_db');
        $this->load->model('products_db');
        
        $this->data['UserDetail'] = '';
        
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
		$this->data['currencyid']= $this->session->userdata('currencyid');
        $this->data['settings'] = $settings;
        $this->data['call']=$call;
        $this->data['emlid']=$emlid;
        $this->data['time']=$time;
        $this->data['social']= $this->home_db->sqlExecute('select * from social_links');
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        //$this->data['header1']=$this->load->view('header1', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
    }
    
    public function index($type="")
    {
       // echo "<pre>";print_r($_GET);exit;
        $requesturi = $_SERVER['REQUEST_URI'];
       $res = str_replace("/shop/", "", $requesturi);
            $UserDetail = $this->data['UserDetail'];
        $user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
        if(!empty($type)) {
            $this->data['categ'] = $categ = $type;
        }else  if(empty($type)) {
            $this->data['categ'] = $categ = $this->input->get('type');
        }else {
            $this->data['categ'] = $categ = $this->input->get('type');
        }
        
        $this->data['scateg'] =$scateg= $this->input->get('stype');//subcategory
        $this->data['subcateg'] = $subcateg = $this->input->get('subtype');//sub subcategory
        //print_r($_GET);exit;
        $products = "";
        $category_id = 0;
        //$this->data['categ'] = '';
        $catid = $this->home_db->getcontent1('category','page_url',$categ,'','order_no','asc');
        //print_r($catid[0]->page_url);exit;
        if($catid[0]->page_url == 'herbal_ayurvedic')
        {
            $this->load->view('coming_soon',$this->data);
        }
        else
        {
        
          $sub_category = $this->home_db->getcontent1('subcategory','page_url',$scateg,'','order_no','asc');
        //echo $this->db->last_query();
          $sub_sub_category = $this->home_db->getcontent1('sub_subcategory','page_url',$subcateg,'','order_no','asc');
        
            $category = $this->home_db->getcontent1('view_categ_exist','cpage_url',$categ,'','corder_no','asc');
            
            if(is_array($category)){
            $this->data['category_id']=$category_id = $category[0]->cid;
            $condition = '';
            if($scateg !='')
            {
            $condition.= " and subpage_url='".$scateg."' ";
            }
            if($subcateg !='')
            {
               $condition.= ' and sub_subpage_url="'.$subcateg.'"';
            }
            $material = $this->input->get('material');
            $color = $this->input->get('color');
            $size = $this->input->get('size');
            $sort_type = $this->input->get('sort_type');
            
            
            $this->data['sort_get'] = $sort_type;
            $this->data['material_get'] = $material;
            $this->data['color_get'] = $color;
            $this->data['size_get'] = $size;
            $this->data['materialtext'] = $this->data['color_text'] = $this->data['size_text'] = $this->data['price_text'] = '';
            
            
            if(is_array($material)){   
                $matarr = array();
                foreach ($material as $m){
                    $matarr[] = '\''.$m.'\'';
                    $this->data['materialtext'] .= "&material[]=".$m;
                }
                $mattext = implode(',', $matarr);
                $condition .= " and mpage_url IN (".$mattext.")";
            }
            
            if(is_array($color)){
                $colorarr = array();
                foreach ($color as $c){
                    $colorarr[] = '\''.$c.'\'';
                    $this->data['color_text'] .= "&color[]=".$c;
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
                    $this->data['size_text'] .= "&size[]=".$s;
                }
                $sizetext = implode(',', $sizearr);
                $condition .= " and (spage_url IN (".$sizetext.")".$t.")";
                    
            }
            
                        
            $pricerang = $this->input->get('pricerang');
            $this->data['pricerang']=$pricerang;
            $this->data['pricefilter']='';
            
            $pricearry = array();
            if(is_array($pricerang) && count($pricerang)){
                foreach($pricerang as $index=>$price){
                    
                    $this->data['price_text'] .= "&pricerang[]=".$price;
                     
                    $expl = explode("-",$price);
                    if($expl[1] == 0){
                        $priceQry = " selling_price >= ".$expl[0];
                    }
                    else{
                        $priceQry = " selling_price between ".$expl[0]." and  ".$expl[1];
                    }
                    if($user_type == 2)
                    {
                        if($expl[1] == 0){
                           $priceQry = " b2b_selling_price >= ".$expl[0];
                        }
                        else{
                            $priceQry = " b2b_selling_price between ".$expl[0]." and  ".$expl[1];
                        }
                    }
                     
                    $pricearry[]=$priceQry;
                     
                     
                }
                $imp=implode(" or ",$pricearry);
                $condition .= ' and ('.$imp.') ';
            }
            
            $case1 = " order by CAST(selling_price AS DECIMAL) asc";
            $case2 = " order by CAST(selling_price AS DECIMAL) desc";
            if($sort_type =='' && $user_type == 2)
            {
               $case1 = " order by CAST(b2bselling_price AS DECIMAL) asc";
               $case2 = " order by CAST(b2bselling_price AS DECIMAL) desc";
            }
            
            switch($sort_type){
                case "1" : $sort = $case1;break;
                case "2" : $sort = $case2;break;
                case "3":  $sort = " order by pname asc";break;
                case "4":  $sort = " order by pname desc";break;
                default:   $sort = " ";break;
            }
            
            $prices=$this->products_db->price_rangeArrays($category[0]->cpage_url);
            
            $this->products_db->calculateRange($prices);
            $this->data['pricefilter']=$this->products_db->printChart($pricerang,$prices);
            
            $products = $this->products_db->getallProductssql($category[0]->cpage_url, $condition, $sort,$user_type);
            //echo $products;exit;
            $this->data['user_type'] = $user_type;
            $this->data['category_banner'] = $this->home_db->getRecords('category',['page_url'=>$categ,'status !='=>2],'image_path,banner_img');
            $this->data['type'] = $category[0]->cpage_url;
            
            $this->data['stype'] = $scateg;
            $this->data['subtype'] = $subcateg;
            
            $this->data['typename'] = $category[0]->cname;
            $this->data['subtypename'] = (count($sub_category) && $scateg !='') ? $sub_category[0]->name : '';
            
            $this->data['subsubtypename'] = (count($sub_sub_category) && $subcateg !='') ? $sub_sub_category[0]->name : '';
            $this->data['productsSql'] = $products;
            //echo "<pre>";print_r($this->data);exit;
            $this->load->view('category',$this->data);
            }
            else{
                redirect(base_url());
            }
        }
        //echo "<pre>";print_r($this->)
     
		
    	
    	
    }
	/* public function products_wholesaler()
    {
		//print_r($_GET);
    	//$this->session->set_userdata('redirect_back', current_url() );
    	$this->data['categ'] = $categ = $this->input->get('type');
    	$products = "";
    	$category_id = 0;
    	//$this->data['categ'] = '';
    	//$category = $this->home_db->getcontent1('view_categ_exist','cpage_url',$categ,'','corder_no','asc');
		$sub_category = $this->home_db->getcontent1('subcategory','page_url',$categ,'','order_no','asc');
    	$category = $this->home_db->getcontent1('view_categ_exist','cid',$sub_category[0]->category_id,'','corder_no','asc');
		//echo $this->db->last_query();exit;
    	if(is_array($category)){
    		$this->data['category_id']=$category_id = $category[0]->cid;
    		$condition = '';
    		
    		$material = $this->input->get('material');
    		$color = $this->input->get('color');
    		$size = $this->input->get('size');
    		$sort_type = $this->input->get('sort_type');
			
			
			$this->data['sort_get'] = $sort_type;
    		$this->data['material_get'] = $material;
    		$this->data['color_get'] = $color;
    		$this->data['size_get'] = $size;
    		$this->data['materialtext'] = $this->data['color_text'] = $this->data['size_text'] = $this->data['price_text'] = '';
    		
    		
    		if(is_array($material)){   
    			$matarr = array();
    			foreach ($material as $m){
    				$matarr[] = '\''.$m.'\'';
    				$this->data['materialtext'] .= "&material[]=".$m;
    			}
    			$mattext = implode(',', $matarr);
    			$condition .= " and mpage_url IN (".$mattext.")";
    		}
    		
    		if(is_array($color)){
    			$colorarr = array();
    			foreach ($color as $c){
    				$colorarr[] = '\''.$c.'\'';
    				$this->data['color_text'] .= "&color[]=".$c;
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
    				$this->data['size_text'] .= "&size[]=".$s;
    			}
    			$sizetext = implode(',', $sizearr);
    			$condition .= " and (spage_url IN (".$sizetext.")".$t.")";
    				
    		}
    		
    		    		
    		$pricerang = $this->input->get('pricerang');
    		$this->data['pricerang']=$pricerang;
    		$this->data['pricefilter']='';
    		
    		$pricearry = array();
    		if(is_array($pricerang) && count($pricerang)){
    			foreach($pricerang as $index=>$price){
    				
    				$this->data['price_text'] .= "&pricerang[]=".$price;
    				 
    				$expl = explode("-",$price);
    				if($expl[1] == 0){
    					$priceQry = " b2b_selling_price >= ".$expl[0];
    				}
    				else{
    					$priceQry = " b2b_selling_price between ".$expl[0]." and  ".$expl[1];
    				}
    				 
    				$pricearry[]=$priceQry;
    				 
    				 
    			}
    			$imp=implode(" or ",$pricearry);
    			$condition .= ' and ('.$imp.') ';
    		}
			
			switch($sort_type){
				case "1": $sort = " order by CAST(b2b_selling_price AS DECIMAL) asc";break;
				case "2": $sort = " order by CAST(b2b_selling_price AS DECIMAL) desc";break;
				case "3": $sort = " order by pname asc";break;
				case "4": $sort = " order by pname desc";break;
				default: $sort = " ";break;
    	    }
    		
    		$prices=$this->products_db->price_rangeArrays($category[0]->cpage_url);
    		
    		$this->products_db->calculateRange($prices);
    		$this->data['pricefilter']=$this->products_db->printChart($pricerang,$prices);
    		
    		$products = $this->products_db->getallProductssql($category[0]->cpage_url, $condition, $sort);
			//echo $this->db->last_query();exit;
    		$this->data['type'] = $category[0]->cpage_url;
    		$this->data['typename'] = $category[0]->cname;
    		$this->data['productsSql'] = $products;
    		
    		$this->load->view('category_wholesaler',$this->data);
    	}
    	else{
    		redirect(base_url());
    	}
    	
    	
    }*/
	
	 
    
    public function product_view($page ="")
	{
      if($page !="") {
         $requesturi = $_SERVER['REQUEST_URI'];
       $res = str_replace("/shop/", "", $requesturi);
          $this->session->set_userdata('rurl',$res);
            $UserDetail = $this->data['UserDetail'];
            $user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
            $prod_url = $page;
            $size = $this->input->get('size');
            //echo $this->db->last_query();
            $pdetails = $this->home_db->productDetails($prod_url);
            $pdetails = $this->home_db->productDetailsWithoutSize($prod_url);
            // echo $this->db->last_query();exit();
            if(!empty($pdetails[0]->psid)) {
                $this->data['psid'] = $pdetails[0]->psid;
            }
            
            $this->data['user_type'] = $user_type;
            $this->data['product'] = $pdetails;
            $this->data['settings'] = $this->home_db->sqlExecute('select * from settings');
            $this->load->view('product_view',$this->data);
        }else {

            redirect('My404');
    
        }
    }
    
 

    public function page404() {
        $this->load->view('404');
    }
    
   public function product_details() {
    echo "<pre>";print_r($_GET);exit;
   }
   
   public function removeitem()
   {
   	$rowid=$this->input->post('id');
   	$this->removecushion($rowid);
   	
   	$dat=array(
   			'rowid'=>$rowid,
   			'qty'=>'0'
   	);
   	if($this->cart->update($dat)){
   		echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$this->data['tax']);
   	}
   }
   
   
   
   
   
   public function carttotal(){
	   echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$this->data['tax']);
   }
   
   
   
   public function cyc_step3(){
   	$this->session->set_userdata('redirect_back', current_url() );
   	$type = $this->input->get('type');
   	$prod = $this->input->get('page');
   	$seater = $this->input->get('seater');
   
   	$this->data['seater'] = $seater;
   	if(!empty($type)){
   		$categ = $this->home_db->getcontent('category','page_url',$type,'0','');
   		if(!is_array($categ)){
   			
   		}
   
   		if(!empty($prod)){
   			$product = $this->home_db->getcontent($type.'_product','page_url',$prod,'0','');
   			if(!is_array($product)){
   				
   			}
   		}
   	}
   	$this->data['type'] = $type;
   	$this->data['produrl'] = $prod;
   	$this->data['result'] = $this->collection_db->getcushions($type,$seater);
   
   	$this->load->view('step3', $this->data);
   
   }
   
   public function removecushion($rowid){
   	$cushionrowid = $cushionid = '';$cushid = '';
   	foreach ($this->cart->contents() as $items){
   		if($rowid == $items['rowid']){
   			$cushionadd = $items['cushionadd'];
   			if($cushionadd != "0" && $cushionadd != "1"){
   				$cushionid = $cushionadd;
   				break;
   			}
   			/* if($cushionadd == "1"){
   				$cushid = $items['id'];
   				break;
   			} */
   		}
   	}
   	
   	if(!empty($cushionid)){
   		foreach ($this->cart->contents() as $items){
   			if($cushionid == $items['id']){
   				$cushionrowid = $items['id'];
   				$dat=array(
   						'rowid'=>$items['rowid'],
   						'qty'=>'0'
   				);
   				$this->cart->update($dat);
   			}
   		}
   	}
   
   }
   
   public function addtocart_cush(){
	   	$type = $this->input->post('type');
	   	$hid = $this->input->post('hid');
	   	 
	   	$cushion = $this->home_db->getcontent($type.'_cushion','id',$hid,'0','');
	   	
	   	
	   	if(is_array($cushion)){
	   		$product = $this->home_db->getcontent($type.'_seater_frontview','spid',$cushion[0]->sid,'','');
	   		if($product[0]->selling_price != '' && 
	   				floatval($product[0]->selling_price) > 0 && 
	   				floatval($product[0]->stock) > 0  && 
	   				floatval($cushion[0]->price) > 0 && 
	   				floatval($cushion[0]->stock) > 0){
	   			$cush = $type."_".$hid;
	   			$rand = rand();
	   			
	   			foreach ($this->cart->contents() as $items){
	   				if($product[0]->spid == $items['id']){
	   						$this->removecushion($items['rowid']);
	   						break;
	   				}
	   			}
	   			
	   			$dat = array(
	   					'id'      	 => $product[0]->spid,
	   					'qty'     	 => 1,
	   					'image'   	 => $product[0]->tooltip_img,
	   					'price'   	 => $product[0]->selling_price,
	   					'name'    	 => $product[0]->pname,
	   					'pid'    	 => $product[0]->pid,
	   					'purl'    	 => $product[0]->ppage_url,
	   					'plink'    	 => base_url().'collections/cyc_step2?type='.$type.'&page='.$product[0]->ppage_url.'&seater='.$product[0]->sid,
	   					'removeid'    	 => $rand,
	   					'limit_cart' => $product[0]->limit_cart,
	   					'prod_rowid' => '',
	   					'cushionadd' => $cush,
	   					'deliver_days' => $product[0]->deliver_days,
	   					'options' => array('categ' => $type, 'seatid' => $product[0]->sid, 'seatname' => $product[0]->sname, 'fabid' => $product[0]->fid, 'fabname' => $product[0]->fname)
	   			);
	   			
	   			$rowid = $this->cart->insert($dat);
	   			
	   			$dat = array(
	   					'id'      => $cush,
	   					'qty'     => 1,
	   					'image'   => $cushion[0]->cush_image,
	   					'price'   => $cushion[0]->price,
	   					'pid'     => $product[0]->pid,
	   					'name'    => $cushion[0]->cush_name,
	   					'purl'    => $product[0]->ppage_url,
	   					'plink'    => base_url().'collections/cyc_step3?type='.$product[0]->type.'&page='.$product[0]->ppage_url.'&seater='.$product[0]->spid,
	   					'removeid'   => $rand,
	   					'limit_cart' => $product[0]->limit_cart,
	   					'spid' => $product[0]->spid,
	   					'prod_rowid' => $rowid,
	   					'cushionadd' => '1',
	   					'deliver_days' => $product[0]->deliver_days,
	   					'options' => array('categ' => $type, 'seatid' => '', 'seatname' => '', 'fabid' => '', 'fabname' => '')
	   			);
	   			 
	   			$this->cart->insert($dat);		
	   			
	   			echo $this->loadcart();
	   		}
	   		else{
	   			echo -1;//out of stock
	   		}
	   	}
	   	else{
	   		echo 0;//invalid
	   	}
   }

   
}

?>