<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title><?php echo maintitle ?></title>
    <meta name="Description" CONTENT="Sri Krishna Ghee">

    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo asset_url(); ?>images/krishnaghee.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo asset_url(); ?>images/krishnaghee.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo asset_url(); ?>images/krishnaghee.png">

    <!-- fonts -->

    <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/bootstrap.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Vendor CSS (Bootstrap & Icon Font) -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/vendor/bootstrap.min.css">

    <!-- Plugins CSS (All Plugins Files) -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/plugins/swiper-bundle.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/plugins/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/plugins/fancybox.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/plugins/nice-select.css">

    <!-- Style CSS -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/style.min.css">



    <link rel="alternate" hreflang="en" href="<?php echo base_url(); ?>" />


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>

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
			
                        	?>
                    <tr>
                        <td>
                            <div class="item">
                                <div  class="item_img">
                                   <img src="<?php echo $image?>" class="img-responsive">
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
