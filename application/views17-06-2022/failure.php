<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title><?php echo title?></title>
    <link href="<?php echo asset_url(); ?>css/artiiplants.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/artiiplantss.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/all.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min1.css" rel="stylesheet">
<link rel="canonical" href="<?php echo base_url().'cart/order_failure';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'cart/order_failure'?>"/>
    <link href="<?php echo asset_url()?>css/rating.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common;?>         
  </head>

<body>

<?php echo $header;?>


<!-- <PAGE CONTENT> ================================= -->
<div class="page_content">
	<!-- Start steps -->
	<div class="page_heading">
		<div class="container">
            <div class="steps">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="step_box done success">
                            <a href="#" class="edit"><i class="icon icon-pencil"></i></a>
                            <div class="circle"> <i class="icon icon-cart_white"></i></div>
                            <div class="condent">
                                <h3>The Cart </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="step_box done success">
                            <a href="#" class="edit"><i class="icon icon-pencil"></i></a>
                            <div class="circle"> <i class="icon icon-location_white"></i></div>
                            <div class="condent">
                                <h3>Billing - Shipping </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="step_box done success">
                            <a href="#" class="edit"><i class="icon icon-pencil"></i></a>
                            <div class="circle"> <i class="icon icon-summary_white"></i></div>
                            <div class="condent">
                                <h3> Order Summary </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
<!-- End </steps> -->
        
        <div class="container">
        
        <div class="row">
        	<?php if(is_array($order)){?>
            <div class="col-lg-6 col-md-6 col-sm-6">
            	<div class="success_content">
                <img src="<?php echo asset_url();?>images/failure.png" class="img-responsive">
                <h3>Oops!! Transaction Failed.</h3>
                	<table>
                    	<tr>
                        	<td>Paid Amount </td>
                            <td class="amount"> : <i class="icon_rs_green"></i> <?php echo $this->home_db->getnumberformat($order[0]->pamount_debit);?></td>
                        </tr>
                       
						<tr>
                        	<td>Payable Amount </td>
                            <td class="amount"> : <i class="icon_rs_green"></i> <?php echo $this->home_db->getnumberformat($order[0]->total_amt_paid);?></td>
                        </tr>
						<?php }?>
						
                        <?php if(!empty($order[0]->paymode)){?>
                        <tr>
                        	<td>Paid through </td>
                            <td> : <?php  echo $order[0]->paymode;?></td>
                        </tr>
                        <?php }?>
                        <tr>
                        	<td>Order ID </td>
                            <td> : <?php echo $order[0]->orderid;?></td>
                        </tr>
                    </table>
                    
                    <hr>
                    
                    
                    
                    <br>
                    For more information, you can always
                    
                    <div class="query_contact">
                        <table>
                            <tr>
                                <td>Reach us at </td>
                                <td> <?php echo $call;?> (or)</td>
                            </tr>
                            
                            <tr>
                                <td>Email at </td>
                                <td><?php echo $emlid;?></td>
                            </tr>
                    </table>
                    </div>
                    
                </div>
            </div>
            
            <div class="col-lg-5 col-md-5 col-sm-5 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
            	<table class="item_summary_table">
                	<tr>
                        <th>
                        	<h3>Order Summary</h3>
                        </th>
                    </tr>
                    <?php if(is_array($order_products)){
                        	foreach ($order_products as $ord){
                        		$image = cdn_url().$ord->image_path;
								$product = $this->home_db->getcontent($ord->categ.'_product_view','psid',$ord->psid,'','');
								$url = base_url().'products/product_view?page='.$product[0]->ppage_url;
                        	?>
                    <tr>
                        <td>
                            <div class="item">
                                <div  class="item_img">
                                    <a href="<?php echo $url?>"><img src="<?php echo $image?>" class="img-responsive"></a>
                                </div>
                                <div  class="item_detail">
                                    <h4 class="pr_name"><?php echo $ord->pname?> <?php if($ord->size_id != '0'){?>(<?php echo $ord->size_name;?>)<?php }?></h4> 
                                    <p class="pr_code"><?php echo $ord->pcode?></p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <?php }?>
                    <tr>
                        <th colspan="3" class="total">
                            <div class="total order_summary">
                            	<span class="text"> Saved </span>
                                <span class="amount"><i class="icon_rs_green"></i> -<?php echo $this->home_db->getnumberformat($order[0]->saved_amt);?></span>
                            	<hr>
                            	<span class="text"> Delivery Charges </span>
                                <span class="amount"><i class="icon_rs_green"></i> <?php echo $this->home_db->getnumberformat($order[0]->devilery_charge);?></span>
                            	<hr>
                                <span class="text">Total Payable amount </span>
                                <span class="amount"><i class="icon_rs_green"></i> <?php echo $this->home_db->getnumberformat($order[0]->total_amt_paid);?> </span>
                                <p class="tax">(Incl.tax)</p>
                            </div>
                        </th>
                    </tr>
                    <?php }?>
                </table>
            </div>
            <?php }?>
        </div>
        
    </div>
</div>
<!-- END </ PAGE CONTENT>  -->


<?php echo $footer;?> 
    
</body> 
<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url();?>js/jquery-1.7.1.js" type="text/javascript"></script>
<?php echo $jsFile;?>


</body>
</html>
