<?php
//echo "<pre>";print_r($orders);exit;
?>
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
    <link rel="canonical" href="<?php echo base_url() . 'my_account/my_orders'; ?>" />
    <link rel="alternate" hreflang="en" href="<?php echo base_url() . 'my_account/my_orders'; ?>" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<![endif]-->
    <?php echo $common; ?>
</head>

<body class="bg-dark1">
    <?php echo $header; ?>

    <div class="page-wrapper">
        <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <section class="page-header">
            <div class="page-header__bg" style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <ul class="thm-breadcrumb list-unstyled">

                    <li><span>My Orders</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details myaccount">
            <div class="container">
                <div class="row">

                    <div class="col-lg-9">
                        <?php
                        if (is_array($orders)) {
                        ?>
                            <div class="table-responsive">


<?php $i = 0;
foreach ($orders as $ord) {
    $i = $i + 1;
    $arr = array("", "Processing", "Processing", "Shipped", "Delivered");
?>
    <div class="order-list">
        <div class="top-order">
            <div class="pull-left"><b>Order Id :</b> <?php echo $ord->orderid ?></div>
            <div class="pull-right"><?php echo $arr[$ord->status]; ?> : <?php $date = date_create($ord->ordered_date);
                                                                        echo $ordered_date = date_format($date, "M d Y"); ?>
            </div>
        </div>
        <div class="shop-tracking-status">
            <div class="order-status">

                <div class="order-status-timeline">
                    <?php
                    if($ord->status ==1) {
                            ?>

                            <?php
                        }
                        if($ord->status ==2) {
                            ?>
                                <div class="order-status-timeline-completion c2"></div>
                            <?php
                        }

                         if($ord->status ==3) {
                            ?>
                                <div class="order-status-timeline-completion c3"></div>
                            <?php
                        }

                        if($ord->status ==4) {
                            ?>
                             
                                <div class="order-status-timeline-completion c4"></div>
                            <?php
                        }
                        ?>

                    
                </div>

                <div class="image-order-status image-order-status-new  img-circle">
                    <div class="icon fir"><img src="<?php echo asset_url() ?>/images/Placed.svg"></div>
                    <?php

                        if($ord->status ==1) {
                            ?>
                            <span class="status" style="color:#56ac56">Placed</span>
                            <?php
                        }else {
                                ?>
                                <span class="status">Placed</span>
                                <?php
                        }
                    ?>
                    
                </div>

                <div class="image-order-status image-order-status-active    img-circle">
                    <div class="icon secv"><img src="<?php echo asset_url() ?>/images/Processing.svg"></div>
                    <?php

                        if($ord->status ==2) {
                            ?>
                            <span class="status" style="color:#56ac56">Processing</span>
                                           

                            <?php
                        }
                        else {
                                ?>
                                <span class="status">Processing</span>
                                <?php
                        }
                    ?>

                </div>

                <div class="image-order-status image-order-status-intransit  img-circle">
                    <div class="icon thiv"><img src="<?php echo asset_url() ?>/images/shipped.svg"></div>
                    <?php

                        if($ord->status ==3) {
                            ?>
                            <span class="status" style="color:#56ac56">Shipped</span>
                            <?php
                        }
                        else {
                                ?>
                                <span class="status">Shipped</span>
                                <?php
                        }
                    ?>
                    <span class="status"></span>
                </div>

                <div class="image-order-status image-order-status-delivered  img-circle">
                    <div class="icon forv"><img src="<?php echo asset_url() ?>/images/tick.svg"></div>
                    <?php

                        if($ord->status ==4) {
                            ?>
                            <span class="cancel_status status" style="color:#56ac56">Delivered</span>
                            <?php
                        }
                        else {
                                ?>
                                <span class="status">Delivered</span>
                                <?php
                        }
                    ?>
                </div>
            </div>
        </div>


        <div class="bottom-order">
            <div class="pull-left"><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($ord->total_amt_paid); ?>
            </div>
            <div class="pull-right"><button type="button" class="btn btn-info btn-sm" align="center" onclick="view('<?php echo $ord->id; ?>')"><i class="fas fa-eye"></i> View Order Details</button></div>
        </div>

    </div>
<?php }
?>

</div>

                        <?php
                        } else {
                        ?><div align="center" class="no-item"><img src="<?php echo asset_url(); ?>images/icons/cow.svg" />
                                <h2 class="mb-2">No orders found.</h2>

                                <p>Looks like you have no orders in your myorder.<br>
                                    <a href="<?= base_url(); ?>">Click here</a> to continue shopping.
                                </p>
                            </div><?php
                                }
                                    ?>
                    </div><!-- /.col-lg-9 -->


                    <div class="col-lg-3">
                        <div class="service-sidebar">
                            <div class="service-sidebar__links pb-3 pt-3">
                                <ul>
                                    <li><a href="<?= base_url() . 'my_account'; ?>"><i class="fas fa-user"></i> My Profile</a></li>
                                    <li><a href="<?= base_url() . 'my_account/my_wishlist'; ?>"><i class="fas fa-heart"></i> My
                                            Wishlist</a></li>
                                    <li><a href="<?= base_url() . 'my_account/my_orders'; ?>" class="active"><i class="fas fa-boxes"></i> My Orders</a></li>
                                    <li><a href="<?= base_url() . 'home/logout'; ?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                                </ul>
                            </div><!-- /.service-sidebar__links -->

                        </div><!-- /.service-sidebar -->
                    </div><!-- /.col-lg-3 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.service-details -->
    </div>
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
<script type="text/javascript">
    $(document).ready(function() {
        $('.order_head').click(function() {
            $(this).toggleClass('active');
            $(this).next('.order_content').slideToggle(500);
        })
    });

    function send_mail(id) {
        $('.myloader').fadeIn();
        $.post('<?php echo base_url() ?>my_account/send_mail', {
            id: id
        }, function(data) {
            $('.myloader').fadeOut();
            alert("Invoice has been sent to Shipping Email ID");
        });
    }

    function view(id) {
        var base_url = '<?php echo base_url(); ?>';
        document.location.href = base_url + "my_account/order_view?id=" + id;
    }
</script>

</html>