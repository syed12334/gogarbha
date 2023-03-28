<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title><?php echo maintitle?></title>
    <link href="<?php echo asset_url(); ?>css/artiiplants.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/artiiplantss.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/all.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min1.css" rel="stylesheet">

    <link href="<?php echo asset_url()?>css/rating.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common;?>    
    <style type="text/css">
	    .no-td-border {
	    	border-bottom: none !important;
		}
    </style> 
  </head>

<body>

<?php echo $header;?>


<!-- <PAGE CONTENT> ================================= -->
<div class="page_content">
	<div class="page_heading">
		<div class="container">
            <!-- Start steps -->
            <div class="steps">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="step_box done">
                            <a href="javascript:void(0);" onclick="document.location.href='<?php echo base_url()?>cart/cart_summary'" class="edit"><i class="icon icon-pencil"></i></a>
                            <div class="circle"> <i class="icon icon-cart_white"></i></div>
                            <div class="condent">
                                <h3>My Cart </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="step_box done">
                            <a href="javascript:void(0);" onclick="document.location.href='<?php echo base_url()?>cart/billing_shipping'" class="edit"><i class="icon icon-pencil"></i></a>
                            <div class="circle"> <i class="icon icon-location_white"></i></div>
                            <div class="condent">
                                <h3>Billing - Shipping </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="step_box current">
                            <a href="#" class="edit"><i class="icon icon-pencil"></i></a>
                            <div class="circle"> <i class="icon icon-summary_white"></i></div>
                            <div class="condent">
                                <h3> Order Summary </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End </steps> -->
    	</div>
    </div>
    
    <div class="container">
        
        <div class="row">
        <?php echo $this->session->flashdata('message');?>
        	<div class="col-lg-9 col-md-9 col-sm-9">
            	<table class="item_summary_table" id="loaddata">
                	<tr>
                        <th>Item</th>
                        <th >Qty</th>
                        <th class="price_column">Price</th>
                    </tr>
                    
                    <?php foreach ($this->cart->contents() as $items){
							$options = $this->cart->product_options($items['rowid']);
							$type = $options['categ'];
						?>
                    <tr>
                        <td>
                            <div class="item">
                                <div  class="item_img">
                                    <a href="<?php echo $items['plink'];?>"><img src="<?php echo $items['image'];?>"></a>
                                </div>
                                <div  class="item_detail">
                                    <h4 class="pr_name"><?php echo $items['name'];?> <?php if($items['sizeid'] != '0'){echo '('.$items['sname'].')';}?></h4> 
                                    <p class="pr_code"><?php echo $items['pcode']?></p>
                                    <span class="delete_btn" onclick="remove_row('<?php echo $items['rowid'];?>');"></span>
                                </div>
                            </div>
                        </td>
                        <td class="qty_column">
		                	<input type="text" value="<?php echo $items['qty'];?>" class="qty onlynumbers" name="qty<?php echo $items['rowid'];?>" id="qty<?php echo $items['rowid'];?>" uid="<?php echo $items['rowid'];?>" maxlength="3" >
		                </td>
                        <td class="price_column"><i class="icon_rs_green"></i> <?php echo $this->home_db->getnumberformat($items['price']*$items['qty']);?></td>
                    </tr>
                                        
                    <?php }?> 
                    <tr>
                        <th colspan="3" class="total">
                        
                        <div class="gift_coupon" id="gift_voucherid">
                    <?php if(!$this->session->userdata('coupon')){?>
                    	<p class="have">Do you have coupon code?</p>
                    	<input type="text" placeholder="Enter your gift coupon" name="coupon" id="coupon">
                        <input type="submit" class="btn btn-primary giftcoupon" value="update">
                    <?php }
                    else{?>
						<p class="have gift_couponadded">1 gift coupon added <span class="removecoupon icon icon-pencil" title="Edit"></span><br>
						<?php if(floatval($this->cart->total()) > 0){?><span >You have saved <i class="icon_rs_green"></i> <?php echo $this->session->userdata('discount_amt');?> </span><?php }?>
						</p>
					<?php }
                    ?>
                    </div>
                        
                            <div class="total order_summary">
                            <?php if($this->session->userdata('coupon')){?>
                            
                            	<div class="delivery_charges">
                                    <span class="text"> Saved </span>
                                    <span class="amount"><i class="icon_rs_gray"></i> -<?php echo $this->session->userdata('discount_amt');?> </span>
                            	</div>
                            	<?php }?>
                            	<?php $charges = 0;?>
                            	<?php if($this->session->userdata('pincode')){
		                    		if(floatval($this->session->userdata('charges')) > 0){
										$charges = $this->session->userdata('charges');
		                    	?>
                            	<div class="delivery_charges">
                                    <span class="text"> Delivery Charges </span>
                                    <span class="amount"><i class="icon_rs_gray"></i> <?php echo $charges;?> </span>
                            	</div>
                            	<?php }}?>
                                <div class="total_amount">
                                    <span class="text">Total Payable Amount </span>
                                    <span class="amount" id="current_total"><i class="icon_rs_green"></i> <?php echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$charges);?> </span>
                                    <p class="tax">(Incl.tax)</p>
                                </div>
                            </div>
                        </th>
                    </tr>
                    <tr><td colspan="3" class="no-td-border"><div id="gmsgbox"></div></td></tr>
                </table>
            </div>
            <?php $bill = $this->session->userdata('billing');?>
            <div class="col-lg-3 col-md-3 col-sm-3">
            	<div class="address_bill_ship">
                    <h3>Billing Address</h3>
                    <address>
                       <?php echo $bill['name']?><br>
                       <?php echo $bill['address1']?>,<br>
                       <?php if(!empty($bill['address2'])){?>
                       <?php echo $bill['address2']?>,<br>
                       <?php }?>
                       <?php echo $bill['cityname']?> - <?php echo $bill['pincode']?>. <br>
                       <?php echo $bill['statename']?>, India.
                    </address>
                    
                    <hr>
                    
                    <h3>Shipping Address</h3>
                    <address>
                        <?php echo $bill['shipname']?><br>
                        <?php echo $bill['shipaddress1']?>,<br>
                        <?php if(!empty($bill['shipaddress2'])){?>
                        <?php echo $bill['shipaddress2']?>,<br>
                        <?php }?>
                        <?php echo $bill['shipcityname']?> - <?php echo $bill['shippincode']?>. <br>
                        <?php echo $bill['shipstatename']?>, India. 
                        <?php if(!empty($bill['landmark'])){?>
                        <br>Landmark- <?php echo $bill['landmark']?>
                        <?php }?>
                    </address>
                </div>
                
            </div>
        </div>      
        
        
        <div class="pay_using">
        	<div class="row">
            	<div class="col-lg-3 col-md-3 col-sm-3">
                	Pay using
                    <div class="payment_icon">
                        <img src="<?php echo asset_url();?>images/visa.png">
                        <img src="<?php echo asset_url();?>images/maestro.png">
                        <img src="<?php echo asset_url();?>images/master.png">
                        <img src="<?php echo asset_url();?>images/netbanking.png">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 text-center">
                	<div class="pay_option">
                        <form>
                        <span class="payu"> <input type="radio" name="cash_option" id="payu"> <label for="payu"><img src="<?php echo asset_url();?>images/payu.png"></label></span>
                        <span class="cash_on"> <input type="radio" name="cash_option" id="cash"> <label for="cash"> <img src="<?php echo asset_url();?>images/cash_delivery.png"> Cash on deliery</label></span>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 text-right">
                	<button class="btn btn-primary paybtn">Proceed to Payment </button>
                </div>
            </div>
        	
             
        	
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
<script type="text/javascript">
$(document).ready(function(){
	$(".paybtn").click(function(){
		if($("#payu").is(":checked")){
			$("#gmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>');
			document.location.href='<?php echo base_url()?>cart/placeorder?type=payu';
		}
		else if($("#cash").is(":checked")){
			$("#gmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>');
			document.location.href='<?php echo base_url()?>cart/placeorder?type=cod';
		}
		else{
			$("#gmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Select Payment Method.</div>');
		}
	});
		
});

</script>

</body>
</html>
