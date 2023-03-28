<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class home_db extends CI_Model{
	
	function getlogin($db=array())
	{
		$sql="SELECT * FROM users WHERE emailid=? and password=?";
		$q=$this->db->query($sql,array($db['email'],$db['password']));
		
		if($q->num_rows()>0)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
		function sqlExecute($sql)
	{
	    $q=$this->db->query($sql);
	    return $q !== FALSE ? $q->result() : array();
	}
	function checkcoupon($coupon){
		$sql = "select v.id,code as coupon_code,discount from vouchers as v,voucher_code c where code='$coupon' and from_date<='".date('Y-m-d')."' and to_date>='".date('Y-m-d')."' and v.status=0 and c.status=0 and cid=id";
		$q=$this->db->query($sql);
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
	}
	public function productDetails($pro_url) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.youtube,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,ps.minimum_buy,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtubelink')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['p.page_url'=>$pro_url])
								  ->group_by('p.id')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

	public function productDetailsWithoutSize($pro_url) {
		$q = $this->db->select('c.name as cname,c.id as cid,c.page_url as cpage_url,p.id,p.page_url as ppage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,ps.minimum_buy,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtubelink as youtubeid,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->where(['p.page_url'=>$pro_url])
								  ->group_by('p.id')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

	public function productDetailsSizeView($psid) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['ps.id'=>$psid])
								  ->group_by('p.id')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

		public function productDetailsApiList($pro_url) {
		$q = $this->db->select('c.name as cname,c.id as cid,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,ps.minimum_buy,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.how_to_use,p.youtubelink as youtubeid,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['p.page_url'=>$pro_url])
								  ->group_by('p.id')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

	public function productDetailsView($pid,$cat_id) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.status,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['p.id !='=>$pid,'p.cat_id'=>$cat_id,'p.status ='=>0])
								  ->group_by('ps.pid')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

		public function productDetailsViewSimilar($pid,$cat_id) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.minimum_buy,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.status,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->where(['p.id !='=>$pid,'p.cat_id'=>$cat_id,'p.status ='=>0])
								  ->group_by('ps.pid')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

		public function productPackageDetailsView($id,$pid) {
		$q = $this->db->select('c.name as cname,c.id as cid,c.page_url as cpage_url,p.id,p.page_url as ppage_url,pp.how_to_use,pp.youtube,p.name as title,p.ptitle,pp.pcode,pp.overview,p.status,p.cat_id,p.subcat_id,pi.id as piidmg,pi.image_path,pi.thumb,pp.mrp,pp.id as ppid,pp.sellingprice,pp.stock,pp.id as psid,p.minimum_buy,pp.sname,pp.svalue,pi.image_large,pi.image_medium,pp.package_id,pp.psize,p.tax')->from('products p')
								 ->join('productpackage pp','pp.pid=p.id')
								  ->join('product_images pi','pp.id=pi.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->where(['p.id'=>$id,'pp.id'=>$pid])
								  ->order_by('pp.pid desc')
								  ->limit(1)
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

	public function productApiDetailsList($prod_url) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id as pid,p.page_url as ppage_url,s.name as sname,p.name as pname,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.id as psid,s.id as sid,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['p.page_url'=>$pro_url])
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}



		public function productDetailsViewApiKey($pid,$id) {
		$q = $this->db->select('c.id as cid,c.name as cname,c.page_url as cpage_url,p.id,p.page_url,p.name as title,pp.pcode,pp.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,pp.mrp,pp.id as ppid,pp.sellingprice,pp.stock,pp.id as psid,p.minimum_buy,pp.sname,pp.svalue,pi.image_large,pp.package_id,p.ptitle,s.id as sid,s.name as sname')->from('products p')
								 ->join('productpackage pp','pp.pid=p.id')
								  ->join('product_images pi','pp.id=pi.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','s.id=pp.psize')
								  ->where(['c.id'=>$id,'p.id !='=>$pid,'p.status ='=>0])
								  ->group_by('p.ptitle')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}



	public function productDetailsViewApi($cate,$pid,$mid) {
			$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.minimum_buy,s.page_url as spage_url,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.status,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['p.id !='=>$pid,'p.status ='=>0])
								  ->group_by('ps.pid')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}
	public function getloginval($db=array())
	{
		$this->db->where('emailid',$db['email']);
		$this->db->where('login_type',$db['type']);
		$q=$this->db->get('users');
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
	}
	
	function checkmail($email,$pass)
	{
		$this->db->where('emailid',$email);
		$q=$this->db->get('users');
		if($q->num_rows()>0)
		{
			$sql = "update users set password = '".sha1($pass)."' where emailid = '".$email."' ";
			$result = $this->db->query($sql);
			if($this->db->affected_rows())
				return 0;//updated
			else
				return 1;//exists but not updated
		}
		else return 2;//not exists
	
	
	}
	
	function getRecords($table,$db = array(),$select = "*",$ordercol = '',$group = '',$start='',$limit=''){
		$this->db->select($select);
		if(!empty($ordercol)){
			$this->db->order_by($ordercol);
		}
		if($limit != '' && $start !=''){
			$this->db->limit($limit,$start);
		}
		if($group != ''){
			$this->db->group_by($group);
		}
		$q=$this->db->get_where($table, $db);
		return $q->result();
	}
	
	function getbilldetails($uid){
		$sql="select b.* from orders o, orders_bill_ship b where user_id=$uid and oid=id order by id desc limit 0,1";
		$q=$this->db->query($sql);
		if($q->num_rows()>0)
		{
			return $q->result();
		}
		else
		{
			return 0;
		}
	}
	
		function getsuggestions($categ,$condition){
		$data='';
		$labels = array();$dataFilter='';$done=0;$i=0;
		//echo "<pre>";print_r($categ);exit;
		if(is_array($categ)){
			$tabarr = array();
		
			foreach ($categ as $c){
				$sql = "select pid,pname,ppage_url,selling_price from (SELECT pid,pname,ppage_url,selling_price FROM frontview_".$c['page_url']."_product where $condition order by CAST(selling_price AS DECIMAL) asc ) t
				group by t.pid ";
				 
				$tabarr[] = $sql;
			}
			//echo "<pre>";print_r($tabarr);exit;
			$sql = implode(" union ", $tabarr);
			$sql = $sql." order by CAST(selling_price AS DECIMAL) asc";
			
			$q = $this->db->query($sql);
			$rows=$q->result();
			$catg_id='';
			if($q->num_rows()){
				$done =1;
			
				foreach($rows as $row){
					$name = $row->pname;
					$labels[$i] = array(
							'status' => "success",
							'search_data' =>$name
					);
					$i = $i+1;
				}
			
			
			}
    	}
		if($done!=1){
	
			$labels[$i] = array(
					"status" =>"failure",
					'msg' => "No Results Found !!!",
			);
			return json_encode($labels);
		}
		else{
				
			foreach($labels as $k => $v)
			{
				foreach($labels as $key => $value)
				{
					if($k != $key && $v['value'] == $value['value'])
					{
						unset($labels[$k]);
					}
				}
			}
				
			return json_encode($labels);
		}
	
	}
	function getproductdetails($table,$url){
		$sql = "select t.pid,t.pname,t.image_path,t.mrp,t.selling_price,t.cname,t.sname,t.sid,t.pcode,t.overview,t.image_path,t.stock,t.mid,t.ppage_url,t.cpage_url from $table t where ppage_url like '$url'  order by CAST(selling_price AS DECIMAL) asc";
		$q=$this->db->query($sql);
		if($q->num_rows()>0)		
			return $q->result();		
		else		
			return 0;
	}
	function getsimilarproducts($categ, $pid, $mid){
		//$sql = "select ppage_url,pname,selling_price,pid,psid,image_path from frontview_".$categ."_product  where pid!='$pid' and mid='$mid' order by CAST(selling_price AS DECIMAL) asc";
		$sql="SELECT ppage_url,pname,mrp,pid,psid,image_path,cpage_url,stock,selling_price,sel_dollar,b2b_selling_price,b2b_sel_dollar
		FROM (SELECT ppage_url,pname,mrp,pid,psid,image_path,cpage_url,stock,selling_price,sel_dollar,b2b_selling_price,b2b_sel_dollar
		FROM frontview_".$categ."_product
		where pid!='$pid' and mid='$mid' order by CAST(selling_price AS DECIMAL) asc ) t
		group by t.pid order by CAST(selling_price AS DECIMAL) asc ";
		$q=$this->db->query($sql);
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
	}
	function getallProductssql($categ, $condition,$sort='',$user_type){
		
		if($sort =='' && $user_type ==1)
		{
		  $sort = ' order by CAST(selling_price AS DECIMAL) asc';
		}
		else if($sort =='' && $user_type ==2)
		{
			$sort = "order by CAST(b2b_selling_price AS DECIMAL) asc";
		}
		else if($sort == '')
		{
			$sort = ' order by CAST(selling_price AS DECIMAL) asc';
		}
		
        $order_by = "order by CAST(selling_price AS DECIMAL) asc";
		if($user_type == 2)
		{
			$order_by = "order by CAST(b2b_selling_price AS DECIMAL) asc";
		}
		
		//echo $sort;
    	 $sql = "select t.* from (SELECT * FROM frontview_".$categ."_product 
		    	where 1 $condition $order_by ) t 
		    	group by t.pid  $sort"; 
		
		/* $sql = "select t.* from frontview_".$categ."_product t 
		where 1 $condition 
		group by t.pid order by CAST(selling_price AS DECIMAL) asc"; */
    	$res = $this->db->query($sql);
    	return $res->result();
		
		
    	
		
	}
	
	function getregister($db=array())
	{
		$this->db->where('emailid',$db['emailid']);
		$this->db->where('login_type',$db['login_type']);
		$q=$this->db->get('users');
		if($q->num_rows()>0)
		{
			return 3;
		}
		else
		{
			$this->db->insert('users',$db);
			if($this->db->insert_id()>0)
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
	}
    
	function getcontent($table,$col,$id,$status,$order)
	{
	
		if(!empty($id)){
			$this->db->where($col,$id);
		}
		if($status != ''){
			$this->db->where('status',$status);
			//$this->db->where_in('status', $stid);
		}
		if($order != ''){
			$this->db->order_by("order_no",$order);
		}
	
		$q=$this->db->get($table);
	
		if($q->num_rows()>0) {
			return $q->result();
		}
	
			
	
		else {
			return 0;
		}
	
			
	
	}
	
	function getcontentstatus($table,$col,$id,$statuscol,$status,$ordercol,$order){
		if(!empty($id)){
			$this->db->where($col,$id);
		}
		if($status != ''){
			$this->db->where_in($statuscol, $status);
		}
		if($order != ''){
			$this->db->order_by($ordercol,$order);
		}
		
		$q=$this->db->get($table);
		
		if($q->num_rows()>0)
		
			return $q->result();
		
		else
		
			return 0;
	}
	
	function getcontent1($table,$col,$id,$status,$ordcol,$order)
	{
	
		if(!empty($id)){
			$this->db->where($col,$id);
		}
		if($status != ''){
			$this->db->where('status',$status);
		}
		if($order != ''){
			$this->db->order_by($ordcol,$order);
		}
	
		$q=$this->db->get($table);
	
		if($q->num_rows()>0)
	
			return $q->result();
	
		else
	
			return 0;
	
	}
	
	function getcontentgroup($table,$col,$id,$status,$ordcol,$order,$group)
	{
	
		if(!empty($id)){
			$this->db->where($col,$id);
		}
		if($status != ''){
			$this->db->where('status',$status);
		}
		if($order != ''){
			$this->db->order_by($ordcol,$order);
		}
		
		if($group != ''){
			$this->db->group_by($group);
		}
	
		$q=$this->db->get($table);
	
		if($q->num_rows()>0)
	
			return $q->result();
	
		else
	
			return 0;
	
	}
	
	function getcontentlimit($table,$select,$col,$id,$status,$order,$start,$limit)
	{
		$this->db->select($select);
		if(!empty($id) && !empty($col)){
			$this->db->where($col,$id);
		}
		if($status != ''){
			$this->db->where('status',$status);
			//$this->db->where_in('status', $stid);
		}
		if($order != ''){
			$this->db->order_by("order_no",$order);
		}
	
		if($limit != ''){
			$this->db->limit($limit,$start);
		}
		
		
		$q=$this->db->get($table);
	
		if($q->num_rows()>0)
	
			return $q->result();
	
		else
	
			return 0;
	
	}
	
	function insertRecord($table,$db=array())	
	{
	
		$q=$this->db->insert($table, $db);
	
		$total = $this->db->insert_id();
	
		if($total>0)
	
			return $total;
	
		else
	
			return 0;
	
	}
	
	function updateRecord($table,$db=array(),$col,$id)
	{
		$this->db->where($col,$id);
		$q=$this->db->update($table,$db);
		$total = $this->db->affected_rows();
		if($total>0)
			return 1;
		else
			return 0;
	}
	
	function updateRecord_arr($table,$data,$where=array())
	{
	    $q = $this->db->update($table,$data,$where);
	    return $q !== FALSE ? $this->db->affected_rows() : array();
	   /*  $total = $this->db->affected_rows();
	    if($total>0)
	        return 1;
	        else
	            return 0; */
	}
    
    function getsocial($name){
    	
    	$q=$this->db->get('social_links');
    	if($q->num_rows()>0){
    		$r = $q->result();
        	return $r[0]->$name;
    	}
        else{ 
        	return 0;
        }
    }
    
    
    function runSql($sql){
    	if(!empty($sql)){
	    	$q=$this->db->query($sql);
	    	return $q->result();
    	}
    	else{
    		return '';
    	}
    }

   
    
    function runQuery($sql){
    
    	$q=$this->db->query($sql);
    }
    
    function getfreebiesql(){
    	$sql = "select title,breif_descp,image_path,created_date,id,page_url from freebies_post where status=0 order by created_date desc";
    	return $sql;
    }
    
    function getnewcomm($fid,$userid){
    	$this->db->where('fid',$fid);
    	$this->db->where('user_id',$userid);
    	$this->db->where('status',0);
    	
    	$this->db->order_by('created_date','asc');    	
    	
    	$q=$this->db->get('freebies_comments');
    	
    	if($q->num_rows()>0)
    	
    		return $q->result();
    	
    	else
    	
    		return 0;
    }
    
    function getnumberformat($num){
    	return str_replace(".00", "", (string)number_format((float)$num, 2, '.', ','));
    }
    

    function calculatedisc($discount,$cart_tot){
    	if(empty($discount)){
    		$discount = 0;
    	}
    	$saved = ($discount/100)*$cart_tot;
    	$saved = round(number_format((float)$saved, 1, '.', ''));
    	$saved = str_replace(",","",$saved);
    	$this->session->set_userdata('discount_amt',  $this->home_db->getnumberformat($saved) );
    	$tot = $cart_tot - $saved;
    	if($tot < 0){
    		$tot = 0;
    	}
    	//$tot = $this->getnumberformat($tot);
    	return $tot;
    }
    
    function calculate_tax($tax=0, $price=0){
    	$taxamt = ($tax/100)*$price;
    	//$tot = $this->getnumberformat($price+$taxamt);
    	return $taxamt;
    }
    
    function getcarttotal($discount,$cart_tot,$charges){ 
    	if(intval($cart_tot) > 0){ 	
	    	$total = $this->calculatedisc($discount,$cart_tot);
	    	$tax = 0;
	    	if(!empty($charges)){
	    		$tax = $charges;
	    	}
	    	return $this->getnumberformat($total+$tax);
    	}
    	else{
    		return 0;
    	}
    }
	
	 
    function getcarttotalamt($discount,$cart_tot){ 
    	if(intval($cart_tot) > 0){ 	
	    	$total = $this->calculatedisc($discount,$cart_tot);
	    	/*$tax = 0;
	    	if(!empty($charges)){
	    		$tax = $charges;
	    	}*/
	    	return $this->getnumberformat($total);
    	}
    	else{
    		return 0;
    	}
    }
    
    function discount($mrp,$sell){
    	if(empty($mrp)){
    		$mrp = 0;
    	}
    	if(floatval($mrp) > floatval($sell)){
    		$saved = floatval($mrp) - floatval($sell);
    		$saved = round((floatval($saved)/floatval($mrp))*100,1);
    		return $saved;
    	}
    	else{
    		return 0;
    	}
    	
    }
    
    function delete_wishlist($db=array()){
    	$this->db->delete('wishlist', $db);
    	$total = $this->db->affected_rows();
    	if($total>0)
    		return 1;
    	else
    		return 0;
    }
    
    function checkwishlist($db=array()){
    	$this->db->where('pid',$db['pid']);
    	$this->db->where('user_id',$db['user_id']);
    	$this->db->where('categ',$db['categ']);
    	$q=$this->db->get('wishlist');
    	return $q->num_rows();
    }
     function checkwishlistapi($db=array()){
    	$this->db->where('pid',$db['pid']);
    	$this->db->where('user_id',$db['user_id']);
    	$this->db->where('categ',$db['cpage_url']);
    	$q=$this->db->get('wishlist');
    	return $q->num_rows();
    }
    
    function add_wishlist($db=array())
    {
    	$num = $this->checkwishlist($db);
    	if($num == 0){
    		$this->db->insert('wishlist',$db);
    		return 1;
    	}
    	else{
    		return 1;
    	}
    }
	
	function deleterecord($table,$db=array())
	{
		$this->db->delete($table, $db);
	}
	
	 function getPaymentLog($db = array()){
        return $this->getRecords("payment_log", $db, "*", "id desc");
    }
    public function paymentResponseApi($db =array()) {
    	$res = $this->db->select('o.total_amt_paid as totalamount,o.paymode as paytype,o.orderid,p.razor_oid as razorid,o.currency_type as currency')->from('users u')
    							 ->join('orders o','o.user_id=u.id')
    							 ->join('payment_log p','p.oid=o.id')
    							 ->where(['o.user_id'=>$db['user_id'],'u.phone'=>$db['sphone'],'u.state'=>$db['state_id'],'u.town'=>$db['city_id'],'u.address1'=>$db['baddress1'],'u.address2'=>$db['baddress2'],'o.pincode'=>$d['pincode'],'o.devilery_charge'=>$db['delivery_charges'],'o.paymode'=>$db['payment_type']])->get();
    	return $res->result();
    	//echo $this->db->last_query();
    }

    	public function productDetailsViewS($pid,$cat_id) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,s.name as sname,s.page_url as spage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.id as psid,ps.mrp,ps.selling_price,ps.stock,ps.minimum_buy,s.page_url as spage_url,s.id as sid,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.status,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->join('sizes s','ps.size_id=s.id')
								  ->where(['p.id !='=>$pid,'p.cat_id'=>$cat_id,'p.status ='=>0])
								  ->group_by('ps.pid')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}

		public function productDetailsViewSimilars($pid,$cat_id) {
		$q = $this->db->select('c.name as cname,c.page_url as cpage_url,p.id,p.page_url as ppage_url,p.name as title,p.pcode,p.overview,p.status,p.cat_id,p.subcat_id,pi.image_path,pi.thumb,ps.mrp,ps.selling_price,ps.stock,ps.minimum_buy,ps.sel_dollar,ps.b2b_selling_price,ps.b2b_sel_dollar,p.material_id as mid,p.status,p.tax')->from('products p')
								  ->join('product_images pi','p.id=pi.pid')
								  ->join('product_sizes ps','p.id=ps.pid')
								  ->join('category c','p.cat_id=c.id')
								  ->where(['p.id !='=>$pid,'p.cat_id'=>$cat_id,'p.status ='=>0])
								  ->group_by('ps.pid')
								  ->get();
			if($q->num_rows()>0)
			return $q->result();
		else
			return 0;

	}
}
?>