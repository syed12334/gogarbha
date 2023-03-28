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
    
    <link media="all" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- template styles -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/main.css">

    <link rel="canonical" href="<?php echo base_url() . 'aboutus'; ?>" />
    <link rel="alternate" hreflang="en" href="<?php echo base_url() . 'aboutus' ?>" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    
    <style>
    .contact-map iframe {
    float: left;
    width: 100%;
    height: 788px;
    border: none;
	margin-bottom:20px;
}

.box1 {
    border: 1px solid hsl(0, 0%, 93%);
    color: #fff;
    font-size: 14px;
    font-weight: 500;
    line-height: 23px;
    padding: 17px;
    position: relative;
    text-transform: capitalize;
    word-break: break-all;
    background-color: #36628b;
    background-image: url(./assets/images/sub.jpg);
    background-position: bottom;
    background-size: cover;
}

.box1 {
    text-align: center;
    min-height: 225px;
    margin: 40px 0 10px;
}

.icons {
    background: #4e6d8a none repeat scroll 0 0;
    border-radius: 50%;
    color: #fff;
    font-size: 30px;
    height: 90px;
    margin: -52px auto auto;
    padding: 27px 29px;
    width: 90px;
}

.col-lg-4 {
	float:left;
}

h1 {
    font-size: 24px;
    color: #0c284f;
    text-transform: uppercase;
    text-align: center;
    margin: 15px 0 30px;
    font-family: 'Courgette', cursive;
    font-weight: 600;
}

    </style>
</head>

<body>

    <?php echo $header; ?>

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
                    <li><a href="<?= base_url(); ?>">Home</a></li>

                </ul><!-- /.thm-breadcrumb list-unstyled -->
                <h2>Contact Us</h2>
            </div><!-- /.container -->
        </section><!-- /.page-header -->


        <section class="about-three">
            <div class="container">

                <div class="row">
                
                  <div class="col-lg-12">
                    
                    <h1>Get in touch with us </h1>
                    
                    <div class="col-lg-4">
						<div class="box1">
							<div class="icons">
							   <i aria-hidden="true" class="fa fa-map-marker"></i>
							</div>
							<h3>Address</h3>
							<ul class="list-unstyled">
								<li><strong> Gogarbha </strong> <br>
                                43/A, 2nd Floor, I Main III Stage III Block <br> Basaveswaranagar Bengaluru - 560 079.	</li>
							</ul>
						</div>
					</div>
                    
                    
					<div class="col-lg-4">
						<div class="box1">
							<div class="icons">
							   <i aria-hidden="true" class="fa fa-phone"></i>
							</div>
							<h3>Phone No </h3>
							<ul class="list-unstyled">
                                <span><a style="color:#fff;" href="tel:9886203199">+91 98862 03199 </a> </span>
							</ul>
						</div>
					</div>
					
                    
                    <div class="col-lg-4">
						<div class="box1">
							<div class="icons">
							   <i aria-hidden="true" class="fa fa-envelope-o"></i>
							</div>
							<h3>Email </h3>
							<ul class="list-unstyled">
				
                   <span><a style="color:#fff;" href="mailto:info@gogarbha.com"> info@gogarbha.com </a></span>
                    
							</ul>
						</div>
					</div>
                    
				</div>
                
                </div>
                           


                    <div class="col-md-12">
                       <div class="contact-map">

                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.7491492478775!2d77.53614751430447!3d12.987889818035985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3df3677e1b47%3A0x84805435838912f3!2sSavithru%20Technologies!5e0!3m2!1sen!2sin!4v1640952400784!5m2!1sen!2sin"></iframe>

                        </div>
                    </div><!-- /.col-lg-6 -->




            </div><!-- /.row -->
    </div><!-- /.container -->
    </section><!-- /.about-three -->




    <?php echo $footer; ?>


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
<?php echo $jsFile; ?>

</body>

</html>