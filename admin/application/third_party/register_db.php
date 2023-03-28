<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class register_db extends CI_Model{

	function registeradmin($db=array()){

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

            

            if($db['query']!=''){

            $where = ' WHERE login_type="A" and  '.$db['qtype'].' LIKE "%'.$db['query'].'%"';

            } else {

            $where =' WHERE login_type="A"';

            }

            if($db['letter_pressed']!=''){

            $where = ' WHERE  login_type="A" and '.$db['qtype'].' LIKE "'.$db['letter_pressed'].'%"';    

            }

            if($db['letter_pressed']=='#'){

            $where = ' WHERE  login_type="A" and '.$db['qtype'].' REGEXP "[[:digit:]]" ';

            }

            $sort = "ORDER BY $sortname $sortorder";

            

            if (!$page) $page = 1;

            if (!$rp) $rp = 10;

            

            $start = (($page-1) * $rp);

            

            $limit = "LIMIT $start, $rp";

            

            $sql = "SELECT * FROM  $table  $where $sort $limit";

            

            

            $result = $this->db->query($sql);

            $tempsql=" ".$table." ".$where." ".$sort." ".$limit;

            

            $total = $this->countRec('id',$table,$where);

            

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

            $view="<button class='btn btn-primary btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-eye-open'></i> View </button>";

            

            $finalquery=str_replace(" ","~",$tempsql);

            if ($rc) $json .= ',';

            $json .= '{';

            $json .= '"id":"'.$row->id.'","';

            $json .= 'cell":["'.$counter123.'","'.addslashes($row->name).'","'.addslashes($row->email).'","'.addslashes($row->phone).'"';

            $json .= ',"'.$status.'","'.$chng.'","'.$edit.'"]';

            

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

    

    function adminStatus($db=array())

    {

        $sql="update admin set status=".$db['status']." WHERE id IN ('".$db['items']."')";

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

    

    

    function adminSave($db=array(),$id)

    {

        $this->db->where('id', $id);

        $q=$this->db->update('admin', $db); 

        $total = $this->db->affected_rows();

        if($total>0)

        return 1;

        else 

        return 0;

    }

    


    function adminAdd($db=array())
    {
        $q=$this->db->insert('admin',$db); 
		return $this->db->last_query();
       $total = $this->db->insert_id();
        if($total>0)
        return $total;
        else 
        return 0;
    }

    function getcontent($id)

    {

        $this->db->where('id',$id);

        $q=$this->db->get('admin');

        if($q->num_rows()>0)

        return $q->result();

        else

        return 0;

    }

    

    function sendmailer($from, $fromname, $to, $subject, $body){

    	$this->load->library('email');

    	$config = array (

    			'mailtype' => 'html',

    			'charset'  => 'utf-8',

    			'priority' => '1'

    	);

    	$this->email->initialize($config);

    	$this->email->from($from, $fromname);

    	$this->email->to($to);

    	$this->email->subject($subject);

    	$this->email->message($body);

    	$sent = $this->email->send();

    	return $sent;

    }

    

    

    function registerseller($db=array()){

    

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

    

    	if($db['query']!=''){

    		$where = ' WHERE login_type="S" and  '.$db['qtype'].' LIKE "%'.$db['query'].'%"';

    	} else {

    		$where =' WHERE login_type="S"';

    	}

    	if($db['letter_pressed']!=''){

    		$where = ' WHERE  login_type="S" and '.$db['qtype'].' LIKE "'.$db['letter_pressed'].'%"';

    	}

    	if($db['letter_pressed']=='#'){

    		$where = ' WHERE  login_type="S" and '.$db['qtype'].' REGEXP "[[:digit:]]" ';

    	}

    	$sort = "ORDER BY $sortname $sortorder";

    

    	if (!$page) $page = 1;

    	if (!$rp) $rp = 10;

    

    	$start = (($page-1) * $rp);

    

    	$limit = "LIMIT $start, $rp";

    

    	$sql = "SELECT * FROM  $table  $where $sort $limit";

    

    

    	$result = $this->db->query($sql);

    	$tempsql=" ".$table." ".$where." ".$sort." ".$limit;

    

    	$total = $this->countRec('id',$table,$where);

    

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

    

    		$finalquery=str_replace(" ","~",$tempsql);

    		if ($rc) $json .= ',';

    		$json .= '{';

    		$json .= '"id":"'.$row->id.'","';

    		$json .= 'cell":["'.$counter123.'","'.addslashes($row->company_name).'","'.addslashes($row->name).'","'.addslashes($row->email).'","'.addslashes($row->phone).'"';

    		$json .= ',"'.$status.'","'.$chng.'","'.$edit.'","'.$view.'"]';

    

    		$json .= "}";

    		$rc = true;

    		$counter123++;

    	}

    	$json .= "]";

    	$json .= "}";

    	return $json;

    }

    

    

    function myprofilesa_table($db=array()){

    

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

    

    	if($db['query']!=''){

    		$where = ' WHERE login_type="SA" and email="'.$db['username'].'" and  '.$db['qtype'].' LIKE "%'.$db['query'].'%"';

    	} else {

    		$where =' WHERE login_type="SA" and email="'.$db['username'].'"';

    	}

    	if($db['letter_pressed']!=''){

    		$where = ' WHERE  login_type="SA" and email="'.$db['username'].'" and '.$db['qtype'].' LIKE "'.$db['letter_pressed'].'%"';

    	}

    	if($db['letter_pressed']=='#'){

    		$where = ' WHERE  login_type="SA" and email="'.$db['username'].'" and '.$db['qtype'].' REGEXP "[[:digit:]]" ';

    	}

    	$sort = "ORDER BY $sortname $sortorder";

    

    	if (!$page) $page = 1;

    	if (!$rp) $rp = 10;

    

    	$start = (($page-1) * $rp);

    

    	$limit = "LIMIT $start, $rp";

    

    	$sql = "SELECT * FROM  $table  $where $sort $limit";

    

    

    	$result = $this->db->query($sql);

    	$tempsql=" ".$table." ".$where." ".$sort." ".$limit;

    

    	$total = $this->countRec('id',$table,$where);

    

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

    		}

    		else

    		{

    			$status="<span class='btn btn-danger btn-sm btn-grad'>In-Active</span>";

    		}

    

    		$chng="<button class='btn btn-warning btn-sm btn-grad' onclick='changepassword(".$row->id.")'><i class='icon-lock'></i> change password </button>";

    		$edit="<button class='btn btn-info btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-pencil icon-white'></i> Edit </button>";

    		$view="<button class='btn btn-primary btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-eye-open'></i> View </button>";

    

    		$finalquery=str_replace(" ","~",$tempsql);

    		if ($rc) $json .= ',';

    		$json .= '{';

    		$json .= '"id":"'.$row->id.'","';

    		$json .= 'cell":["'.$counter123.'","'.addslashes($row->name).'","'.addslashes($row->email).'","'.addslashes($row->phone).'"';

    		$json .= ',"'.$status.'","'.$chng.'","'.$edit.'"]';

    

    		$json .= "}";

    		$rc = true;

    		$counter123++;

    	}

    	$json .= "]";

    	$json .= "}";

    	return $json;

    }

    

    function checkoldpass($id,$old)
    {
    	$sql = "SELECT * FROM admin where id='".$id."' and password='".$old."'";

    	$q=$this->db->query($sql);

    	if($q->num_rows())

    	{

    		return 1;

    	}

    	else

    	{

    		return 0;

    	}

    }

	

    function myprofilea_table($db=array()){

    

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

    

    	if($db['query']!=''){

    		$where = ' WHERE login_type="A" and email="'.$db['username'].'" and  '.$db['qtype'].' LIKE "%'.$db['query'].'%"';

    	} else {

    		$where =' WHERE login_type="A" and email="'.$db['username'].'"';

    	}

    	if($db['letter_pressed']!=''){

    		$where = ' WHERE  login_type="A" and email="'.$db['username'].'" and '.$db['qtype'].' LIKE "'.$db['letter_pressed'].'%"';

    	}

    	if($db['letter_pressed']=='#'){

    		$where = ' WHERE  login_type="A" and email="'.$db['username'].'" and '.$db['qtype'].' REGEXP "[[:digit:]]" ';

    	}

    	$sort = "ORDER BY $sortname $sortorder";

    

    	if (!$page) $page = 1;

    	if (!$rp) $rp = 10;

    

    	$start = (($page-1) * $rp);

    

    	$limit = "LIMIT $start, $rp";

    

    	$sql = "SELECT * FROM  $table  $where $sort $limit";

    

    

    	$result = $this->db->query($sql);

    	$tempsql=" ".$table." ".$where." ".$sort." ".$limit;

    

    	$total = $this->countRec('id',$table,$where);

    

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

    		}

    		else

    		{

    			$status="<span class='btn btn-danger btn-sm btn-grad'>In-Active</span>";

    		}

    

    		$chng="<button class='btn btn-info btn-sm btn-grad' onclick='changepassword(".$row->id.")'><i class='icon-pencil icon-white'></i> change password </button>";

    		$edit="<button class='btn btn-info btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-pencil icon-white'></i> Edit </button>";

    		$view="<button class='btn btn-primary btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-eye-open'></i> View </button>";

    

    		$finalquery=str_replace(" ","~",$tempsql);

    		if ($rc) $json .= ',';

    		$json .= '{';

    		$json .= '"id":"'.$row->id.'","';

    		$json .= 'cell":["'.$counter123.'","'.addslashes($row->name).'","'.addslashes($row->email).'","'.addslashes($row->phone).'"';

    		$json .= ',"'.$status.'","'.$chng.'","'.$edit.'"]';

    

    		$json .= "}";

    		$rc = true;

    		$counter123++;

    	}

    	$json .= "]";

    	$json .= "}";

    	return $json;

    }

    

    function myprofiles_table($db=array()){

    

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

    

    	if($db['query']!=''){

    		$where = ' WHERE login_type="S" and email="'.$db['username'].'" and  '.$db['qtype'].' LIKE "%'.$db['query'].'%"';

    	} else {

    		$where =' WHERE login_type="S" and email="'.$db['username'].'"';

    	}

    	if($db['letter_pressed']!=''){

    		$where = ' WHERE  login_type="S" and email="'.$db['username'].'" and '.$db['qtype'].' LIKE "'.$db['letter_pressed'].'%"';

    	}

    	if($db['letter_pressed']=='#'){

    		$where = ' WHERE  login_type="S" and email="'.$db['username'].'" and '.$db['qtype'].' REGEXP "[[:digit:]]" ';

    	}

    	$sort = "ORDER BY $sortname $sortorder";

    

    	if (!$page) $page = 1;

    	if (!$rp) $rp = 10;

    

    	$start = (($page-1) * $rp);

    

    	$limit = "LIMIT $start, $rp";

    

    	$sql = "SELECT * FROM  $table  $where $sort $limit";

    

    

    	$result = $this->db->query($sql);

    	$tempsql=" ".$table." ".$where." ".$sort." ".$limit;

    

    	$total = $this->countRec('id',$table,$where);

    

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

    		}

    		else

    		{

    			$status="<span class='btn btn-danger btn-sm btn-grad'>In-Active</span>";

    		}

    

    		$chng="<button class='btn btn-info btn-sm btn-grad' onclick='changepassword(".$row->id.")'><i class='icon-pencil icon-white'></i> change password </button>";

    		$edit="<button class='btn btn-info btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-pencil icon-white'></i> Edit </button>";

    		$view="<button class='btn btn-primary btn-sm btn-grad' onclick='edit(".$row->id.")'><i class='icon-eye-open'></i> View </button>";

    

    		$finalquery=str_replace(" ","~",$tempsql);

    		if ($rc) $json .= ',';

    		$json .= '{';

    		$json .= '"id":"'.$row->id.'","';

    		$json .= 'cell":["'.$counter123.'","'.addslashes($row->name).'","'.addslashes($row->email).'","'.addslashes($row->phone).'"';

    		$json .= ',"'.$status.'","'.$chng.'","'.$edit.'"]';

    

    		$json .= "}";

    		$rc = true;

    		$counter123++;

    	}

    	$json .= "]";

    	$json .= "}";

    	return $json;

    }
    
    
    
    
    function getcust($db=array()){

        

            $table='signup_details';

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

            

            if($db['query']!=''){

            $where = ' WHERE  '.$db['qtype'].' LIKE "%'.$db['query'].'%"';

            } else {

            $where ='';

            }
            $sort = "ORDER BY $sortname $sortorder";

            

            if (!$page) $page = 1;

            if (!$rp) $rp = 10;

            $start = (($page-1) * $rp);

            $limit = "LIMIT $start, $rp";

            $sql = "SELECT * FROM  $table  $where $sort $limit";

            $result = $this->db->query($sql);

            $tempsql=" ".$table." ".$where." ".$sort." ".$limit;

            $total = $this->countRecc('id',$table,$where);

            

            header("Content-type: application/json");



            $json = '';

            $json .= '{';

            $json .= '"page": '.$page.',';

            $json .= '"total": '.$total.',';

            $json .= '"rows": [';

            $rc = false;

            $counter123=1;
            foreach($result->result() as $row) {

            $finalquery=str_replace(" ","~",$tempsql);

            if ($rc) $json .= ',';

            $json .= '{';

           $json .= '"id":"'.$row->id.'^'.$finalquery.'","';

            $json .= 'cell":["'.$counter123.'","'.addslashes($row->name).'","'.addslashes($row->emailid).'","'.addslashes($row->register_date).'"]';

          
            $json .= "}";

            $rc = true;

            $counter123++;

            }

            $json .= "]";

            $json .= "}";

            return $json;

    }

    

    function countRecc($fname,$tname,$where)

    {

        

        $sql = "SELECT $fname FROM $tname $where";

        $q=$this->db->query($sql);

        return $q->num_rows();

    }

}

?>