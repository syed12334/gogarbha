<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class web_db extends CI_Model{
	
	
	
	function getStockProducts($products,$user_type=1){
		
		$sel= "selling_price,sel_dollar";
		if($user_type == 2)
		{
			$sel= "b2b_selling_price as selling_price,b2b_sel_dollar as sel_dollar";
		}
		$sql = "Select p.id as pid, p.name as pname,p.page_url as ppage_url, p.pcode,
				ps.id as psid,ps.size_id, ps.mrp,ps.selling_price,ps.sel_dollar, c.page_url categ_page_url,ps.stock,
				IF(ps.size_id=0, '', s.name) as  sname,pi.image_path,(round(((ps.mrp-ps.selling_price)/ps.mrp)*100)) as discount,ps.minimum_buy				
				From product_sizes ps
				LEFT JOIN sizes s ON (ps.size_id=0 or ps.size_id=s.id)
				LEFT JOIN products p ON ps.pid=p.id
				
				LEFT JOIN category c ON c.id=p.cat_id		
				LEFT JOIN product_images pi ON ps.id=pi.pid		
							 
				Where  ps.id in ($products)
                group by ps.id ";
	    	$q = $this->db->query($sql); 
			$res = $q->result();
			return $res;
	}
	
	function saveCart($user_type,$type, $hid){
		
		$product = $this->home_db->sqlExecute("select c.name as cname,c.page_url as cpage_url,p.id,p.name as title,p.page_url,ps.mrp,ps.selling_price,s.name as sname,pi.image_path,pi.thumb,ps.stock from products p left join product_sizes ps on p.id=ps.pid left join product_images pi on p.id=pi.pid left join sizes s on s.id =ps.size_id left join category c on c.id =p.cat_id where p.id=".$hid."");
		//echo $this->db->last_query();exit;
		$min_qty = ($user_type ==2 && $product[0]->minimum_buy !=0) ?  $product[0]->minimum_buy: 1;
    	if(is_array($product)){
		$selling_price = $product[0]->selling_price;
		$sel_dollar = $product[0]->sel_dollar;
		if($user_type ==2 )
		{
			$selling_price = $product[0]->b2b_selling_price;
			$sel_dollar = $product[0]->b2b_sel_dollar;
		}
		$dat = array(
    				'id'      	 => $hid,
    				'qty'     	 => $min_qty,
    				'image'   	 => cdn_url().$product[0]->image_path,
    				'price'   	 => $selling_price,
					'discount'   => $this->home_db->discount($product[0]->mrp,$selling_price),
					'mrp'   	 => $product[0]->mrp,
					'sel_dollar' => $sel_dollar,
    				'pcode'   	 => $product[0]->pcode,
    				'name'    	 => $product[0]->pname,
    				'pid'    	 => $product[0]->id,
    				'purl'    	 => $product[0]->ppage_url,
    				'stock'    	 => $product[0]->stock,
    				'sizeid'     => $product[0]->size_id,
    				'sname'    	 => $product[0]->sname,
    				'color'    	 => $product[0]->clname,
    				'material'    	 => $product[0]->mname,
    				'plink'    	 => base_url().'product/'.$product[0]->ppage_url,
    				'options' => array('categ' => $type),
					'user_type'=>$user_type,
					'dmsg'=>''
    		);
    	
    	return $this->cart->insert($dat);
		}
	}
	
	function saveCartDB($psid, $qty, $user_id){
		if($user_id != "" && intval($qty) > 0){	
    		$check_cart = $this->home_db->getRecords("cart_products", array("user_id"=>$user_id, "prodsize_id"=>$psid), "id");
    		if(count($check_cart) == 0){
		    	$db = array(
				        'user_id'=>$user_id,
				        'created_date'=>date('Y-m-d H:i:s'),
				        'prodsize_id'=>$psid,
			    		'qty'=>$qty
			          );
		        $this->home_db->insertRecord('cart_products',$db);
    		}
    	}
	}
	
	function saveUserCart($user_id,$user_type=1){
		$check_cart = $this->home_db->getRecords("cart_products", array("user_id"=>$user_id), "prodsize_id, qty");
		$cart_items_db = $cart_items_det = $cart_items = array();
		if(count($check_cart)){// capture all items from db	
			foreach ($check_cart as $c){
				$cart_items_det[$c->prodsize_id] = $c->qty;
				$cart_items_db[] = $c->prodsize_id;
			}
		}
		
		foreach ($this->cart->contents() as $items)
    	{
    		$rowid = $items['rowid'];
    		$id = $items['id'];
    		if(array_key_exists($id, $cart_items_det)){
    			$db = array(
    				'qty'=>$items['qty'],
    				'modified_date'=>date('Y-m-d H:i:s')
    			);
    			$this->home_db->updateRecord('cart_products', $db,array("user_id"=>$user_id, "prodsize_id"=>$id));
    			unset($cart_items_db[$id]);
    		}
    		else{
    			$this->web_db->saveCartDB($id, $items['qty'], $user_id);
    		}    		
    	}
    	
		if(count($cart_items_db)){// items which are not in cart fetch and save in cart
	    	$product = $this->web_db->getStockProducts(implode(",", $cart_items_db),$user_type);
	    	//echo $this->db->last_query();exit;
			foreach($product as $p){
    			$this->web_db->saveCart($p, $cart_items_det[$p->psid]);		    		
    		}
    	}		
	}
	
	function update_UserCart($user_id){
		$users = $this->home_db->getRecords("users", array("id"=>$user_id), "user_type");
	
		$user_type = count($users) ? $users[0]->user_type : '1' ;
		if($user_id != ""){
			$check_cart = $this->home_db->getRecords("cart_products", array("user_id"=>$user_id), "prodsize_id, qty");
			$cart_items_db = $cart_items_det = $cart_items = array();
			if(count($check_cart)){// capture all items from db	
				foreach ($check_cart as $c){
					$cart_items_det[$c->prodsize_id] = $c->qty;
					$cart_items_db[$c->prodsize_id] = $c->prodsize_id;
				}
			}
			if(count($check_cart) && count($this->cart->contents()) == 0){// if cart is empty then fill cart items with DB		
				$product = $this->web_db->getStockProducts(implode(",", $cart_items_db),$user_type);
				foreach($product as $p){
	    			$this->web_db->saveCart($p, $cart_items_det[$p->psid]);		    		
	    		}
			}
			else if(count($this->cart->contents())){// if cart has some items then check with the items from DB
				foreach ($this->cart->contents() as $items)
		    	{
		    		$rowid = $items['rowid'];
		    		$id = $items['id'];
		    		if(array_key_exists($id, $cart_items_db)){
		    			$db = array(
		    				'qty'=>$cart_items_det[$id],
		    				'modified_date'=>date('Y-m-d H:i:s')
		    			);
		    			$this->home_db->updateRecord('cart_products', $db,array("user_id"=>$user_id, "prodsize_id"=>$id));
		    			unset($cart_items_db[$id]);
		    		}
		    		else{
		    			//$this->web_db->saveCartDB($id, $items['qty'], $user_id);
		    			$dat=array(
				    			'rowid'=>$rowid,
				    			'qty'=>'0'
				    		);
				    	$this->cart->update($dat);
		    		}
		    		
		    	}
		    	if(count($cart_items_db)){// items which are not in cart fetch and save in cart
			    	$product = $this->web_db->getStockProducts(implode(",", $cart_items_db),$user_type);
					foreach($product as $p){
		    			$this->web_db->saveCart($p, $cart_items_det[$p->psid]);		    		
		    		}
		    	}
			}
		}
	}
	
	
	
	
		
	function encode($string) {
		$enco_categ=$string;
		$enco_categ=(double)$enco_categ*525325.24;
		return $enco_categ=base64_encode($enco_categ);
	}
	function decode($string) {
		$re=base64_decode($string);
    	return $subid=(double)$re/525325.24;
	}
	
	 function checkwishlist($db=array()){
    	$this->db->where('pid',$db['pid']);
    	$this->db->where('user_id',$db['user_id']);
    	//$this->db->where('categ',$db['categ']);
    	$q=$this->db->get('wishlist');
    	return $q->num_rows();
    }
	
	


	
}
?>