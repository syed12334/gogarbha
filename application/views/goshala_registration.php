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

    <link rel="canonical" href="<?php echo base_url() . 'login'; ?>" />

    <link rel="alternate" hreflang="en" href="<?php echo base_url() . 'login'; ?>" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
    <style>
        .form-group {
            padding: 0px 18px;
        }
    </style>
</head>

<body class="loginpage">

    <?php echo $header; ?>


    <div class="page-wrapper">

        <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <!-- <PAGE CONTENT> ================================= -->
        <section class="page-header page-ddl ">
            <div class="page-header__bg" style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container soft">
                <ul class="thm-breadcrumb list-unstyled">

                    <li><span>Goshala Registration Form</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details myaccount dark-bg-one">
            <div class="container">
                <div class="row">

                    <div class="log-wrap">

                        <div class="row bg-white">
                            <div class="col-md-12 p-0">
                                <div class="card">
                                    <div class="card-body">
                                        <h3 class="text-center mb-5 mt-4">Register Here Your Goshala</h3>
                                        <form class="row">

                                            <div class="form-group  col-md-12">
                                                <label for="">Name of the Goshala</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-12">
                                                <label for="">Address</label>
                                                <textarea class="form-control" rows="3"></textarea>
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">Contact Person Name</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">Mobile Number</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">Email Id</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group   col-md-6">
                                                <label for="">State</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">City</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">Pincode</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group   col-md-6">
                                                <label for="">No. of Desi Cows</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">No. of Non-Desi Cows</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group  col-md-6">
                                                <label for="">No. of Bulls</label>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="form-group   col-md-6">
                                                <label for="">No. of Calfs</label>
                                                <input type="text" class="form-control">
                                            </div>


                                            <div class="form-group   col-md-12">
                                                <label for="">Products</label>
                                                <textarea class="form-control" rows="3"></textarea>
                                            </div>

                                            <div class="form-group   col-md-6">
                                                <label for="">Milk Quantity <small>(in ltrs)</small></label>
                                                <input type="text" class="form-control">
                                            </div>


                                            <div class="col-md-12">
                                                <div class="row">

                                                    <div class="form-group   col-md-4 text-left">
                                                        <a href="<?php echo asset_url(); ?>pdf/registrationform.pdf" target="_blank" class="btn btn-dark mt-3">Download</a>
                                                    </div>
                                                    <div class="form-group   col-md-4 text-right">

                                                    </div>
                                                    <div class="form-group   col-md-4 text-right">
                                                        <input type="submit" value="Submit" class="btn btn-info mt-3">
                                                    </div>

                                                </div>
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