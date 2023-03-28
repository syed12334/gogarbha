<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//error_reporting(-1);ini_set('display_errors',1);;
class Home extends CI_Controller {
 
    protected $data;
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Kolkata');
        $this->load->helper('utility_helper');
      
        $this->load->model('home_db');
        $this->load->model('products_db');
        $this->load->library('session');
        $this->data['UserDetail'] = '';
        
        $this->data['UserDetail']=$this->session->userdata('atpUserDetail');
        $this->data['jsFile']=$this->load->view('jsFile', $this->data , TRUE);
        $settings = $this->home_db->getcontent1('settings','','','','','');
        $call = "81431 57519"; $emlid= "info@gogarbha.com";$time = '8:00am - 10:00pm';
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
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);        
        
    }
    
    public function index()
    {
           //error_reporting(1);ini_set('display_errors', TRUE);
    	$userDetail =  $this->data['UserDetail'];
		
	  //  $user_type = $userDetail[0]->user_type;
		// echo "user_type_____".$user_type;exit;
    	$this->data['bannerval'] = $this->home_db->getcontent('banner','','','0','asc');
		
		$this->data['user_type'] = "";
		if($userDetail !='')
		{
		  $user_type = $userDetail[0]->user_type;
		  $this->data['user_type'] = $user_type;
		  
		//  echo "user_type_____".$user_type;
    	  $this->data['category'] = $this->home_db->runSql('select id as cid,name as cname,page_url as cpage_url,image_path as cimage_path from category where status=0 and type IN(0,'.$user_type.') ORDER BY order_no ASC ');
		  //echo $this->db->last_query();exit;
		}
		else{
			
			$this->data['category'] = $this->home_db->getRecords('category',array('status'=>0),'id as cid,name as cname,page_url as cpage_url,image_path as cimage_path','order_no ASC');
		}
		
		
    	$this->data['categorywise'] = $this->home_db->getRecords('category',array('status'=>0),'id ,name,page_url as cpage_url','id asc');
		
		
		$this->data['newproducts'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.ptitle as ptitle,p.ptitle,p.home_page,p.bundle_product,p.special,p.exclusive,p.id,p.page_url,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock,s.name as siname from products p left join category c on p.cat_id = c.id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id left join sizes s on s.id = pp.psize where p.status =0 and pp.home_page=1 group by pp.pid order by pp.id desc limit 4');
    //echo $this->db->last_query();exit;
		$this->data['bundle_products'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.home_page,p.bundle_product,p.special,p.exclusive,p.page_url,p.id,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock from products p left join category c on p.cat_id = c.id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id where p.status =0 group by pp.pid order by pp.id desc limit 4');
        //$this->db->last_query();exit;
		//echo "<pre>";print_r($this->data['bundle_products']);exit;
		$this->data['special_offers'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.home_page,p.bundle_product,p.ptitle as ptitle,p.special,p.exclusive,p.page_url,p.id,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock,s.name as siname from products p left join category c on p.cat_id = c.id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id left join sizes s on s.id = pp.psize where p.status =0 and pp.bundle_products=1 group by pp.pid order by pp.id desc limit 4');
		
		//$this->data['special_offers'] = $special;
    	$this->data['clients'] = $this->home_db->getcontent('clients','','','0','asc');
    	$this->data['testimonials'] = $this->home_db->getcontentlimit('testimonials','*','','','0','asc','0','4');
    	$this->data['gifts'] = $this->home_db->getcontentlimit('gifts','*','','','0','desc','0','4');
    	$this->data['special_banner'] = $this->home_db->getcontent('special_banner','','','','');
		$this->data['clients'] = $this->home_db->getcontent('clients','','','0','asc');
        $this->data['banners'] = $this->home_db->getRecords('banner',['status'=>0],'*','id desc');

    	$this->load->view('index',$this->data);
    }
    
	public function createviews(){
    	$c =  $this->home_db->getcontent('category','','','','');
    	foreach ($c as $ca){
	    	$sql = "CREATE VIEW frontview_".$ca->page_url."_product
					AS
					Select c.id as cid,c.order_no corder_no,c.name cname,c.page_url cpage_url,c.description cdescription, c.image_path cimage_path,
					m.name mname, m.id mid, m.order_no morder_no, m.page_url mpage_url,
					cl.name clname, cl.id clid, cl.order_no clorder_no, cl.page_url clpage_url,
					p.id pid,p.name pname,p.page_url ppage_url, overview, pcode, vase, p.created_date pcreated_date,
					pi.order_no piorder_no, pi.image_path, ps.id as psid, ps.mrp, ps.selling_price, ps.sel_dollar, ps.stock,ps.size_id,
					s.name sname, s.id sid, s.order_no sorder_no,s.page_url spage_url, home_page
					From category c,materials m, colors cl, products p, product_images pi, product_sizes ps, sizes s
					Where c.id=p.cat_id and p.material_id=m.id and cl.id=p.color_id and p.id=ps.pid and (ps.size_id=s.id or ps.size_id=0)
	    			and p.id=pi.pid and pi.status=0 and ps.status=0 and c.page_url='".$ca->page_url."' 
	    			and c.status=0 and m.status=0 and cl.status=0 and p.status=0 and s.status=0 and (ps.selling_price!='' or CAST(ps.selling_price AS DECIMAL)>0) and ps.stock>0
					group by ps.id order by pi.order_no";
	    	$this->home_db->runQuery($sql);
    	}
    }
    
    public function createcategviews(){
    	$c =  $this->home_db->getcontent('category','','','','');
    	$sql = "CREATE VIEW view_categ_exist
    	AS ";
    	$sub = array();
    	foreach ($c as $ca){
    		if($ca->id != "10"){
    			$sub[] = " SELECT cid,corder_no,cname,cpage_url,cdescription,cimage_path FROM frontview_".$ca->page_url."_product where 1 group by cid ";   
    		} 		
    	}
    	
    	$sql = $sql.implode(" union ", $sub);
    	$this->home_db->runQuery($sql);
    }
    
    
    public function creatematerialviews(){
    	$c =  $this->home_db->getcontent('category','','','','');
    	$sql = "CREATE VIEW view_material_exists
    	AS ";
    	$sub = array();
    	foreach ($c as $ca){
    		$sub[] = " SELECT mname,mid,morder_no,mpage_url,cpage_url FROM frontview_".$ca->page_url."_product where mid!=0 group by mid ";
    	}
    	 
    	$sql = $sql.implode(" union ", $sub);
    	$this->home_db->runQuery($sql);
    }
    
    public function product_details() {
        $this->session->set_userdata('rurl',$_SERVER['REQUEST_URI']);
   //echo "<pre>";print_r($_GET);exit;
        $pricerange = $this->input->get('pricerang');
         $requesturi = $_SERVER['REQUEST_URI'];
       $res = str_replace("/shop/", "", $requesturi);
          $this->session->set_userdata('rurl',$res);
       $where ="";$pricearry = array();
        if(is_array($pricerange) && count($pricerange)){
                foreach($pricerange as $index=>$price){
                    $expl = explode("-",$price);
                    //echo print_r($exp1);exit;
                    if($expl[1] == 0){
                        $priceQry = " ps.selling_price >= ".$expl[0];
                    }
                    else{
                        $priceQry = " ps.selling_price between ".$expl[0]." and  ".$expl[1];
                    }
                     $pricearry[]=$priceQry;
                }
                  $imp=implode(" or ",$pricearry);
                  $where .= ' and ('.$imp.') ';
                }

         $catid = base64_decode($_GET['id']);
        if(isset($_GET['id']) && !empty($_GET['id'])) {
            $where .="  and p.subcat_id =".$catid."";
        }
       

        $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 '.$where.' group by ps.pid order by p.name desc ');
        //echo $this->db->last_query();exit;
         // $this->data['ptitle'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.home_page,p.bundle_product,p.special,p.exclusive,p.id,p.page_url,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock,s.name as ssname from products p left join category c on c.id = p.cat_id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id left join subcategory s on s.id = p.subcat_id '.$where.' order by p.id desc limit 1');
         //echo $this->db->last_query();exit;

        if(!empty($catid)) {
            $this->data['ptitle'] =$this->home_db->sqlExecute('select c.name  from category c left join subcategory s on s.category_id = c.id where s.id='.$catid.'');
             $this->data['subtitle'] = $this->home_db->sqlExecute('select * from subcategory where id='.$catid.'');
        }
         
         //echo $this->db->last_query();exit;
        

         //echo $this->db->last_query();exit;
        // $this->data['stype'] = $_GET['stype'];
         $this->data['catid'] =base64_decode($_GET['id']);
         $this->session->set_userdata('filterid',$catid);
    // echo $this->db->last_query();exit;

        $this->load->view('category',$this->data);
   }

      public function product_detailsview() {
   //echo "<pre>";print_r($_GET);exit;
        $pricerange = $this->input->get('pricerang');
       $where ="";$pricearry = array();
       $requesturi = $_SERVER['REQUEST_URI'];
       $res = str_replace("/shop/", "", $requesturi);
          $this->session->set_userdata('rurl',$res);
        if(is_array($pricerange) && count($pricerange)){
                foreach($pricerange as $index=>$price){
                    $expl = explode("-",$price);
                    //echo print_r($exp1);exit;
                    if($expl[1] == 0){
                        $priceQry = " ps.selling_price >= ".$expl[0];
                    }
                    else{
                        $priceQry = " ps.selling_price between ".$expl[0]." and  ".$expl[1];
                    }
                     $pricearry[]=$priceQry;
                }
                  $imp=implode(" or ",$pricearry);
                  $where .= ' and ('.$imp.') ';
                }

         $catid = base64_decode($_GET['id']);
        if(isset($_GET['id']) && !empty($_GET['id'])) {
            $where .="  and p.cat_id =".$catid."";
        }
       

        $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 '.$where.' group by ps.pid order by p.name desc');
         // $this->data['ptitle'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.home_page,p.bundle_product,p.special,p.exclusive,p.id,p.page_url,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock,s.name as ssname from products p left join category c on c.id = p.cat_id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id left join subcategory s on s.id = p.subcat_id '.$where.' order by p.id desc limit 1');
         //echo $this->db->last_query();exit;

        if(!empty($catid)) {
            $this->data['ptitle'] =$this->home_db->sqlExecute('select c.name  from category c left join subcategory s on s.category_id = c.id where c.id='.$catid.'');
             $this->data['subtitle'] = $this->home_db->sqlExecute('select * from category where id='.$catid.'');
        }
         
         //echo $this->db->last_query();exit;
        

         //echo $this->db->last_query();exit;
        // $this->data['stype'] = $_GET['stype'];
         $this->data['catid'] =base64_decode($_GET['id']);
         $this->session->set_userdata('filterid',$catid);
    // echo $this->db->last_query();exit;

        $this->load->view('categorywise',$this->data);
   }
    public function createcolorviews(){
    	$c =  $this->home_db->getcontent('category','','','','');
    	$sql = "CREATE VIEW view_color_exists
    	AS ";
    	$sub = array();
    	foreach ($c as $ca){
    		$sub[] = " SELECT clname,clid,clorder_no,clpage_url,cpage_url FROM frontview_".$ca->page_url."_product where clid!=0 group by clid ";
    	}
    
    	$sql = $sql.implode(" union ", $sub);
    	$this->home_db->runQuery($sql);
    }
    
    public function createsizeviews(){
    	$c =  $this->home_db->getcontent('category','','','','');
    	$sql = "CREATE VIEW view_sizes_exists
    	AS ";
    	$sub = array();
    	foreach ($c as $ca){
    		$sub[] = " SELECT sname,sid,sorder_no,spage_url,cpage_url,size_id FROM frontview_".$ca->page_url."_product where 1 group by sid ";
    	}
    
    	$sql = $sql.implode(" union ", $sub);
    	$this->home_db->runQuery($sql);
    }
    
    public function createwishlistviews(){
    	$c =  $this->home_db->getcontent('category','','','','');
    	$sql = "CREATE VIEW wishlist_view
    	AS ";
    	$sub = array();
    	foreach ($c as $ca){
    		
    		//$sql = " (SELECT pname,ppage_url,pcode,cpage_url,pid,image_path,id,user_id,selling_price,created_date,mrp,psid FROM
    				//	(SELECT pname,ppage_url,pcode,cpage_url,f.pid,image_path,w.id,w.user_id,selling_price,w.created_date,mrp,psid FROM frontview_".$ca->page_url."_product f, wishlist w where f.pid=w.pid and w.categ='".$ca->page_url."' order by CAST(selling_price AS DECIMAL) asc ) t
    				//	group by id) ";//order by pcreated_date desc
    		
    		$sub[] = " (SELECT pname,ppage_url,pcode,cpage_url,f.pid,image_path,w.id,w.user_id,selling_price,sel_dollar,w.created_date,mrp,psid FROM frontview_".$ca->page_url."_product f, wishlist w where f.pid=w.pid and w.categ='".$ca->page_url."' group by w.id order by CAST(selling_price AS DECIMAL) asc) ";
    		//$sub[] = $sql;
    	}
    
    	$sql = $sql.implode(" union ", $sub);
    	$this->home_db->runQuery($sql);
    }
    
    public function creategifts(){
    	$c =  $this->home_db->getcontent('gifts','','','','');
    	foreach ($c as $ca){
    		$sql = "CREATE VIEW gift_".$ca->page_url."_view
					AS
					Select c.id as cid,c.order_no corder_no,c.name cname,c.page_url cpage_url, 
    				p.id pid,p.name pname,p.page_url ppage_url, pcode, p.created_date pcreated_date, 
    				pi.order_no piorder_no, pi.image_path, ps.id as psid, ps.mrp, ps.selling_price, ps.stock,ps.size_id, 
    				s.name sname, s.id sid, s.order_no sorder_no,s.page_url spage_url, 
    				g.order_no gorder_no, g.title gtitle, g.image_path gimage_path, g.page_url gpage_url, g.created_date gcreated_date 
    				From category c,materials m, colors cl, products p, product_images pi, product_sizes ps, sizes s, gifts g, gift_products gp 
    				Where c.id=p.cat_id and p.material_id=m.id and cl.id=p.color_id and p.id=ps.pid and (ps.size_id=s.id or ps.size_id=0) and 
    				p.id=pi.pid and pi.status=0 and ps.status=0 and g.id=gp.gift_id and gp.pid=p.id and g.status=0 and c.status=0 and m.status=0 and 
    				cl.status=0 and p.status=0 and s.status=0 and (ps.selling_price!='' or CAST(ps.selling_price AS DECIMAL)>0) and ps.stock>0 and g.id='".$ca->id."'
    				group by ps.id order by pi.order_no ";
    		$this->home_db->runQuery($sql);
    	}
    }
    
    public function checkpincode(){
    		$pincode = trim(preg_replace('!\s+!', '',$this->input->post('pin')));
              $city = trim(preg_replace('!\s+!', '',$this->input->post('cit')));
    		$settings = $this->home_db->runSql('select * from settings');
            
        //echo "<pre>";print_r($_POST);exit;
            $this->session->set_userdata('pincode',$pincode);
    		if(!empty($pincode)){
                if(!$this->session->userdata('city')) {
                      $check = $this->home_db->getRecords('pincodes',['pincode'=>$pincode,'status'=>0],"*");
                    // echo $this->db->last_query();exit;
                      
                    if(!empty($check)){
                        $this->session->set_userdata('charges', $check[0]->charges);
                        echo $check[0]->charges;
                    }
                    else{
                        $this->session->set_userdata('noexists',-1);
                        echo '-1';//not exists
                        
                    }
                  
                }else {
                    $check = $this->home_db->getRecords('pincodes',['pincode'=>$pincode,'city_id'=>$city,'status'=>0],"*");
                     @$this->session->set_userdata('charges', $check[0]->charges);
               //echo $this->db->last_query();exit;
                    if(!empty($check)){
                        echo $check[0]->charges;
                    }
                    else{
                        $this->session->set_userdata('noexists',-1);
                        echo '-1';//not exists
                        
                    }
                }
    		}
    		else{
    			echo 'empty';//empty
    		}
    }

        public function checkpincodes(){
            $pincode = trim(preg_replace('!\s+!', '',$this->input->post('pin')));
              $city = trim(preg_replace('!\s+!', '',$this->input->post('cit')));
            $settings = $this->home_db->runSql('select * from settings');
            
        //echo "<pre>";print_r($_POST);exit;
            $this->session->set_userdata('pincode',$pincode);
            if(!empty($pincode)){
                      $check = $this->home_db->getRecords('pincodes',['pincode'=>$pincode,'status'=>0],"*");
                    // echo $this->db->last_query();exit;
                      @$this->session->set_userdata('charges', $check[0]->charges);
                    if(count($check) >0){
                        echo $check[0]->charges;
                    }
                    else{
                       @ $this->session->set_userdata('noexists',-1);
                        echo '-1';//not exists
                    }
            }
            else{
                echo 'empty';//empty
            }
    }
    public function cityId() {
        //echo "<pre>";print_r($_POST);exit;
      $state = $this->input->post('state');
        $city = $this->input->post('city');
        $pincode = $this->input->post('pincode');
       echo json_encode(['state'=>$state,'city'=>$city,'pincode'=>$pincode]);
       
        $this->session->set_userdata('state',$state,'city',$city);
    }
    
    public function removepincode(){
    	$this->session->unset_userdata('pincode');
    }
    public function session_check()
	{
		if($this->session->userdata('atpUserDetail')!=true)
		{
			echo "session is not set";
					//echo $this->session->set_userdata('user_id');
		} 
		else 
		{
			echo "session is set";
		}
	}
    
	public function CheckSession()
    {
    	$url = $this->input->post('url');
		//print_r($url);exit;
    	$this->session->set_userdata('redirect_back', $url );
    	if($this->session->userdata('atpUserDetail'))
    	{
    		echo  1;
    	}
    	else
    	{
    		if($_SERVER['REQUEST_METHOD']=='POST'){
    		
    			$type=$this->input->post('categ');
    			$pid=$this->input->post('val_id');
    			$dbarr = array(
    					'categ'=>$type,
    					'pid'=>$pid
    					);
    			$this->session->set_userdata('wishid', $dbarr );
    		}
    		echo  0;
    	}
    }
    public function sortByList() {
        //echo "<pre>";print_r($_POST);exit;
        $type = $this->input->post('sort');
        $stype = $this->input->post('type');
        $where = "where p.status =0";
        $where .= " and p.subcat_id =".$stype."";

        $order_by ="";
        if($type ==1) {
                    $order_by .="ps.selling_price asc";
                }else if($type ==2) {
                    $order_by .="ps.selling_price desc";
                }
                else if($type ==3) {
                    $order_by .="p.name desc";
                }
                else if($type ==4) {
                    $order_by .="p.name asc";
                }else {
                    $order_by .="p.id desc";
                }
        $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id '.$where.' group by ps.pid order by '.$order_by.'');
        //echo $this->db->last_query();exit;
        echo $this->load->view('newdata',$this->data,true);
        

    }


  public function sortByListView() {
    //echo "<pre>";print_r($_POST);exit;
        $type = $this->input->post('sort');
        $stype = $this->input->post('type');
        $where = "where p.status =0";
        $where .= " and p.cat_id =".$stype."";

        $order_by ="";
        if($type ==1) {
                    $order_by .="ps.selling_price asc";
                }else if($type ==2) {
                    $order_by .="ps.selling_price desc";
                }
                else if($type ==3) {
                    $order_by .="p.name desc";
                }
                else if($type ==4) {
                    $order_by .="p.name asc";
                }else {
                    $order_by .="p.id desc";
                }

        $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id '.$where.' group by ps.pid  order by '.$order_by.'');
        //echo $this->db->last_query();exit;
        echo $this->load->view('newdata',$this->data,true);
        

    }
        public function sortByListSearch() {
        //echo "<pre>";print_r($_POST);exit;
        $type = $this->input->post('sort');
        $searchbar = $this->input->post('title');
        $where = "where p.status =0";
        //$where .= " and p.subcat_id =".$stype."";

        $order_by ="";
        if($type ==1) {
                    $order_by .="ps.selling_price asc";
                }else if($type ==2) {
                    $order_by .="ps.selling_price desc";
                }
                else if($type ==3) {
                    $order_by .="p.name desc";
                }
                else if($type ==4) {
                    $order_by .="p.name asc";
                }else {
                    $order_by .="p.id desc";
                }
        $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id left join subcategory su on su.id=p.subcat_id  where p.name like "%'.$searchbar.'%" or c.name like "%'.$searchbar.'%" or su.name like "%'.$searchbar.'%"  and p.status=0 group by ps.pid order by '.$order_by.'');
        //echo $this->db->last_query();exit;
        echo $this->load->view('newdata',$this->data,true);
        

    }
	
	public function Setsession()
	{
	    if($_SERVER['REQUEST_METHOD']=='POST'){
		
			$user_type=$this->input->post('user_type');
			$price_type=$this->input->post('price_type');
			$dbarr = array(
					'user_type'=>$user_type,
					'price_type'=>$price_type
			);
			$this->session->set_userdata('currencyid', $dbarr );
			
			echo 1;
		}
	}
    
    public function addwish(){
    	if($_SERVER['REQUEST_METHOD']=='POST'){
    
    		$det = $this->data['UserDetail'];
    		$id = $det[0]->id;
    		$type=$this->input->post('categ');
    		$pid=$this->input->post('val_id');
    		$db=array(
    				'categ'=>$type,
    				'pid'=>$pid,
    				'user_id'=>$id,
    				'created_date'=>date('Y-m-d H:i:s')
    			);
				//print_r($db);exit;
    		echo $this->home_db->add_wishlist($db);
    	}
    	else{
    		echo 0;
    	}
    }
       
    public function reviews(){
        $userDetail =  $this->data['UserDetail'];
           $id=$this->input->post('id');
            $ppid=trim(preg_replace('!\s+!', ' ',$this->input->post('ppid')));
       //echo "<pre>";print_r($userDetail);exit;
         //echo "<pre>";print_r($_POST);exit;
        if($_SERVER['REQUEST_METHOD']=='POST'){
            $session = $this->session->userdata('atpUserDetail');
         $list = $this->home_db->getRecords('reviews',['pid'=>$ppid,'user_id'=>$userDetail[0]->id],'name');
           //echo $this->db->last_query();exit;
            if(empty($this->session->userdata('atpUserDetail')))
        {
            echo 0;
        }else {
            if(count($list) >0) {
                        echo 2;
                    }else {
                          
                         //echo $this->db->last_query();exit;
              $name=trim(preg_replace('!\s+!', ' ',$this->input->post('name')));
             
              $review_descp=trim(preg_replace('!\s+!', ' ',$this->input->post('review_descp')));
            $ratings=$this->input->post('ratings');
         
            $db = array(
                    'name'=>$name,
                    'email' =>$userDetail[0]->emailid,
                    'review_descp'=>trim(preg_replace('!\s+!', ' ',$review_descp)),
                    'rating'=>$ratings,
                    'psid'=>$id,
                    'created_date'=>date('Y-m-d H:i:s'),
                    'approved_date'=>date('Y-m-d H:i:s'),
                    'user_id'=>$userDetail[0]->id,
                    'pid'=>$ppid
            );
            echo $ids = $this->home_db->insertRecord('reviews',$db); 
                    }
           
            }
        }
        else{
            echo -1;
        }
    }
    public function removewishlist()
    {
    	$rowid=$this->input->post('id');
    	$db = array("pid"=>$rowid,"user_id"=>$this->data['UserDetail'][0]->id);
    	$wishlist =$this->home_db->delete_wishlist($db);
    	//$wishlist = $this->home_db->getcontent1('wishlist_view','user_id',$this->data['UserDetail'][0]->id,'','id','asc');
    	if(is_array($wishlist)){
    		echo 1;
    	}
    	else{
    		echo 0;
    	}
    }
    
    public function loadwishlist(){
    	$this->load->view('loadwishlist', $this->data);
    }
    
    public function privacy_policy()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Privacy Policy';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->privacy_policy;
            $this->data['type'] = 'pp';
    	}
    	$this->load->view('footer_policy',$this->data);
    }
    
    public function delivery_information()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Delivery & Return Policy';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->deliveryinfo_policy;
            $this->data['type'] = 'di';
    	}
    	$this->load->view('footer_policy',$this->data);
    }
    
    public function customerservice()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Customer Service';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->customerservice;
             $this->data['type'] = 'cs';
    	}
    	$this->load->view('footer_policy',$this->data);
    }

	public function termsandconditions()
	{
		$this->session->set_userdata('redirect_back', current_url() );
		$details = $this->home_db->getcontent('footer_policy','','','','');
		$this->data['heading'] = 'Terms & Conditions';
		$this->data['descp'] = '<h2>Coming Soon...</h2>';
		if(is_array($details)){
			$this->data['descp'] = $details[0]->conditions;
             $this->data['type'] = 'tc';
		}
		$this->load->view('footer_policy',$this->data);
	}

	public function disclaimer()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Disclaimer';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->terms_of_use;
             $this->data['type'] = 'd';
    	}
    	$this->load->view('footer_policy',$this->data);
    }






    public function privacy_policy_app()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Privacy Policy';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->privacy_policy;
            $this->data['type'] = 'pp';
    	}
    	$this->load->view('footer_policy_mobile',$this->data);
    }
    
    public function delivery_information_app()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Delivery & Return Policy';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->deliveryinfo_policy;
            $this->data['type'] = 'di';
    	}
    	$this->load->view('footer_policy_mobile',$this->data);
    }
    
    public function customerservice_app()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Customer Service';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->customerservice;
             $this->data['type'] = 'cs';
    	}
    	$this->load->view('footer_policy_mobile',$this->data);
    }

	public function termsandconditions_app()
	{
		$this->session->set_userdata('redirect_back', current_url() );
		$details = $this->home_db->getcontent('footer_policy','','','','');
		$this->data['heading'] = 'Terms & Conditions';
		$this->data['descp'] = '<h2>Coming Soon...</h2>';
		if(is_array($details)){
			$this->data['descp'] = $details[0]->conditions;
             $this->data['type'] = 'tc';
		}
		$this->load->view('footer_policy_mobile',$this->data);
	}

	public function disclaimer_app()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Disclaimer';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->terms_of_use;
             $this->data['type'] = 'd';
    	}
    	$this->load->view('footer_policy_mobile',$this->data);
    }



    public function returnandrefund_app() {
        $this->session->set_userdata('redirect_back', current_url() );
         $details = $this->home_db->getcontent('return_policy','','','','');
         $this->data['heading'] = 'Return & Refund Policy';
         if(is_array($details)){
             $this->data['descp'] = $details[0]->returnpolicy;
             $this->data['type'] = 'rps';
         }
         $this->load->view('footer_policy_mobile',$this->data);
     }













    
    
    public function logout()
    {
    
    	$this->session->unset_userdata('atpUserDetail');
    	$this->session->unset_userdata('currencyid');
    	redirect(base_url());
    }
    public function checklogin(){
    	$post=$this->input->post(NULL,TRUE);
    	$email = $post['email'];
        $userDetail =  $this->data['UserDetail'];
		//print_r($_POST);exit;

    	if(!empty($email))
    	{
    		$db['email']=$post['email'];
    		$db['password']=sha1($post['password']);
    		$db['type']='general';
    
    		$check = $this->home_db->getlogin($db);
			//echo $this->db->last_query();exit;
    		if($check)         // login check
    		{
				
				$this->session->unset_userdata('currencyid');
    			$val['data'] = $this->home_db->getloginval($db);
				$user_type = $val['data'][0]->user_type;
				$dbarr = array(
					'user_type'=>$user_type,
					'price_type'=>$user_type
			    );
    			$this->session->set_userdata('atpUserDetail',$val['data']);
				$this->session->set_userdata('currencyid',$dbarr);
    			$dtl=$this->session->userdata('atpUserDetail');
    			
    			$wish = $this->session->userdata('wishid');
				//print_r($wish);exit;
    			if(!empty($wish)){
    			
    				$db=array(
    						'categ'=>$wish['categ'],
    						'pid'=>$wish['pid'],
    						'user_id'=>$val['data'][0]->id,
    						'created_date'=>date('Y-m-d H:i:s')
    				);
    				$this->home_db->add_wishlist($db);
    				$this->session->unset_userdata('wishid');
    			}

            
    		}
    		else
    		{

    			echo 2;
    		}
    	}
    	else
    	{
    		if($this->session->userdata('atpUserDetail'))
    		{
    			$usr = $this->session->userdata('atpUserDetail');
    			//echo $usr[0]->name;
    			$wish = $this->session->userdata('wishid');
    			if(!empty($wish)){
    				 
    				$db=array(
    						'categ'=>$wish['categ'],
    						'pid'=>$wish['pid'],
    						'user_id'=>$usr[0]->id,
    						'created_date'=>date('Y-m-d H:i:s')
    				);
    				$this->home_db->add_wishlist($db);
    				$this->session->unset_userdata('wishid');
    			}
    		}
    		else
    		{
    			echo 2;
    		}
    	}
    	 
    }
    
    public function register(){
        //echo "<pre>";print_r($_POST);exit;
        $email = trim(preg_replace('!\s+!', '',html_escape($this->input->post('email'))));
        $name = trim(preg_replace('!\s+!', '',html_escape($this->input->post('name'))));
        $phone = trim(preg_replace('!\s+!', '',html_escape($this->input->post('phone'))));
        $password = trim(preg_replace('!\s+!', '',html_escape($this->input->post('password'))));
        //echo "<pre>";print_r($_POST);exit();
        $getRecords = $this->home_db->getRecords('users',['emailid'=>$email,'phone'=>$phone,'login_type'=>'general'],'*');
        //echo $this->db->last_query();exit;
    	if(count($getRecords) >0)
    	{
    	   echo 2;
    		
    	}
    	else
    	{
    		$db=array(
                    'name'=>$name,
                    'phone'=>$phone,
                    'emailid'=>$email,
                    'password'=>sha1($password),
                    'login_type'=>'general',
                    'status'=>1,
                    'created_date'=>date('Y-m-d H:i:s'),
                    'modified_date'=>date('Y-m-d H:i:s'),
                    'lastlogin'=>date('Y-m-d H:i:s'),
                    'user_type'=>1
                    );
                    
            //$reg = $this->home_db->getregister($db);
            $insert = $this->home_db->insertRecord('users',$db);
        //       $mailmsg = 'Hi, <br><br>You have registered Successfully. Now you can shop by login with Gogarbha';
        //       $mailmsg .= "<a href='".base_url().'login'."'>Login Here</a>";
               
        //         //echo $mailmsg;exit;
                
        // //echo $html;exit;
        //         //$this->sendMailSparkPostOTP($to,$html,'Login OTP');
        //         $mailresp = $this->mail->sendMail($email,$mailmsg,'Registration Mail ');
            
            echo 0;
    		
    	}
    }
	
	 public function wholesaler_register(){
    	$post=$this->input->post(NULL,TRUE);
    	$name = trim(preg_replace('!\s+!', ' ',$post['name']));
		$company_name = trim(preg_replace('!\s+!', '',$post['company_name']));
		$address = trim(preg_replace('!\s+!', '',$post['address']));
		$phone = trim(preg_replace('!\s+!', '',$post['phone']));
		$password = trim(preg_replace('!\s+!', '',$post['rpassword']));
		$pan_no = trim(preg_replace('!\s+!', '',$post['pan_no']));
    	$gst = trim(preg_replace('!\s+!', ' ',$post['gst']));
    	$country = trim(preg_replace('!\s+!', ' ',$post['country']));
    	$email = trim(preg_replace('!\s+!', ' ',$post['email']));
    	
    	if(!empty($email) && !empty($name) && !empty($password))
    	{
    		    $db=array(
	    			'name'=>$name,
	    			'sname'=>$name,
	    			'company_name'=>$company_name,
	    			'address1'=>$address,
	    			'phone'=>$phone,
	    			'password'=>sha1($password),
					'pan_no'=>$pan_no,
					'gst'=>$gst,
					'emailid'=>$email,
	    			'login_type'=>'general',
	    			'country'=>$country,
	    			'status'=>1,
	    			'user_type'=>2,
	    			'modified_date'=>date('Y-m-d H:i:s'),
	    			'lastlogin'=>date('Y-m-d H:i:s'),
    				'created_date'=>date('Y-m-d H:i:s')
	    		);
				//print_r($db);exit;
				$reg = $this->home_db->getregister($db);
				$img1up = false;
				$arry = array("gif","jpg","png","ico","jpeg");
				$uploaddir = 'assets/wholesaler_doc/';
				$uploadDBdir= "assets/wholesaler_doc/";
				$arrayImage=$_FILES['doc']['name'];
				//print_r($arrayImage);exit;
				$arrayTemp=$_FILES['doc']['tmp_name'];
				$ext = explode(".", $arrayImage);
				$ext =  end($ext1);
				if(in_array($ext,$arry)){            	
					$image_name=$page_url.'.'.$ext;
					$uploadfile = $uploaddir.$image_name;
					$uploadfileTable1 = $uploadDBdir.$image_name;
					$img1up = move_uploaded_file($arrayTemp,$uploadfile);                
					//print_r($img1up);exit;
					$db = array(
						'image_path'=>$uploadfileTable1,
						'user_id'=>$det[0]->id
					);
					
					//$this->home_db->resizeImagef($uploadfileTable1, 110, 110);
					$this->master_db->updateRecord('users',$db,$res);
				}
				//echo $this->db->last_query();exit;
				if($reg == "0"){
					$db=array(
							'email'=>$email,
							'type'=>'general'
					);
					$val['data'] = $this->home_db->getloginval($db);
					$this->session->set_userdata('atpUserDetail',$val['data']);
					$wish = $this->session->userdata('wishid');
					if(!empty($wish)){
							
						$db=array(
								'categ'=>$wish['categ'],
								'pid'=>$wish['pid'],
								'user_id'=>$val['data'][0]->id,
								'created_date'=>date('Y-m-d H:i:s')
						);
						$this->home_db->add_wishlist($db);
						$this->session->unset_userdata('wishid');
					}
				}
				$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Registration Successfull!!</div>');
    		    redirect( base_url().'wholesaler' );
    	}
    	else
    	{
    		$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissable">Already Registered!!</div>');
    	 redirect( base_url().'wholesaler' );
    		
    	}
    }
    
    public function forgotPass()
    {
      $this->load->library('mail');
      //echo "<pre>";print_r($_POST);exit;
    	$email = trim(preg_replace('!\s+!', '',$this->input->post('email')));
    	if(!empty($email))
    	{
    		$newpasssend = rand();
    		$db=$email;
    		$emailidcheck =$this->home_db->checkmail($db,$newpasssend);
    			$db=array(
    					'email'=>$email,
    					'type'=>'general'
    			);
    			$vdata = $this->home_db->getloginval($db);
    			$name=$vdata[0]->name;
    			$this->data['name']=$name;
    			$this->data['emailid']=$email;
    			$this->data['password']=$newpasssend;
    		  $mailmsg = 'Hi, <br><br>Your Account Details are below: <br><br><strong>Username</strong> : '.$email.'<br><strong>Password</strong> : '.$newpasssend.' <br><br><a href="'.base_url().'login">Click Here</a> to Login.';
               
                //echo $mailmsg;exit;
                $this->data['messagebody'] = $mailmsg;
                $html = $this->load->view('forgotpassword',$this->data,true);
        //echo $html;exit;
                //$this->sendMailSparkPostOTP($to,$html,'Login OTP');
               $this->mail->sendMail($email,$html,'Your Gogarbha Account Password');
    			echo 0;
    		
    	}
    	else
    	{
    		echo 1;
    	}
    
    }

	function newslettersub(){
		if($_SERVER['REQUEST_METHOD']=='POST'){
			$email = $this->input->post("mail");
			$arr = $this->home_db->getcontentstatus("newsletter","email",$email,"","","","");
	
			if(is_array($arr) && (count($arr) == 1)){
				echo "1";
			}else{
				$db = array("email"=> $this->input->post('mail'),
					"subscribed_date"=> date('Y-m-d H:i:s'));
				$this->home_db->insertRecord("newsletter",$db);
				echo "0";
			}
		}
		else{
			echo "1";
		}

	}
	
	public function collections(){
	$this->session->set_userdata('redirect_back', current_url() );
    	$pageurl = $this->input->get('page');
    	$products = "";
    	$category_id = 0;
    	$this->data['pageurl'] = $pageurl;
    	$gifts = $this->home_db->getcontent1('gifts','page_url',$pageurl,'0','','');
    	if(is_array($gifts)){
    		$this->data['typename'] = $gifts[0]->title;
    		$products = "select * from gift_".$gifts[0]->page_url."_view";
    		$this->data['productsSql'] = $products;    		
    		$this->load->view('gifts',$this->data);
    	}
    	else{
    		redirect(base_url());
    	}
	}
	
    public function productPackageDetails() {
        //echo "<pre>";print_r($_POST);exit;
        $pid = trim($this->input->post('pid'));
        $ppid = trim($this->input->post('ppid'));
        $pif = trim($this->input->post('pif'));
               // $user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
    $pdetails = $this->home_db->productPackageDetailsView($pid,$ppid);
            //echo $this->db->last_query();exit();
    //$this->data['user_type'] = $user_type;
    $this->data['product'] = $pdetails;
    $this->data['settings'] = $this->home_db->sqlExecute('select * from settings');
    $this->data['ppids'] = $pif;

    $new = $this->load->view('product_package_view',$this->data,true);
    echo $new;
   }

   public function subscribenewsletter() {
   $result ="";
     $email = trim(preg_replace('!\s+!', '',html_escape($this->input->post('email'))));
     $ex = explode('@', $email);
     $this->data['name'] = ucfirst($ex[0]);
     $getrecords = $this->home_db->getRecords('newsletter',['email'=>$email],'*');
     //echo $this->db->last_query();exit;

     if(count($getrecords) >0) {
             $result = ['status' =>'failure','pdata'=>'Email already subscribed'];
     }else {
       
        $db['email'] = $email;
         $db['subscribed_date'] = date('Y-m-d H:i:s');
         $this->home_db->insertRecord('newsletter',$db);
        //  $body = $this->load->view('subscribe',$this->data,true);
        //  $this->load->library('email');
        // $this->email->from('info@gogarbha.com', 'Gogarbha');
        // $this->email->to($email);
        // $this->email->subject('Subscription');
        // $this->email->message($body);
        // if(!$this->email->send()) {
           //  $result =['status'=>'failure','pdata'=>'Error'];
             
           // }else {
           //     $result = ['status'=>'success','pdata'=>'Subscribed Successfully'];
                
           // }
            $result = ['status'=>'success','pdata'=>'Subscribed Successfully'];
     }
  

       echo json_encode($result);
    }
     public function returnandrefund() {
       $this->session->set_userdata('redirect_back', current_url() );
        $details = $this->home_db->getcontent('return_policy','','','','');
        $this->data['heading'] = 'Return & Refund Policy';
        if(is_array($details)){
            $this->data['descp'] = $details[0]->returnpolicy;
            $this->data['type'] = 'rps';
        }
        $this->load->view('footer_policy',$this->data);
    }

    public function categoryList() {
      //echo "<pre>";print_r($_GET);exit;
      $id = trim(preg_replace('!\s+!', ' ',base64_decode($this->input->get('id'))));
      //echo $id;
          if($userDetail !='')
      {
        $user_type = $userDetail[0]->user_type;
        $this->data['user_type'] = $user_type;
        
      //  echo "user_type_____".$user_type;
          $this->data['category'] = $this->home_db->runSql('select id as cid,name as cname,page_url as cpage_url,image_path as cimage_path from category where status=0 and type IN(0,'.$user_type.') ORDER BY order_no ASC ');
        //echo $this->db->last_query();exit;
      }
      else{
        
        $this->data['category'] = $this->home_db->getRecords('category',array('status'=>0),'id as cid,name as cname,page_url as cpage_url,image_path as cimage_path','order_no ASC');
      }
    }
       public function productsizeview() {
       $pid =$this->input->post('pid');
       $psid =$this->input->post('psid');
       $sid =$this->input->post('sid');
       $UserDetail = $this->data['UserDetail'];
            $user_type = ($UserDetail !='') ? $UserDetail[0]->user_type : '';
$pdetails = $this->home_db->productDetailsSizeView($psid);
        //echo $this->db->last_query();exit();
            $this->data['psid'] = $psid;
            $this->data['user_type'] = $user_type;
            $this->data['product'] = $pdetails;
            $this->data['settings'] = $this->home_db->sqlExecute('select * from settings');
            echo   $this->load->view('productnewcode',$this->data,true);

      //echo $this->db->last_query();
       //echo "<pre>";print($sql);
    }
    public function getPrice() {
       $catid = base64_decode($_POST['id']);
       $type = $this->input->post('type');
       
      //echo "<pre>";print_r($_POST);exit;
      $price = $this->input->post('price');
     $pricearry = array();
       $where = "where p.status =0";
       $where .= " and p.subcat_id =".$catid."";
       if(is_array($price)) {
              foreach ($price as $key => $value) {
                        //echo $value."<br />";
        $ex = $value;
        if($ex ==1) {
          $pricearry  = " 100 and 300";
          $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 and p.subcat_id='.$catid.' and ps.selling_price between '.$pricearry.' group by ps.pid');
      
    echo  $this->load->view('productsfiltervariable',$this->data,true);
        }

        if($ex ==2) {
          $pricearry  = " 300 and 500";
           $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 and p.subcat_id='.$catid.' and ps.selling_price between '.$pricearry.' group by ps.pid');
      
    echo  $this->load->view('productsfiltervariable',$this->data,true);
        }

         if($ex ==3) {
          $pricearry  = " 500 and 700";
           $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 and p.subcat_id='.$catid.' and ps.selling_price between '.$pricearry.' group by ps.pid');
      
    echo  $this->load->view('productsfiltervariable',$this->data,true);
        }

         if($ex ==4) {
          $pricearry  = " 700 and 900";
           $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 and p.subcat_id='.$catid.' and ps.selling_price between '.$pricearry.' group by ps.pid');
      
    echo  $this->load->view('productsfiltervariable',$this->data,true);
        }

         if($ex ==5) {
          $pricearry  = " 1000 and 1500";
           $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id where p.status =0 and p.subcat_id='.$catid.' and ps.selling_price between '.$pricearry.' group by ps.pid');
      
    echo  $this->load->view('productsfiltervariable',$this->data,true);
        }


      }

       }else {

          //echo "<pre>";print_r($ex);exit;       
      //echo "<pre>";print_r($pricearry);exit;
     $this->data['products'] = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,s.name as sname,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtube from products p left join product_images pi on p.id=pi.pid left join product_sizes ps on p.id=ps.pid left join sizes s on ps.size_id=s.id left join category c on p.cat_id=c.id '.$where.' group by ps.pid');
       //echo $this->db->last_query();exit;
    echo  $this->load->view('productsfiltervariable',$this->data,true);
       }


  
    }
    public function demoinfo() {
      echo phpinfo();
    }






	public function home_new()
    {
           //error_reporting(1);ini_set('display_errors', TRUE);
    	$userDetail =  $this->data['UserDetail'];
		
	  //  $user_type = $userDetail[0]->user_type;
		// echo "user_type_____".$user_type;exit;
    	$this->data['bannerval'] = $this->home_db->getcontent('banner','','','0','asc');
		
		$this->data['user_type'] = "";
		if($userDetail !='')
		{
		  $user_type = $userDetail[0]->user_type;
		  $this->data['user_type'] = $user_type;
		  
		//  echo "user_type_____".$user_type;
    	  $this->data['category'] = $this->home_db->runSql('select id as cid,name as cname,page_url as cpage_url,image_path as cimage_path from category where status=0 and type IN(0,'.$user_type.') ORDER BY order_no ASC ');
		  //echo $this->db->last_query();exit;
		}
		else{
			
			$this->data['category'] = $this->home_db->getRecords('category',array('status'=>0),'id as cid,name as cname,page_url as cpage_url,image_path as cimage_path','order_no ASC');
		}
		
		
    	$this->data['categorywise'] = $this->home_db->getRecords('category',array('status'=>0),'id ,name,page_url as cpage_url','id asc');
		
		
		$this->data['newproducts'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.ptitle as ptitle,p.ptitle,p.home_page,p.bundle_product,p.special,p.exclusive,p.id,p.page_url,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock,s.name as siname from products p left join category c on p.cat_id = c.id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id left join sizes s on s.id = pp.psize where p.status =0 and pp.home_page=1 group by pp.pid order by pp.id desc limit 4');
    //echo $this->db->last_query();exit;
		$this->data['bundle_products'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.home_page,p.bundle_product,p.special,p.exclusive,p.page_url,p.id,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock from products p left join category c on p.cat_id = c.id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id where p.status =0 group by pp.pid order by pp.id desc limit 4');
        //$this->db->last_query();exit;
		//echo "<pre>";print_r($this->data['bundle_products']);exit;
		$this->data['special_offers'] = $this->home_db->sqlExecute('select c.name as cname,p.name as title,p.home_page,p.bundle_product,p.ptitle as ptitle,p.special,p.exclusive,p.page_url,p.id,pp.pcode,pp.pid,pp.id as ppid,p.status,pi.image_path,pi.thumb,pp.sellingprice,pp.mrp,pp.stock,s.name as siname from products p left join category c on p.cat_id = c.id left join productpackage pp on pp.pid=p.id left join product_images pi on pi.pid = pp.id left join sizes s on s.id = pp.psize where p.status =0 and pp.bundle_products=1 group by pp.pid order by pp.id desc limit 4');
		
		//$this->data['special_offers'] = $special;
    	$this->data['clients'] = $this->home_db->getcontent('clients','','','0','asc');
    	$this->data['testimonials'] = $this->home_db->getcontentlimit('testimonials','*','','','0','asc','0','4');
    	$this->data['gifts'] = $this->home_db->getcontentlimit('gifts','*','','','0','desc','0','4');
    	$this->data['special_banner'] = $this->home_db->getcontent('special_banner','','','','');
		$this->data['clients'] = $this->home_db->getcontent('clients','','','0','asc');
        $this->data['banners'] = $this->home_db->getRecords('banner',['status'=>0],'*','id desc');

    	$this->load->view('index_new',$this->data);
    }

 public function paymentlink() {
     $txnid = 'Test'.rand(1,100);
                        $postData = array ( 
                        

                            'key' => '2PBP7IABZ2',
    'txnid' => 'CDEF',
    'amount' => '99.98',
    'productinfo' => 'Tshirt',
    'firstname' => 'JohnDoe',
    'phone' => '9876543210',
    'email' => 'johndoe@gmail.com',
    'surl' => 'https://docs.easebuzz.in/code-response/success',
    'furl' => 'https://docs.easebuzz.in/code-response/failure',
    'hash' => '0b502773b129744b83253b6939f5e134572e17ac9fd6697c4fdd1740847957e68786a32fc3073cb0d29027563722cfec14796d426cff7e518b019106b225840a'
                         );
                        $url = "https://testpay.easebuzz.in/payment/initiateLink";
                       $ch =  curl_init();
                       curl_setopt($ch, CURLOPT_URL, $url);
                       curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                       curl_setopt($ch, CURLOPT_POST, 1);
                       curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
                       curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
                       $result = curl_exec($ch);
                       $decode = json_decode($result,true);
                       echo "<pre>";print_r($decode);
}

}

?>