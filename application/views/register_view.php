<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title><?php echo maintitle; ?></title>
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

<link rel="canonical" href="<?php echo base_url().'register';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'register';?>"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
    <style type="text/css">
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

input[type=number] {
  -moz-appearance: textfield;
}
    </style>
</head>

<body class="loginpage">




    <?php echo $header; ?>


  <div class="page-wrapper">

    <!-- <PAGE CONTENT> ================================= -->


<div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->

 <section class="page-header page-ddl ">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <ul class="thm-breadcrumb list-unstyled">

                    <li><span>Login / Register</span></li>
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
                                        <h3>NEW MEMBER SIGN UP</h3>
                                       <div class="text-center"><img src="assets/images/Gogarbha_Logo.svg" width="120px" class="mb-4"/></div> 
                                        <p>By creating an account you will be able to shop faster, be up to date on an
                                            order's status, and keep track of the orders you have previously made.</p>
                                            <p class="mt-4">If you already have an account with us, please <a href="<?= base_url().'login';?>">Sign In</a>.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 p-0">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        <form onsubmit="return false;">
                                             <div id="rmsgbox"></div>
                                            <div class="form-group">
                                                <label for="">Name</label>
                                                <input type="text" class="form-control" name="rname" id="rname"  onkeypress='return ((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || (event.charCode == 32))'>
                                            </div>
                                           
                                            <div class="form-group">
                                                <label for="">Email - Id</label>
                                                <input type="text" name="remail" id="remail" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="">Phone Number</label>
                                                <input type="number" name="phone" id="phone" class="form-control onlynumbers" minlength="10" maxlength="10">
                                            </div>
                                            <div class="form-group">
                                                <label for="">Password</label>
                                                <input type="password" name="rpassword" id="rpassword" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="">Confirm Password</label>
                                                <input type="password" name="rconfpassword" id="rconfpassword" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <input type="submit" onclick="register();" value="Register" class="btn btn-info mt-2">
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

</div>
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