<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class seller_db extends CI_Model{

	function selleradmin($db,$seller)
	{
		    $table='product as p, sub_category c, product_seller as ps';
            $page = $db['page'];
            $rp = $db['rp'];
            $sortname = $db['sortname'];
            $sortorder = $db['sortorder'];
			
			$ordernuberquery="";
			 if(!empty($db['protype']))
            { 
            	$ordernuberquery.=" and c.id='".$db['protype']."'";
            }
            if(!empty($db['brandtype']))
            {
                $ordernuberquery.=" and p.brand_id='".$db['brandtype']."' ";
            }
            if(!empty($db['proname']))
            {
                $ordernuberquery.=" and p.name Like '%".$db['proname']."%' ";
            }
            if(!empty($db['modelname']))
            { 
            $ordernuberquery.=" and p.sku like '%".$db['modelname']."%' ";
            }
            if(!empty($db['chooseestatus']))
            { 
            $ordernuberquery.=" and p.status='".$db['chooseestatus']."' ";
            }
			
			
            if($db['query']!=''){
            $where = ' WHERE p.categ_id=c.id and  p.id = ps.prod_id and ps.seller_id='.$seller[0]->id.'  '.$ordernuberquery.' ';
            } else {
            $where ='WHERE  p.categ_id=c.id and  p.id = ps.prod_id and ps.seller_id='.$seller[0]->id.'  '.$ordernuberquery.'';
            }
			$where ='WHERE  p.categ_id=c.id and  p.id = ps.prod_id and ps.seller_id='.$seller[0]->id.'  '.$ordernuberquery.'';
            if(trim($sortname) == ''){

            	$sortname = 'p.id';
            }
            if(trim($sortorder) == ''){

            	$sortorder = 'desc';
            }
            $sort = "ORDER BY $sortname $sortorder";            

            if (!$page) $page = 1;
            if (!$rp) $rp = 10;

            $start = (($page-1) * $rp);
            $limit = "LIMIT $start, $rp";
			
			   $sql = "SELECT p.brand_id brand_id,p.type type,p.sku sku,p.description description,p.warranty warranty,p.home_page_display home_page_display,ps.seller_id seller_id,ps.price price,ps.mrp mrp,ps.stock stock,ps.prod_id prod_id,p.id id,p.status status,c.name as category,c.proceeds,p.name as pname  FROM  $table  $where $sort $limit";

		    $result = $this->db->query($sql);
            $tempsql=" ".$table." ".$where." ".$sort." ".$limit;
            $total = $this->countRec('p.id',$table,$where);

            header("Content-type: application/json");
            $json = '';
            $json .= '{';
            $json .= '"page": '.$page.',';
            $json .= '"total": '.$total.',';
            $json .= '"rows": [';
            $rc = false;
            $counter123=1;

            foreach($result->result() as $row) {
            if($row->status=='0')
            {
            $status="<span class='btn btn-success btn-sm btn-grad'>Active</span>";
            $chng="<button class='btn btn-danger btn-sm btn-grad' onclick='changestatus(1,".$row->id.")'><i class='icon-remove'></i> Deactivate </button>";
            }
            else
            {
            $status="<span class='btn btn-danger btn-sm btn-grad'>In-Active</span>";
            $chng="<button class='btn btn-success btn-sm btn-grad' onclick='changestatus(0,".$row->id.")'><i class='icon-ok'></i> Activate </button>";  
            }

            $edit="<button class='btn btn-info btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-pencil icon-white'></i> Edit </button>";

            $view="<button class='btn btn-primary btn-sm btn-grad' onclick='view(".$row->id.")'><i class='icon-eye-open'></i> View </button>";
            
			$bannerval = $this->getBrand($row->brand_id);
			if($row->type == '0')
			{
			$product_type = "New";
			}else if($row->type == '1')
			{
			$product_type = "Used";
			}else
			{
			$product_type = "refurbished";
			}
			
			if( isset($row->mrp) )
			{
			$discount ="";
				$difference = $row->mrp-$row->price;
				if($difference > 0)
				{
					$discount = round(($difference/$row->mrp)*100,1).'%';
				}else
				{
					$discount ="No discount";
				}
			}else
			{
				$discount ="No discount";
			}

            $finalquery=str_replace(" ","~",$tempsql);

            if ($rc) $json .= ',';

            $json .= '{';

            $json .= '"id":"'.$row->id.'","';

            $json .= 'cell":["'.$counter123.'","'.addslashes($row->category).'","'.addslashes($bannerval[0]->name).'","'.addslashes($row->pname).'","'.addslashes($row->sku).'","'.addslashes($product_type).'","'.addslashes($row->mrp).'","'.addslashes($row->price).'","'.addslashes($row->stock).'","'.addslashes(round($row->proceeds*$row->price/100)).'","'.addslashes(round($row->price-($row->proceeds*$row->price/100))).'","'.addslashes($row->price).'","'.addslashes($discount).'" ';
            $json .= ',"'.$status.'","'.$chng.'","'.$edit.'","'.$view.'"]';

            $json .= "}";

            $rc = true;
            $counter123++;
            }
            $json .= "]";
            $json .= "}";
            return $json;
    }


    function countRec($fname,$tname,$where)
    {
        $sql = "SELECT $fname FROM $tname $where";
        $q=$this->db->query($sql);
        return $q->num_rows();
    }

    
    function sellerStatus($db=array())
    {
        $sql="update product set status=".$db['status']." WHERE id IN ('".$db['items']."')";
        $q=$this->db->query($sql); 
        $total = count(explode(",",$db['items'])); 
        $total = $this->db->affected_rows();
        header("Content-type: application/json");
        $json = "";
        $json .= "{";
        $json .= '"query": "'.$sql.'",';
        $json .= '"total": "'.$total.'"';
        $json .= "}";
        return $json;
    }
	
    
    function checkseller($db=array())
    {
        $this->db->where($db);
        $q=$this->db->get('admin');
        if($q->num_rows()>0)
        return $q->result();
        else return 0;
    }
	function getCategoryvalue()
	{
		$this->db->where('status',0);
        $q=$this->db->get('sub_category');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;
	}
    
	function getBrandValue($id)
	{
		$this->db->where('categ_id',$id);
		$q=$this->db->get('product');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;
	}
	
function getBrands($subcateg_id,$id)
{

$sql="select b.* from product as p,brand as b where p.brand_id=b.id and p.status=0  and p.categ_id=$subcateg_id group by p.brand_id";
$q=$this->db->query($sql);
//return $sql;

if($q->num_rows()>0):

$s=$q->result();

$optt='<option value="">--Select Brand--</option>';

foreach($s as $opt):

$select='';

if($id == $opt->id){$select='selected';}

$optt.='<option value="'.$opt->id.'" '.$select.'>'.$opt->name.'</option>';

endforeach;

return $optt;

else:

return '<option value="">No Brand </option>';

endif;

}

	
	function getBrandname($id)
	{
		$this->db->where('categ_id',$id);
		$q=$this->db->get('product');
        if($q->num_rows()>0):
        $b = $q->result();
		$optt='<option value="">--Select Brand--</option>';
        foreach($b as $opt):
		$bid.= $opt->brand_id.',';
        endforeach;
			   $sql = "select * from brand where id in('".rtrim($bid,',')."')";	
				$q=$this->db->query($sql);
				if($q->num_rows()>0)
				$s = $q->result();
				$optt.='<option value="'.$s[0]->id.'">'.$s[0]->name.'</option>';
		   return $optt;
		else:
        return '<option value="">No brand Added</option>';
        endif;
	}	
	
	function getCategory($id)
	{
		$this->db->where('id',$id);
        $q=$this->db->get('sub_category');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;
	}

    function getBrand($id)
    {
        $this->db->where('id',$id);
        $q=$this->db->get('brand');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;
    }

	

	function getSellerDetails($id,$sellername)
	{
		 $sql = "SELECT c.*,p.brand_id brand_id,p.type type,p.sku sku,p.description description,p.warranty warranty,p.home_page_display home_page_display,ps.seller_id seller_id,ps.price price,ps.mrp mrp,ps.stock stock,ps.prod_id prod_id,p.id id,p.status status,ps.seller_id seller_id,p.name name,ps.prod_id prod_id  FROM  product as p join product_seller as ps join sub_category as c WHERE  p.id = ps.prod_id and seller_id = '".$sellername[0]->id."' and p.id='".$id."' and p.categ_id=c.id ORDER BY p.id desc";
		$q=$this->db->query($sql);
        return $q->result();
	}

	
	function getSellerDetailsValues($id,$sellername)
	{
	 $sql = "SELECT c.*, p.brand_id brand_id,p.type type,p.sku sku,p.description description,p.warranty warranty,p.home_page_display home_page_display,ps.seller_id seller_id,ps.price price,ps.mrp mrp,ps.stock stock,ps.prod_id prod_id,p.id id,p.status status,ps.seller_id seller_id,ps.prod_id prod_id,p.categ_id as categ_id,p.name as pname  FROM  product as p join product_seller as ps join sub_category as c WHERE  p.id = ps.prod_id and p.id = '".$id."' and ps.seller_id = '".$sellername[0]->id."' and p.categ_id=c.id ORDER BY p.id desc";
		$q=$this->db->query($sql);
		return $q->result();
	} 
	
	 function getComboList($pid,$cid,$sid)
     {
        $sql='SELECT p.* FROM `product` p, sub_category sc, category c, product_seller ps WHERE p.id=ps.prod_id and ps.seller_id='.$sid[0]->id.' and (p.categ_id=sc.id or p.acc_categ_id=sc.id) and sc.cat_id='.$cid[0]->cat_id.' and ps.prod_id not in ('.$pid[0]->prod_id.')  group by p.id';
        $q=$this->db->query($sql);
        if($q->num_rows()>0){
            $dsp='';
            foreach($q->result() as $s)
            {
                $dsp.='<option value="'.$s->id.'">'.$s->name.'</option>';
            }
            return $dsp;
        }
        else 
        return '';
    }
	
	function getComboListEdit($cid,$sid)
    {
        $sql='SELECT p.* FROM `product` p, sub_category sc, category c, product_seller ps WHERE p.id=ps.prod_id and ps.seller_id='.$sid[0]->id.' and (p.categ_id=sc.id or p.acc_categ_id=sc.id) and sc.cat_id='.$cid[0]->cat_id.'group by p.id';
        $q=$this->db->query($sql);
        if($q->num_rows()>0){
        return $q->result();
        }
        else 
        return '';
    }
	
	/*function getComboid($id,$sid)
	{
		$this->db->where('prod_id',$id);
		$this->db->where('seller_id',$sid[0]->id);
        $q=$this->db->get('product_combo');
        if($q->num_rows()>0)
        return 1;
        else
        return 0;
	}*/
	
	function getComboAdded($pid,$sid)
	{
		$this->db->where('prod_id',$pid);
		$this->db->where('seller_id',$sid[0]->id);
        $q=$this->db->get('product_combo');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;
	}	

	
	function getOfferList()
	{
		$this->db->where('status',0);
        $q=$this->db->get('offer');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;
	}
	
	function AddedOffersList($pid,$sid)
	{
		$this->db->where('prod_id',$pid);
		$this->db->where('seller_id',$sid[0]->id);
        $q=$this->db->get('product_offer');
        if($q->num_rows()>0)
        return $q->result();
        else
        return 0;	
	}
	
	
	function offer_terms_add($db1,$id,$sid)
	{
			$q=$this->db->insert('product_offer',$db1); 
			$total = $this->db->insert_id();
			if($total>0)
			return $total;
			else
			return 0;
	}
	
	function offer_terms_edit($addedid,$db1)
	{
		$this->db->where('id',$addedid);
		$q=$this->db->update('product_offer',$db1);
		if($this->db->affected_rows())
		return 1;
		else
		return 0;
	}	
	
	
		
	function product_combo_add($db2 =array())
	{
		$q=$this->db->insert('product_combo',$db2); 
		$this->db->last_query();
        $total = $this->db->insert_id();
        if($total>0)
        return $total;
        else 
        return 0;
	}
	
	function product_combo_delete($comboid,$sellerid)
	{
	  /*$deleted = $this->db->delete('product_combo', array('prod_id' => $id,'seller_id'=>$sellerid)); 
		if($deleted)
		return 1;
		else
		return 0;*/
		
	/*	$sql = "select * from product_combo where seller_id = ".$sellerid." and prod_id in (".rtrim($id, ",").")";
		$this->db->query($sql);
		if($q->num_rows()>0)
		{*/
			$update = "update product_combo set status =1 where seller_id = ".$sellerid." and prod_id =".$comboid." ";
			$this->db->query($update);
			if($this->db->affected_rows())
			return 1;
			else
			return 0;
		/*}
		*/	
		
	  /*$SQL = "delete from product_combo where seller_id ='".$sellerid."' and prod_id in (".rtrim($id, ",").")";
		$this->db->query($SQL);
		if($this->db->affected_rows()>0)
		return 1;
		else 
		return 0;*/
		
	}
	
	function product_combo_edit($comboid,$db2)
	{
		$this->db->where('prod_id',$comboid);
		$q=$this->db->update('product_combo',$db2);
		if($this->db->affected_rows())
		return 1;
		else
		return 0;
	}
	
	

	function ProductEdit($id,$db=array(),$sellerdetail)
	{	
        $sql="update product_seller set last_price=price, last_mrp=mrp, last_stock=stock where prod_id=? and seller_id=?";
        $this->db->query($sql,array($id , $sellerdetail[0]->id));
		$this->db->where('prod_id',$id);
		$this->db->where('seller_id',$sellerdetail[0]->id);
        $q=$this->db->update('product_seller',$db);
        if($this->db->affected_rows()>0)
        return 1;
        else
        return 0;
	}

    
    function sellerViews($db=array())
    {
            $table='product as p, product_seller as ps, sub_category c';
            $page = $db['page'];
            $rp = $db['rp'];
            $sortname = $db['sortname'];
            $sortorder = $db['sortorder'];

            if(trim($sortname) == ''){
                $sortname = 'p.id';
            }
            if(trim($sortorder) == ''){
                $sortorder = 'desc';
            }
            $ordernuberquery="";

            if(!empty($db['seller']))
            {
                $ordernuberquery.=" and ps.seller_id= '".$db['seller']."' ";
            }
            if(!empty($db['model']))
            {
                $ordernuberquery.=" and p.name LIKE '%".$db['model']."%' ";
            }
            if(!empty($db['subcat']))
            {
                $ordernuberquery.=" and p.categ_id = '".$db['subcat']."'";
            }
            if(!empty($db['sellerfromdate']) && !empty($db['sellertodate']))
            {
                $ordernuberquery.=" and ps.modified_date between '".date('Y-m-d',strtotime($db['sellerfromdate']))."' and '".date('Y-m-d',strtotime($db['sellertodate']))."' ";
            }
            else if(!empty($db['sellerfromdate']) && empty($db['sellertodate']))
            {
                $ordernuberquery.=" and ps.modified_date >= '".date('Y-m-d',strtotime($db['sellerfromdate']))."' ";
            }
            else if(empty($db['sellerfromdate']) && !empty($db['sellertodate']))
            {
                $ordernuberquery.=" and ps.modified_date <= '".date('Y-m-d',strtotime($db['sellertodate']))."' ";
            }
            $where =' WHERE  p.categ_id=c.id and p.id = ps.prod_id'.$ordernuberquery;
            $sort = "ORDER BY $sortname $sortorder";
            if (!$page) $page = 1;
            if (!$rp) $rp = 10;
            $start = (($page-1) * $rp);
            $limit = "LIMIT $start, $rp";
             $sql = "SELECT p.brand_id brand_id,p.name name,ps.seller_id seller_id,ps.price price,ps.mrp mrp,ps.stock stock, ps.last_price lprice,ps.last_mrp lmrp,ps.last_stock lstock, ps.modified_date as md, ps.prod_id prod_id,p.id id,p.status status, c.name as category,c.proceeds  FROM  $table  $where $sort $limit";
            $result = $this->db->query($sql);
            $tempsql=" ".$table." ".$where." ".$sort." ".$limit;
            $total = $this->countRecv('p.id',$table,$where);
            header("Content-type: application/json");
            $json = '';
            $json .= '{';
            $json .= '"page": '.$page.',';
            $json .= '"total": '.$total.',';
            $json .= '"rows": [';
            $rc = false;
            $counter123=1;            
            foreach($result->result() as $row) {
            $brandval = $this->getBrand($row->brand_id);
            $finalquery=str_replace(" ","~",$tempsql);
            if ($rc) $json .= ',';
            $json .= '{';
            $json .= '"id":"'.$row->id.'","';
            $json .= 'cell":["'.$counter123.'","'.addslashes($row->category).'","'.addslashes($brandval[0]->name).'","'.addslashes($row->name).'","'.addslashes($row->stock).'","Rs. '.addslashes($row->price).'","'.addslashes($row->proceeds).'%","Rs. '.addslashes($row->proceeds*$row->price/100).'","Rs. '.addslashes($row->price-($row->proceeds*$row->price/100)).'","Rs. '.addslashes($row->price).'","Rs. '.addslashes($row->mrp).'","'.addslashes($row->lstock).'","Rs. '.addslashes($row->lprice).'","Rs. '.addslashes($row->lmrp).'","'.addslashes($row->md).'" ]';            
            $json .= "}";
            $rc = true;
            $counter123++;
            }
            $json .= "]";
            $json .= "}";
            return $json;
    }
    
    
    function dealerViews($db=array())
    {
            $table='admin';
            $page = $db['page'];
            $rp = $db['rp'];
            $sortname = $db['sortname'];
            $sortorder = $db['sortorder'];

            if(trim($sortname) == ''){
                $sortname = 'id';
            }
            if(trim($sortorder) == ''){
                $sortorder = 'desc';
            }
            $ordernuberquery=" login_type='S'";

            
            if(!empty($db['city']))
            {
                $ordernuberquery.=" and city LIKE '%".$db['city']."%' ";
            }
            if(!empty($db['pan']))
            {
                $ordernuberquery.=" and pannumber = '".$db['pan']."'";
            }
            
            $where =' WHERE '.$ordernuberquery;
            $sort = "ORDER BY $sortname $sortorder";
            if (!$page) $page = 1;
            if (!$rp) $rp = 10;
            $start = (($page-1) * $rp);
            $limit = "LIMIT $start, $rp";
            $sql = "SELECT *  FROM  $table  $where $sort $limit";
            $result = $this->db->query($sql);
            $tempsql=" ".$table." ".$where." ".$sort." ".$limit;
            $total = $this->countRecv('id',$table,$where);
            header("Content-type: application/json");
            $json = '';
            $json .= '{';
            $json .= '"page": '.$page.',';
            $json .= '"total": '.$total.',';
            $json .= '"rows": [';
            $rc = false;
            $counter123=1;            
            foreach($result->result() as $row) {
            $views="<button class='btn btn-primary btn-sm btn-grad' onclick='view(".$row->id.")'><i class='icon-eye-open'></i> View </button>";
            $finalquery=str_replace(" ","~",$tempsql);
            if ($rc) $json .= ',';
            $json .= '{';
            $json .= '"id":"'.$row->id.'","';
            $json .= 'cell":["'.$counter123.'","'.addslashes($row->company_name).'","'.addslashes($row->name).'","'.addslashes($row->email).'","'.addslashes($row->phone).'","'.addslashes($row->city).'","'.addslashes($row->pannumber).'","'.$views.'" ]';            
            $json .= "}";
            $rc = true;
            $counter123++;
            }
            $json .= "]";
            $json .= "}";
            return $json;
    }

    

    function countRecv($fname,$tname,$where)
    {
        $sql = "SELECT $fname FROM $tname $where";
        $q=$this->db->query($sql);
        return $q->num_rows();
    }
	

}
?>