<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class blog_db extends CI_Model{
	
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
	
	function getloginval($db=array())
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
	
		if($q->num_rows()>0)
	
			return $q->result();
	
		else
	
			return 0;
	
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
    		
    	$q=$this->db->query($sql);
    	//if($q->num_rows()>0){
    	return $q->result();
    	//}
    	//else{
    	////	return '';
    ///}
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
    
    function getcarttotal($discount,$cart_tot,$tax){    	
    	$total = $this->calculatedisc($discount,$cart_tot);
    	$tax = $this->calculate_tax($tax,$total);
    	return $this->getnumberformat($total+$tax);
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
    
}
?>