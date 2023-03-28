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


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->

    <?php echo $common;?>
    

</head>

<body>


    <!-- <CART POPUP> ================================= -->



    <!-- <HEADER> ================================= -->
    <?php echo $header;?>

    <!-- END </HEADER> -->

    <div class="breadbg">
        <div class="container">
            <div class="row">
                <ul class="breadcrumb">
                    <li><a href="<?php echo base_url(); ?>"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Clients</a></li>
                </ul>
            </div>
        </div>
    </div>



    <!-- <PAGE CONTENT> ================================= -->
    <div class="page_content cl">


        <div class="container">
           
            <div class="inner_page client">

                <?php

            foreach($cat as $c){ ?>

                <div class="category">
                <h1 class="heading text-center"><span><?php echo $c->name?></span></h1>
                    <div class="row">

                        <?php


                    foreach($info as $in){

                    $path = str_replace("atp_manage/","",base_url()).$in->client_image;

                    if($c->name == $in->category){?>
                        <div class="col-lg-2 col-sm-3 col-md-2">
                            <div class="well"> <img src="<?php echo $path?>"></div>
                        </div>

                        <?php }} ?>

                    </div>
                </div>

                <?php } ?>









            </div>
        </div>
    </div>
    <!-- END </ PAGE CONTENT>  -->

    <!-- <NEWS LETTER> ================================= -->

    <!-- END </TESTIMONIAL> -->

    <!-- <FOOTER> ================================= -->
    <?php echo $footer;?>
    <!-- END </FOOTER>  -->



</body>

<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url()?>js/jquery-1.7.1.js" type="text/javascript"></script>
<?php echo $jsFile;?>


</body>

</html>