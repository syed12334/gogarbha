<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class account_db extends CI_Model{
	
	function updatedetails($db=array(),$id)
	{
		$this->db->where('id',$id);
		$q=$this->db->update('users', $db);
		$total = $this->db->affected_rows();
		if($total>0)
			return 2;
		else
			return 0;
	}
	
	function getloginval($db=array())
	{
		$this->db->where('id',$db['id']);
		$q=$this->db->get('users');
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
	}
	
	function check_password($oldpass,$id)
	{
		$this->db->where('password',$oldpass);
		$this->db->where('id',$id);
		$q=$this->db->get('users');
		if($q->num_rows()>0)
			return 1;
		else
			return 0;
	}
	
	function myorders($db=array())
	{
	
		$sql = "select *,DATE_FORMAT(ordered_date,'%d-%m-%Y %h:%i %p') as o_date_time from orders where user_id='".$db['id']."' and status!='-1' group by randid order by ordered_date desc ";
		$q = $this->db->query($sql);
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
	}
	function myordersid($db=array())
	{
	
		$sql = "select *,DATE_FORMAT(ordered_date,'%d-%m-%Y %h:%i %p') as o_date_time from orders where id='".$db['id']."' and status!='-1' order by ordered_date desc";
		$q = $this->db->query($sql);
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
	}
	function getorderProd($id){
		$sql = "select order_id,seller_id,pid,type,product_name,package,cas,unit_price,qty,discount,CAST(tot_price AS DECIMAL(10, 2)) as tot_price from order_products where order_id='".$id."'";
		$q = $this->db->query($sql);
		if($q->num_rows()>0)
			return $q->result();
		else
			return 0;
		
	}
	
    function getallProductssql($id, $condition){
         $sql = "select c.name as cname,c.page_url as cpage_url,p.id,p.name as ptitle,p.home_page,p.page_url,ps.mrp,ps.selling_price,s.name as sname,pi.image_path,pi.thumb,ps.stock from products p left join product_sizes ps on p.id=ps.pid left join product_images pi on p.id=pi.pid left join sizes s on s.id =ps.size_id left join category c on c.id =p.cat_id left join wishlist w on w.pid=p.id where w.user_id=".$id." group by ps.pid  order by p.id desc"; 
        
        return $sql;
        
    }
	
	
}
?>