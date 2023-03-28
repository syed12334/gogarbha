<?php //echo "<pre>";print_r($order);exit; ?>
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
<link rel="canonical" href="<?php echo base_url().'cart/success';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'cart/success'?>"/>
    <link href="<?php echo asset_url()?>css/rating.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common;?>
    <style>
    .well {
        background-color: #f0f7f4;
        padding: 15px 15px 15px 15px;
        margin-top: 25px;
    }

    .well p {
        font-size: 15px;
        line-height: 26px;
    }

    b,
    strong {
        font-weight: 600;
    }

    h3 {
        font-size: 26px;
        color: #014e37;
        font-weight: 600;
        margin-bottom: 24px;
    }
    </style>
</head>

<body>

    <?php echo $header;?>




    <!-- <PAGE CONTENT> ================================= -->
    <div class="page_content">



        <div class="container">
            <div class="row">
                <?php 
				$currencyid = $this->session->userdata('currencyid');
			    $priceType = ($currencyid !='' ) ? $currencyid['price_type'] : '';
				$price_icon  = ($priceType == 2) ? '<span>&#36;</span>' : '<i class="fas fa-rupee-sign"></i>';
				if(is_array($order)){
					//print_r($order);exit;
					
					?>
                <div class="col-md-12">
                    <div class="success_contentt">
                        <div class="col-md-3 text-center">
                            <img src="<?php echo asset_url()?>images/logo.svg" style="width:200px">
                        </div>
                        <div class="col-md-9">
                            <h3><?php echo  $msg;?></h3>
                          
                        </div>

                    </div>
                </div>

                <?php /*
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
                            <div class="item_img">
                                <a href="<?php echo $url?>"><img src="<?php echo $image?>" class="img-responsive"></a>
                            </div>
                            <div class="item_detail">
                                <h4 class="pr_name"><?php echo $ord->pname?>
                                    <?php if($ord->size_id != '0'){?>(<?php echo $ord->size_name;?>)<?php }?>
                                </h4>
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
                            <span class="amount"><i class="fas fa-rupee-sign"></i>
                                -<?php echo $this->home_db->getnumberformat($order[0]->saved_amt);?></span>
                            <hr>
                            <span class="text"> Delivery Charges </span>
                            <span class="amount"><i class="fas fa-rupee-sign"></i>
                                <?php echo $this->home_db->getnumberformat($order[0]->devilery_charge);?></span>
                            <hr>
                            <span class="text">Total Payable amount </span>
                            <span class="amount"><i class="fas fa-rupee-sign"></i>
                                <?php echo $this->home_db->getnumberformat($order[0]->total_amt_paid);?> </span>
                            <p class="tax">(Incl.tax)</p>
                        </div>
                    </th>
                </tr>
                <?php }?>
                </table>
            </div>
            */ ?>

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