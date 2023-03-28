<?php //echo "<pre>";print_r($order);exit; ?>
<!DOCTYPE html>
<html lang="en">

<head>
       <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title><?php echo maintitle ?></title>
   <meta name="Description" CONTENT="Gogarbha.">
   
 <link rel="apple-touch-icon" sizes="180x180" href="<?php echo asset_url(); ?>images/Gogarbha_Logo.svg">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo asset_url(); ?>images/Gogarbha_Logo.svg">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo asset_url(); ?>images/Gogarbha_Logo.svg">

      <!-- fonts -->
    
    <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/swiper.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/animate.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/odometer.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/jarallax.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/magnific-popup.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/agrikon-icons.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/nouislider.min.css">
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/nouislider.pips.css">

    <!-- template styles -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/main.css">

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





<body class="order-success">
    <div class="success-page">
        <div class="text-center mb-3"><a href="<?= base_url();?>"><img src="<?php echo asset_url(); ?>images/Gogarbha_Logo.svg" alt="" width="80px"></a></div>
          <?php 
                $currencyid = $this->session->userdata('currencyid');
                $priceType = ($currencyid !='' ) ? $currencyid['price_type'] : '';
                $price_icon  = ($priceType == 2) ? '<span>&#36;</span>' : '<i class="fas fa-rupee-sign"></i>';
                if(is_array($order)){

                    ?>


       
        <h3>  <span class="check"><i class="fas fa-check-circle"></i></span> Your order has been placed successfully!</h3>
        <table class="table table-bordered">
                                            <tbody><tr>
                <td>Paid Amount </td>
                                        <td><i class="fa fa-rupee-sign"></i><?php echo $order[0]->total_amt_paid;?></td>
            </tr>
            
            <tr>
                <td>Paid through </td>
                <td>  <?php echo $order[0]->paymode?></td>
            </tr>

            <tr>
                <td>Order ID </td>
                <td>  <?php echo $order[0]->orderid;?></td>
            </tr>
        </tbody></table>




        <div class="well">
            <p>
                Your order has been placed and is being processed. When the item(s) are shipped, you
                will
                receive an email with the details.
            </p>

            <p><b>For more information, you can always</b></p>

            <p>
                Reach us at +91 8143157519 <br>
                Email at info@gogarbha.com                                </p>
        </div>
<br>
        <div class="text-center"><a href="<?= base_url();?>" class="btn btn-info"><i class="fas fa-long-arrow-alt-left"></i> Shop More</a> </div>
    <?php } ?>
    </div> 
    <!-- END </ PAGE CONTENT>  -->




</body>


<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js"></script>
    <script src="<?php echo asset_url() ?>js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo asset_url() ?>js/swiper.min.js"></script>
    <script src="<?php echo asset_url() ?>js/jquery.ajaxchimp.min.js"></script>
    <script src="<?php echo asset_url() ?>js/jquery.magnific-popup.min.js"></script>
    <script src="<?php echo asset_url() ?>js/jquery.validate.min.js"></script>
    <script src="<?php echo asset_url() ?>js/bootstrap-select.min.js"></script>
    <script src="<?php echo asset_url() ?>js/wow.js"></script>
    <script src="<?php echo asset_url() ?>js/odometer.min.js"></script>
    <script src="<?php echo asset_url() ?>js/jquery.appear.min.js"></script>
    <script src="<?php echo asset_url() ?>js/jarallax.min.js"></script>
    <script src="<?php echo asset_url() ?>js/circle-progress.min.js"></script>
    <script src="<?php echo asset_url() ?>js/wNumb.min.js"></script>
    <script src="<?php echo asset_url() ?>js/nouislider.min.js"></script>

    <!-- template js -->
    <script src="<?php echo asset_url() ?>js/theme.js"></script>
<?php echo $jsFile;?>


</body>

</html>