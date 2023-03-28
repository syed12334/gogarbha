<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(-1);ini_set('display_errors',1);;
class home extends CI_Controller {
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
        $this->load->model('products_db');
        $this->load->library('session');
        $this->data['UserDetail'] = '';
        if($this->session->userdata('atpUserDetail'))
        $this->data['UserDetail']=$this->session->userdata('atpUserDetail');
        $this->data['jsFile']=$this->load->view('jsFile', $this->data , TRUE);
        $settings = $this->home_db->getcontent1('settings','','','','','');
        $call = "080 25588985 / 86"; $emlid= "info@artiiplant.com";$time = '8:00am - 10:00pm';
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
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);        
        
    }
    
    public function index()
    {
    	
    	$this->data['bannerval'] = $this->home_db->getcontent('banner','','','0','asc');
    	$this->data['category'] = $this->home_db->getcontent1('view_categ_exist','','','','corder_no','asc');
    	$category = $this->data['category'];
    	$sql = $special = '';
    	if(is_array($category)){
    		foreach ($category as $c){
    			$sql = "SELECT pname, pid, ppage_url, image_path, mrp, selling_price, psid, pcreated_date,cpage_url,spage_url,size_id FROM
    					(SELECT pname, pid, ppage_url, image_path, mrp, selling_price, psid, pcreated_date,cpage_url,spage_url,size_id FROM frontview_".$c->cpage_url."_product where home_page=1 order by CAST(selling_price AS DECIMAL) asc ) t
    					group by pid";//order by pcreated_date desc
    			
    			if($c->cid == "10"){
    				$special = $sql;
    			}
    			else{
    				$tabarr[] = $sql;
    			}
    		}  
    		$sql = implode(" union ", $tabarr);
    		$sql = $sql." order by pid desc limit 0,20";
    	}
		//echo $sql;exit;
    	$res = $this->home_db->runsql($sql);
    	//if(!empty($special)){
    	$special = "SELECT pname, pid, ppage_url, image_path, mrp, selling_price, psid, pcreated_date,cpage_url FROM
    					(SELECT pname, pid, ppage_url, image_path, mrp, selling_price, psid, pcreated_date,cpage_url FROM frontview_special_product where home_page=1 order by CAST(selling_price AS DECIMAL) asc ) t
    					group by pid order by pid desc";
						
    		$this->data['specialproducts'] = $this->home_db->runsql($special);
    	//}
    	//else{
    		//$this->data['specialproducts'] = '';
    	//}
    	$this->data['newproducts'] = $res;
    	$this->data['clients'] = $this->home_db->getcontent('clients','','','0','asc');
    	$this->data['testimonials'] = $this->home_db->getcontentlimit('testimonials','*','','','0','asc','0','4');
    	$this->data['gifts'] = $this->home_db->getcontentlimit('gifts','*','','','0','','0','4');
		//echo $this->db->last_query();
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
					pi.order_no piorder_no, pi.image_path, ps.id as psid, ps.mrp, ps.selling_price, ps.stock,ps.size_id,
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
    		
    		$sub[] = " (SELECT pname,ppage_url,pcode,cpage_url,f.pid,image_path,w.id,w.user_id,selling_price,w.created_date,mrp,psid FROM frontview_".$ca->page_url."_product f, wishlist w where f.pid=w.pid and w.categ='".$ca->page_url."' group by w.id order by CAST(selling_price AS DECIMAL) asc) ";
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
    		if(!empty($pincode)){
    			$check = $this->home_db->getcontent1('pincodes','pincode',$pincode,'','','');
    			if(is_array($check)){
    				$this->session->set_userdata('pincode', $pincode );
    				$this->session->set_userdata('charges', $check[0]->charges );
    				echo $check[0]->charges;// exists
    			}
    			else{
    				/* $check = $this->home_db->getcontent1('failedpincode','pincode',$pincode,'','','');
    				if(!is_array($check)){
    					$db = array('pincode'=>$pincode);
    					$this->home_db->insertRecord('failedpincode',$db);
    				} */
    				echo '';//not exists
    			}
    		}
    		else{
    			echo '';//empty
    		}
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
    
    public function removewishlist()
    {
    	$rowid=$this->input->post('id');
    	$db = array("pid"=>$rowid,"user_id"=>$this->data['UserDetail'][0]->id);
    	$this->home_db->delete_wishlist($db);
    	$wishlist = $this->home_db->getcontent1('wishlist_view','user_id',$this->data['UserDetail'][0]->id,'','id','asc');
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
    	}
    	$this->load->view('footer_policy',$this->data);
    }
    
    public function delivery_information()
    {
    	$this->session->set_userdata('redirect_back', current_url() );
    	$details = $this->home_db->getcontent('footer_policy','','','','');
    	$this->data['heading'] = 'Delivery Information';
    	$this->data['descp'] = '<h2>Coming Soon...</h2>';
    	if(is_array($details)){
    		$this->data['descp'] = $details[0]->deliveryinfo_policy;
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
    	}
    	$this->load->view('footer_policy',$this->data);
    }
    
    public function logout()
    {
    	$this->load->library('facebook',array("appId"=>'510391332463769',"secret"=>'a6717084c54ab12baa70b64453492d51'));
    	$this->facebook->destroySession();
    	$this->session->sess_destroy();
    	redirect(base_url());
    }
    
    public function facebook_login()
    {
    
    	$this->load->library('user_agent');  // load user agent library
    	
    	$this->load->library('facebook',array("appId"=>'510391332463769',"secret"=>'a6717084c54ab12baa70b64453492d51'));
    	$user=$this->facebook->getUser();
    	if($user)
    	{
    		$user_profile=$this->facebook->api('/me?fields=id,first_name,last_name,email&access_token='.$this->facebook->getAccessToken());
    		
    		if(!$user_profile['email'])
    		{
    
    		}
    		else
    		{
    			$check = $this->home_db->getcontent1('users','emailid',$user_profile['email'],'','','');
    			if(is_array($check)){
    				$reg = 0;
    			}
    			else{
	    			$pass = rand();
	    			$db=array(
	    					'emailid'=>$user_profile['email'],
	    					'name'=>$user_profile['first_name'].' '.$user_profile['last_name'],
	    					'password'=>sha1($pass),
	    					'login_type'=>'general',
	    					'created_date'=>date('Y-m-d H:i:s')
	    			);
	    			$reg = $this->home_db->getregister($db);
	    			
	    			$this->load->library('email');
	    			$config = array (
	    					'mailtype' => 'html',
	    					'charset'  => 'utf-8',
	    					'priority' => '1'
	    			);
	    			$this->data['password'] = $pass;
	    			$this->data['email'] = $user_profile['email'];
	    			$this->data['name'] = $user_profile['first_name'].' '.$user_profile['last_name'];
	    			$body=$this->load->view('send_login',$this->data,true);
	    			$this->email->initialize($config);
	    			$this->email->from('noreply@artiiplant.com', 'Artiiplants');
	    			$this->email->to($user_profile['email']);
	    			$this->email->subject('Your Account created successfully!!');
	    			$this->email->message($body);
	    			$this->email->send();
    			}
    			if($reg == 0 || $reg == 3)
    			{
    				$db=array(
    						'email'=>$user_profile['email'],
    						'type'=>'general'
    				);
    
    				$val['regdata'] = $this->home_db->getloginval($db);
    				$this->session->set_userdata('atpUserDetail',$val['regdata']);
    				
    				
    				
    				$wish = $this->session->userdata('wishid');
    				if(!empty($wish)){
    					
    					$db=array(
    							'categ'=>$wish['categ'],
    							'pid'=>$wish['pid'],
    							'user_id'=>$val['regdata'][0]->id,
    							'created_date'=>date('Y-m-d H:i:s')
    					);
    					$this->home_db->add_wishlist($db);
    					$this->session->unset_userdata('wishid');
    				}
    
    				$redirect_url = $this->session->userdata('redirect_back');  // grab value and put into a temp variable so we unset the session value
    				$this->session->unset_userdata('redirect_back');
    				if(empty($redirect_url)){
    					$redirect_url = base_url();
    				}
    				redirect( $redirect_url );
    
    			}
    			
    		}
    	}
    	else
    	{
    		redirect($this->facebook->getLoginUrl(array('scope'=>'email')));
    	}
    }
    
    public function google_login()
    {
    	require_once 'Google/src/apiClient.php';
    	require_once 'Google/src/contrib/apiPlusService.php';
    	$client = new apiClient();
    	$client->setApplicationName("Artiiplants");
    	
    	$client->setClientId('827094241954-clrcq6dtma816jeonh978638nbldbbav.apps.googleusercontent.com');
        $client->setClientSecret('8P6sc7qXnjQLLiRDB6BHY1pD');
    	$client->setRedirectUri(base_url().'home/google_login');
    	$client->setApprovalPrompt ("auto");
    	$client->setDeveloperKey('composed-field-664');
    	//************************************************************
    	 
    	$client->setScopes(array('https://www.googleapis.com/auth/plus.profile.emails.read',' https://www.googleapis.com/auth/plus.login'));
    	$client->setAccesstype('online');
    	
    	$plus = new apiPlusService($client);
    	if (isset($_GET['code'])) {
    		$client->authenticate();
    		$client->setAccessToken($client->getAccessToken());
    		$me = $plus->people->get('me');
    		$optParams = array('maxResults' => 100);
    		$activities = $plus->activities->listActivities('me', 'public', $optParams);
    		
    		$fname=$me['name']['givenName'];
    		$lname=$me['name']['familyName'];
    		$email=$me['emails'][0]['value'];
    		$name=$me['displayName'];
    		
    		$check = $this->home_db->getcontent1('users','emailid',$email,'','','');
    		if(is_array($check)){
    			$reg = 0;
    		}
    		else{
    			$pass = rand();
    			$db=array(
    					'emailid'=>$email,
    					'name'=>$name,
    					'password'=>sha1($pass),
    					'login_type'=>'general',
    					'created_date'=>date('Y-m-d H:i:s')
    			);
    			$reg = $this->home_db->getregister($db);
    			
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
    			$this->email->from('noreply@artiiplant.com', 'Artiiplants');
    			$this->email->to($email);
    			$this->email->subject('Your Account created successfully!!');
    			$this->email->message($body);
    			$this->email->send();
    		}
    			if($reg == 0 || $reg == 3)
    			{
    				$db=array(
    						'email'=>$email,
    						'type'=>'general'
    				);
    
    				$val['regdata'] = $this->home_db->getloginval($db);
    				$this->session->set_userdata('atpUserDetail',$val['regdata']);
    				
    				
    				
    				$wish = $this->session->userdata('wishid');
    				if(!empty($wish)){
    						
    					$db=array(
    							'categ'=>$wish['categ'],
    							'pid'=>$wish['pid'],
    							'user_id'=>$val['regdata'][0]->id,
    							'created_date'=>date('Y-m-d H:i:s')
    					);
    					$this->home_db->add_wishlist($db);
    					$this->session->unset_userdata('wishid');
    				}
    
    				$redirect_url = $this->session->userdata('redirect_back');  // grab value and put into a temp variable so we unset the session value
    				$this->session->unset_userdata('redirect_back');
    				if(empty($redirect_url)){
    					$redirect_url = base_url();
    				}
    				redirect( $redirect_url );
    
    			}
    	}
    
    
    }
    
    
    public function checklogin(){
    	$post=$this->input->post(NULL,TRUE);
    	$email = $post['email'];
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
				
    			$val['data'] = $this->home_db->getloginval($db);
    			$this->session->set_userdata('atpUserDetail',$val['data']);
    			$dtl=$this->session->userdata('atpUserDetail');
    			
    			$wish = $this->session->userdata('wishid');
				print_r($wish);exit;
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
    	$post=$this->input->post(NULL,TRUE);
    	$email = trim(preg_replace('!\s+!', '',$post['email']));
    	$name = trim(preg_replace('!\s+!', ' ',$post['name']));
    	$password = trim(preg_replace('!\s+!', '',$post['password']));
    	if(!empty($email) && !empty($name) && !empty($password))
    	{
    	
    		$db=array(
	    			'emailid'=>$email,
	    			'name'=>$name,
	    			'password'=>sha1($password),
	    			'login_type'=>'general',
    				'created_date'=>date('Y-m-d H:i:s')
	    			);
					
	    	$reg = $this->home_db->getregister($db);
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
	    	echo $reg;
    	}
    	else
    	{
    		echo 2;
    		
    	}
    }
    
    public function forgotPass()
    {
    	$post=$this->input->post(NULL,TRUE);
    	$email = trim(preg_replace('!\s+!', '',$post['email']));
    	if(!empty($email))
    	{
    		$newpasssend = rand();
    		$db=$email;
    		$emailidcheck =$this->home_db->checkmail($db,$newpasssend);
    
    		if(intval($emailidcheck) == 0)
    		{
    
    			$db=array(
    					'email'=>$email,
    					'type'=>'general'
    			);
    			$vdata = $this->home_db->getloginval($db);
    			$name=$vdata[0]->name;
    			$this->data['name']=$name;
    			$this->data['emailid']=$email;
    			$this->data['password']=$newpasssend;
    			$this->load->library('email');
    			$config = array (
    					'mailtype' => 'html',
    					'charset'  => 'utf-8',
    					'priority' => '1'
    			);
    			$this->email->initialize($config);
    			$this->email->from('noreply@artiiplant.com', 'Artiiplants');
    			$this->email->to($email);
    			$this->email->subject('Your Artiiplants Account Password');
    			$body = $this->load->view('forgotpassword',$this->data,true);
    			$this->email->message($body);
    			//$this->email->message('Hi, <br><br>Your World of Labs Account Details are below: <br><br><strong>Username</strong> : '.$db.'<br><strong>Password</strong> : '.$newpasssend.' <br><br><a href="'.base_url().'home/register">Click Here</a> to Login.');
    			$this->email->send();
    			echo 0;
    		}
    		else if(intval($emailidcheck) == 1)
    		{
    			echo  2;
    		}
    		else
    		{
    			echo 1;
    		}
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
	
    
}

?>