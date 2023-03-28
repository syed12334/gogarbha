<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?php echo title;?></title>
</head>

<body>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-family:Arial, Helvetica, sans-serif; color:#595959; border:10px solid #f2a20c">
	<tr>
    	<td style="padding:10px 30px 30px 30px">
        	
            <table width="100%">
            	<tr>
                    <td colspan="2">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-bottom:1px solid #e6e6e6">
                            <tr>
                                <td style="padding:10px; width:115px; height:105px"><img src="http://13.235.149.175//assets/images/Gogarbha_Logo_White.svg" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <p> Dear <?php echo $name?>, </p>
                        <p> Your Gogarbha Account Details are below:<br> <br>
			                
			                Your Username : <b><?php echo $emailid;?></b><br>
			                Your Password : <b><?php echo $password;?></b><br><br>
                		</p>
                        
                        <br />
                        <p>To Login <a href="<?php echo base_url().'login';?>">Click Here</a></p>
                    </td>
                </tr>
                
            </table>
            
        </td>
    </tr>
</table>

</body>
</html>
