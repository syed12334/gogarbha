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

<link rel="canonical" href="<?php echo base_url().'forgot';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'forgot';?>"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
</head>

<body class="loginpage">

    <?php echo $header; ?>

    <section class="page-header page-ddl ">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url() ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <ul class="thm-breadcrumb list-unstyled">

                    <li><span>Forgot Password</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details myaccount dark-bg-one">
            <div class="container">
                <div class="row">

                    <div class="log-wrap">

                        <div class="row bg-white logs">
                            <div class="col-md-6 p-0">
                                <div class="card">
                                    <div class="card-body">
                                        <img src="<?php echo asset_url() ?>images/icons/forgot.svg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 p-0">
                                <div class="card">
                                    <div class="card-body">
                                        <div id="fmsgbox"></div>
                                        <h3>FORGOT YOUR PASSWORD?</h3>
                                        <p>Enter the e-mail address associated with your account. Click submit to have a password reset link e-mailed to you.</p>
                                        <form onsubmit="return false;" class="mt-3">
                                            <div class="form-group">
                                                <label for="">E-Mail Address</label>
                                                <input type="email" name="femail" id="femail" class="form-control">
                                            </div>
                                             
                                            <div class="form-group">
                                            
                                                 <input type="submit" onclick="forgotpass();" value="SUBMIT" class="btn btn-info mt-1">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>







                    </div>


                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.service-details -->


    <?php echo $footer; ?>



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
<?php echo $jsFile; ?>

</body>

</html>