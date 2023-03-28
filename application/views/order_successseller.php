<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?php echo title;?></title>
</head>

<body>

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="font-family:Arial, Helvetica, sans-serif; color:#595959; border:10px solid #e6e6e6">
	<tr>
    	<td style="padding:10px 30px 30px 30px">
        	
            <table>
            	<tr>
                    <td colspan="2">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-bottom:1px solid #e6e6e6">
                            <tr>
                                <td style="padding:10px; width:115px; height:105px"><img src="<?php echo asset_url()?>images/logo.png" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <p> Dear Admin, </p>
                        <p> <?php 
                        	if($msg == "success"){?>
                        		<p> New Order has been placed successfully and details are as below. </p>
                        	<?php 
                            }
                            else{?>
                        		<p> Payment has been failed and details are as below. </p>
                        	<?php }?>
                        	</p>
                        <p>
                           Please find the order summary below,
                        </p>
                       
                        <br />
                        
                        <span style="border:1px solid #e6e6e6; background:#fafafa; padding:10px; ">
                        	Order No: <strong style="color:#333"><?php echo $orders[0]->orderid?> </strong> |
                            Ordered Date <strong style="color:#333"><?php $date=date_create($orders[0]->ordered_date);echo date_format($date,"M d, Y H:i a");?> IST)</strong>
                        </span>
                    </td>
                </tr>
                
                <tr>
                    <td width="50%" valign="top">
                        <div style="padding:20px; padding-left:0; ">
                            <div style=" border:1px solid #e6e6e6;  ">
                                <h3 style="margin:0; padding:10px; background:#fafafa; color:#333333; border-bottom:1px solid #e6e6e6;">Billing Address</h3>
                                <address style="margin:0; padding:50px; font-style:normal; font-weight:bold;">
                                    <?php echo $order_bill[0]->bname?><br>
			                        <?php echo $order_bill[0]->baddr1?>,<br>
			                        <?php if(!empty($order_bill[0]->baddr2)){?>
			                        <?php echo $order_bill[0]->baddr2?>,<br>
			                        <?php }?>
			                        <?php echo $order_bill[0]->bcity?> - <?php echo $order_bill[0]->bpincode?>. <br>
			                        <?php echo $order_bill[0]->bstate?>, India. <br>
			                        Phone : +91 <?php echo $order_bill[0]->bphone?><br>
			                        <?php if(!empty($order_bill[0]->landmark)){?>
			                       <br>
			                        <?php }?>
                                </address>
                            </div>
                        </div>
                    </td>
                    <td width="50%" valign="top">
                        <div style="padding:20px; padding-right:0; ">
                            <div style=" border:1px solid #e6e6e6;  ">
                                <h3 style="margin:0; padding:10px; background:#fafafa; color:#333333; border-bottom:1px solid #e6e6e6;">Shipping Address</h3>
                                <address style="margin:0; padding:50px; font-style:normal; font-weight:bold;">
                                    <?php echo $order_bill[0]->sname?><br>
			                        <?php echo $order_bill[0]->saddr1?>,<br>
			                        <?php if(!empty($order_bill[0]->saddr2)){?>
			                        <?php echo $order_bill[0]->saddr2?>,<br>
			                        <?php }?>
			                        <?php echo $order_bill[0]->scity?> - <?php echo $order_bill[0]->spincode?>. <br>
			                        <?php echo $order_bill[0]->sstate?>, India. <br>
			                        <?php if(!empty($order_bill[0]->landmark)){?>
			                        Landmark : <?php echo $order_bill[0]->landmark?><br>
			                        <?php }?>
			                        Phone : +91 <?php echo $order_bill[0]->sphone?><br>
                                </address>
                            </div>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" style="border:1px solid #e6e6e6;">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr style="background:#fafafa; color:#333333; font-weight:bold;">
                                <td style="padding:10px; border-bottom:1px solid #e6e6e6">Image</td>
                                <td style="padding:10px; border-bottom:1px solid #e6e6e6 ">Qty</td>
                                <td style="padding:10px; border-bottom:1px solid #e6e6e6; text-align:right;">Price</td>
                            </tr>
                            <?php if(is_array($order_products)){
                        	foreach ($order_products as $ord){
                        		$image = cdn_url().$ord->image_path;
                        		$product = $this->home_db->getcontent(''.$ord->categ.'_product_view','psid',$ord->psid,'','');                     			
                        		$url = base_url().'products/product_view?page='.$product[0]->ppage_url;
                        		 
                  			?>
                            <tr>
                                <td valign="top" style="padding:10px; border-bottom:1px solid #e6e6e6">
                                    <div style="float:left;">
                                        <a href="<?php echo $url;?>"><img src="<?php echo $image?>" style="width:150px;" /></a>
                                    </div>
                                    <div style="float:left;">
                                        <h3 style="margin:0; padding:0; margin-bottom:10px;"><?php echo $ord->pname?></h3>
                                        <p>[<?php echo $ord->pcode?>]<br><?php if($ord->size_id != '0'){?>Size:<?php echo $ord->size_name;?><br><?php }?>Color:<?php echo $ord->color;?><br>Material:<?php echo $ord->material;?></p>
                                    </div>
                                </td>
                                <td valign="top" style="padding:10px; border-bottom:1px solid #e6e6e6">
                                    <?php echo $ord->qty;?>
                                </td>
                                <td valign="top" align="right" style="padding:10px; border-bottom:1px solid #e6e6e6">
                                    <img src="<?php echo asset_url();?>images/rs_gray.png" width="18" /> <?php echo $this->home_db->getnumberformat($ord->price);?>
                                </td>
                            </tr>
                            <?php }?>
                            <tr>
                                <td colspan="3" align="right" style="background:#fafafa; padding:10px; border-top:1px solid #border-bottom:1px solid #e6e6e6">
                                    Saved : <img src="<?php echo asset_url();?>images/rs_gray.png" width="18" /> <?php echo $this->home_db->getnumberformat($orders[0]->saved_amt);?>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="right" style="background:#fafafa; padding:10px; border-top:1px solid #border-bottom:1px solid #e6e6e6">
                                    Delivery Charges : <img src="<?php echo asset_url();?>images/rs_gray.png" width="18" /> <?php echo $this->home_db->getnumberformat($orders[0]->devilery_charge);?>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="right" style="background:#fafafa; padding:10px; border-top:1px solid #border-bottom:1px solid #e6e6e6">
                                    Grand Total : <img src="<?php echo asset_url();?>images/rs_gray.png" width="18" /> <?php echo $this->home_db->getnumberformat($orders[0]->total_amt_paid);?>
                                </td>
                            </tr>
                            <?php }?>
                        </table>
                    </td>
                </tr>
                
            </table>
            
        </td>
    </tr>
</table>

</body>
</html>
