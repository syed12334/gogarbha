<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class contactus extends CI_Controller {
   
    protected $data;
    public function __construct()
    {
        parent::__construct();
        
        $this->load->helper('utility_helper');
        date_default_timezone_set('Asia/Kolkata');        
        $this->load->model('home_db');
        $this->load->model('blog_db');


        $this->data['UserDetail'] = '';
        if($this->session->userdata('atpUserDetail'))
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
        $this->data['settings'] = $settings;
        $this->data['call']=$call;
        $this->data['emlid']=$emlid;
        $this->data['time']=$time;
        $this->data['social']= $this->home_db->sqlExecute('select * from social_links');
        $this->data['header']=$this->load->view('header', $this->data , TRUE);
        $this->data['common']=$this->load->view('commoncode', $this->data , TRUE);
        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
        
        
    }
    
    function index(){


       $this->data['info'] = $this->blog_db->getcontent1("contactus","id","1","","id","DESC");


        $this->data['footer']=$this->load->view('footer',  $this->data , TRUE);
		$this->load->view('contact-us',$this->data);

	}

    function mail(){

        $name = $this->input->post('name');
        $email = $this->input->post('email');
        $phone = $this->input->post('mobile');
        $message = $this->input->post('message');


        $body='
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master Pools</title>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-family:Arial,Helvetica,sans-serif;font-size:12px;padding:10px 0px; ">
<tbody>
<tr>
<td bgcolor="#f2f2f2"><table width="690" border="0" align="center" cellpadding="5" cellspacing="0">
<tbody>
<tr>
<td width="670" valign="top"><table width="673" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td><table width="100%" border="0" cellspacing="0" cellpadding="0"><tbody>



                <tr>
                    <td>
						<table width="100%" border="0" cellspacing="0" cellpadding="5" style="margin-bottom:15px;" >
                        <tbody>
                        <tr>
                            <td height="20" align="left" valign="bottom">
                                <span style="text-decoration:none;font-weight:bold; color:#666;">Hi </span>


                                </td>
                         </tr>
                    </tbody></table>
                   </td>
                </tr>


				<tr>
                        	<td><table width="100%" border="0" cellspacing="0" cellpadding="5" style="background-color:#fff; border-right:3px solid #e4e4e4;border-bottom:3px solid #e4e4e4;margin-bottom:10px">
                            <tbody><tr>
                                <td width="25%" align="left" >
                                    <p style="font-weight:bold;color:#1833e6; padding-left: 15px; border-right:1px dotted  #1833e6;">Name  </p></td>
                                <td width="75%" align="left" valign="middle">
                                    <p style="padding:0px 8px;color:#000;font-weight:bold;ext-align:left"> '.$name.'</p></td>
							                                    </tr>
							                                    </tbody></table></td>
				</tr>


                    <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="5" style="background-color:#fff; border-right:3px solid #e4e4e4;border-bottom:3px solid #e4e4e4;margin-bottom:10px">
                            <tbody><tr>
                                <td width="25%" align="left" >
                                    <p style="font-weight:bold;color:#1833e6; padding-left: 15px; border-right:1px dotted  #1833e6;">Email Id </p></td>
                                <td width="75%" align="left" valign="middle">
                                    <p style="padding:0px 8px;color:#000;font-weight:bold;ext-align:left"> '.$email.'</p></td>
                            </tr>
                        </tbody></table></td>
                    </tr>

                    <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="5" style="background-color:#fff; border-right:3px solid #e4e4e4;border-bottom:3px solid #e4e4e4;margin-bottom:10px">
                            <tbody><tr>
                                <td width="25%" align="left" >
                                    <p style="font-weight:bold;color:#1833e6; padding-left: 15px; border-right:1px dotted  #1833e6;">Mobile No </p></td>
                                <td width="75%" align="left" valign="middle">
                                    <p style="padding:0px 8px;color:#000;font-weight:bold;ext-align:left">'.$phone.'</p></td>
                            </tr>
                        </tbody></table></td>
                    </tr>

                    <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="5" style="background-color:#fff; border-right:3px solid #e4e4e4;border-bottom:3px solid #e4e4e4;margin-bottom:10px">
                            <tbody><tr>
                                <td width="25%" align="left" >
                                    <p style="font-weight:bold;color:#1833e6; padding-left: 15px; border-right:1px dotted  #1833e6;">Message </p></td>
                                <td width="75%" align="left" valign="middle">
                                    <p style="padding:0px 8px;color:#000;font-weight:bold;ext-align:left">'.$message.'</p></td>
                            </tr>
                        </tbody></table></td>
                    </tr>

            </tbody></table>

            </td>
        </tr>


    <tr>
        <td align="center" valign="middle">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle">&nbsp;</td>
    </tr>

</tbody></table></td>
<td width="2" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size:11px">
</table></td>
</tr>
</tbody></table></td>
</tr>

<tr>
<td align="left" style="font-size:11px; color:#FFFFFF;">sometext</td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
</tbody></table></td>
</tr>
</tbody></table>
</body>
</html>';






        $this->load->library('email');




        $this->email->clear();
        $config['mailtype'] = "html";
        $this->email->initialize($config);
        $this->email->set_newline("\r\n");
        $this->email->from('noreply@oiishee.com', 'Contact Us');

        $this->email->to("info@oiishee.com");

        $this->email->subject('Contact Request By '.$name);
        $this->email->message($body);

        if($this->email->send()){
            echo "1";

        }else{
            echo "0";
        }


    }

}

?>