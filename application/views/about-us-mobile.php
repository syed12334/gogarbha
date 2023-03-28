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

    <link rel="canonical" href="<?php echo base_url() . 'aboutus'; ?>" />
    <link rel="alternate" hreflang="en" href="<?php echo base_url() . 'aboutus' ?>" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
</head>

<body>

  

    <div class="page-wrapper">

      

        <section class="about-three pt-3">
            <div class="container">



                






                <div class="row">

                    <div class="col-lg-6">
                        <div class="about-three__content">
                            <div class="block-title mb-3">
                                <div class="block-title__image"></div><!-- /.block-title__image -->
                                <p>Get to know us</p>
                                <!-- <h3>30 Years Agriculture
                                    Experience</h3> -->
                            </div><!-- /.block-title -->

                            <?php echo $info[0]->text; ?>

                        </div><!-- /.about-three__summery -->

                    </div><!-- /.about-three__content -->


                    <div class="col-lg-6">
                        <div class="about-three__image">
                            <img src="<?php echo asset_url() ?>images/resources/about-3-2.jpg" alt="">
                        </div><!-- /.about-three__image -->
                    </div><!-- /.col-lg-6 -->



                </div><!-- /.col-lg-6 -->


                <div class="row">
                    <div class="col-lg-6">
                        <div class="about-two__images">
                            <img src="http://13.235.149.175//assets/images/resources/about-2-2.jpg" alt="">
                            <img src="http://13.235.149.175//assets/images/resources/about-2-1.jpg" alt="">
                        </div><!-- /.about-two__images -->
                    </div><!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="about-two__content">
                            <div class="block-title">
                                <div class="block-title__image"></div><!-- /.block-title__image -->
                                <!--<p>Our introduction</p>-->
                                <h3>Agriculture &amp; Dairy Products
                                </h3>
                            </div><!-- /.block-title -->
                            <div class="about-two__summery">

                                <p>
                                    Gogarbha is a mission to re-establish the Bharatiya breed of cows as the economic backbone of the country. We are committed to providing a market and a platform for producers that are committed to manufacturing high-quality panchagavya goods in order to save mother cows and restore Bharat's decentralized economy, which served as a significant model. We are committed to providing the highest quality products to our consumers at all times and are dedicated to rigorously exploring the potential of the Bharatiya cow species to fulfill today's challenges and needs. In this method, we have offered high-quality panchagavya goods for everyday usages, like cosmetics, panchagavya medicines, puja items, and other goods.
                                </p>
                                <!--
                            <p class="mb-3">
                            All of these commodities are produced by various gaushalas and research centers. After using them, you would want to re-use the same product category again. Not only that, but your purchase of these high-quality items will help to grow the national economy by encouraging more people to support the cause of cow protection and conservation.
                            </p>

                            <p>
                            The proceeds are shared with the farmers, and every farmer involved in the product is introduced to the customer. The customer can even directly procure it from them.
                            </p>
                            -->
                            </div><!-- /.about-two__summery -->


                        </div><!-- /.about-two__content -->
                    </div><!-- /.col-lg-6 -->
                </div>


            </div><!-- /.row -->
    </div><!-- /.container -->
    </section><!-- /.about-three -->


</body>

</html>