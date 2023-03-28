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
    <?php
      if($type =='di') {
          ?>
          <link rel="canonical" href="<?php echo base_url().'home/delivery_information';?>" />
          <link rel="alternate" hreflang="en" href="<?php echo base_url().'home/delivery_information';?>"/>


          <?php
      }else if($type =='pp') {
        ?>
<link rel="canonical" href="<?php echo base_url().'home/privacy_policy';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'home/privacy_policy';?>"/>
        <?php
      }
      else if($type =='d') {
          ?>
          <link rel="canonical" href="<?php echo base_url().'home/disclaimer';?>" />
          <link rel="alternate" hreflang="en" href="<?php echo base_url().'home/disclaimer';?>"/>

        <?php
      }
      else if($type =='cs') {
          ?>
          <link rel="canonical" href="<?php echo base_url().'home/customerservice';?>" />
          <link rel="alternate" hreflang="en" href="<?php echo base_url().'home/customerservice';?>"/>

        <?php
      }
      else if($type =='tc') {
            ?>
          <link rel="canonical" href="<?php echo base_url().'home/termsandconditions';?>" />
          <link rel="alternate" hreflang="en" href="<?php echo base_url().'home/termsandconditions';?>"/>

        <?php
      }
       else if($type =='rps') {
            ?>
          <link rel="canonical" href="<?php echo base_url().'home/returnandrefund';?>" />
          <link rel="alternate" hreflang="en" href="<?php echo base_url().'home/returnandrefund';?>"/>

        <?php
      }
    ?>  

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <![endif]-->
    <?php echo $common;?>




</head>

<body>

    <!-- <HEADER> ================================= -->

    <?php echo $header;?>

 <div class="page-wrapper">

      <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
       
          

        <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <section class="page-header">
            <div class="page-header__bg" style="background-image: url(<?php echo asset_url() ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container soft">
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="<?= base_url();?>">Home</a></li>
                  
                </ul><!-- /.thm-breadcrumb list-unstyled -->
                <h2><?php echo $heading; ?></h2>
            </div><!-- /.container -->
        </section><!-- /.page-header -->

      
         <section class="about-three">
            <div class="container">
                <div class="row">
                   
                    <div class="col-lg-12">
                        <div class="about-three__content">
                           

                           <?php echo $descp ?>

                        </div><!-- /.about-three__summery -->

                    </div><!-- /.about-three__content -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
    </div><!-- /.container -->
    </section><!-- /.about-three -->

                    <!-- <NEWS LETTER> ================================= -->
                    <?php echo $footer;?>
                    <!-- END </FOOTER>  -->



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