<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST,DELETE,UPDATE");
header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");
header('Content-type: application/json; charset=UTF-8');
class Api extends CI_Controller { 
	public function __construct() {
			parent::__construct();	
			date_default_timezone_set('Asia/Kolkata');
			$this->load->model('home_db');
		}
	public function templedetails() {
		if(!empty($_POST['name']) && !empty($_POST['mobile'])) {
			//echo "<pre>";print_r($_POST);print_r($_FILES);exit;
			$name = trim(preg_replace('!\s+!', '',$this->input->post('name')));
			$mobile = trim(preg_replace('!\s+!', '',$this->input->post('mobile')));
			$latitude = $this->input->post('latitude');
			$longitude = $this->input->post('longitude');
			$address = $this->input->post('address');
			$getMobile = $this->home_db->getRecords('templedetails',['mobile'=>$mobile],'*');
			if(count($getMobile) >0) {
				$result = array('status'=>'failure','msg'=>'Mobile number already exists try another');
				echo json_encode($result);
			}else {
				$db['name'] = $name;
					if(preg_match("/[0-9]{10}/",$mobile)) {
				 		$db['mobile'] = $mobile;
				 	}else {
				 		$result = array('status'=>'failure','msg'=>'Enter 10 digit phone number');
				 		echo json_encode($result);exit;
				 	}
				if(!empty($_FILES['photos']['name'])) {
				 	if(count($_FILES['photos']['name']) > 0 && count($_FILES['photos']['name']) <=4) {
					  }else {
					 			$result = array('status'=>'failure','msg'=>'Only 4 images are allowed to upload');
				 				echo json_encode($result);exit;
				 			}
				 		}
				 	$db['lat'] = $latitude;
				 	$db['lng'] = $longitude;
				 	$db['address'] = $address;
				 	$db['created_at'] = date('Y-m-d H:i:s');
				 	$in = $this->home_db->insertRecord('templedetails',$db);
				 	if($in >0) {
				 		if(!empty($_FILES['photos']['name'])) {
				 			if(count($_FILES['photos']['name']) > 0 && count($_FILES['photos']['name']) <=4) {
				 				 $count = count($_FILES['photos']['name']);  
      							for($i=0;$i<$count;$i++){  
							        if(!empty($_FILES['photos']['name'][$i])){  
							          $_FILES['photo']['name'] = $_FILES['photos']['name'][$i];  
							          $_FILES['photo']['type'] = $_FILES['photos']['type'][$i];  
							          $_FILES['photo']['tmp_name'] = $_FILES['photos']['tmp_name'][$i];  
							           $_FILES['photo']['error'] = $_FILES['photos']['error'][$i];  
							          $_FILES['photo']['size'] = $_FILES['photos']['size'][$i];  
							          $config['upload_path'] = 'assets/templeimages/';   
							          $config['allowed_types'] = 'jpg|jpeg|png|gif';  
							          $config['max_size'] = '100000000000';  
							          $ext = pathinfo($_FILES["photos"]['name'][$i], PATHINFO_EXTENSION);
                                        $new_name = "gog".rand(11111,99999).'.'.$ext; 
                                        $config['file_name'] =  $new_name;
							          $this->load->library('upload',$config);  
							           $this->upload->initialize($config);  
							          if($this->upload->do_upload('photo')){  
							            $uploadData = $this->upload->data();  
							            $filename = 'assets/templeimages/'.$uploadData['file_name'];
							            $dbs['tid'] = $in;
							            $dbs['gallery'] = $filename;
							            $this->home_db->insertRecord('temple_photos',$dbs);
							          }  
							        }  
						      	}  
					 		}else {
					 			$result = array('status'=>'failure','msg'=>'Only 4 images are allowed to upload');
				 				echo json_encode($result);
				 			}
				 		}
				 		$result = array('status'=>'success','msg'=>'Inserted successfully');
				 		echo json_encode($result);	
				 	}else {
				 		$result = array('status'=>'failure','msg'=>'Error in inserting');
				 		echo json_encode($result);
				 	}
				}
			}
			else {
				$result = array('status'=>'failure','msg'=>'Required fields is missing');
				echo json_encode($result);
			}
	}
}
?>
