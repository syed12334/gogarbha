<?php //error_reporting(1);ini_set('display_errors',1);

//echo "<pre>";print_r($orders);exit;
?>
<?php $order_products = $this->home_db->getcontent('orders_products', 'oid', $orders[0]->id, '', '');
//echo $this->db->last_query();exit;
//echo "<pre>";print_r($order_products);exit;
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
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<![endif]-->
    <style>
        .det {
            line-height: 23px;
            font-size: 13px;
        }

        b {
            font-weight: 600;
        }

        .infobg {
            max-width: 100%;
        }

        table {
            margin-bottom: -1px !important;
        }

        .cart-item{
            box-shadow: none!important;
            margin: 0!important;
        }
    </style>
</head>

<body class="bg-dark1">
    <?php echo $header; ?>


    <div class="page-wrapper">
        <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <section class="page-header page-ddl">
            <div class="page-header__bg" style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <ul class="thm-breadcrumb list-unstyled">

                    <li><span>Order Detail</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details myaccount dark-bg-one pt-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="infobg">
<?php $order_bill = $this->home_db->getcontent('orders_bill_ship', 'oid', $orders[0]->id, '', '');
                        ?>
                            <h1>
                                ORDER HISTORY
                                Order ID
                                <span class="id"><?php echo $orders[0]->orderid ?></span> on
                                <?php $date = date_create($orders[0]->ordered_date);
                                echo $ordered_date = date_format($date, "M d Y"); ?>
                            </h1>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <th>
                                            Billing Address
                                        </th>
                                        <th>
                                            Shipping Address
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <?php echo $order_bill[0]->bname ?><br>
                                            <span class="address">
                                                <?php echo $order_bill[0]->baddr1 ?>,<br>
                                                <?php if (!empty($order_bill[0]->baddr2)) { ?>
                                                    <?php echo $order_bill[0]->baddr2 ?><br>
                                                <?php } ?>

                                                <?php echo $order_bill[0]->bpincode ?>. <br>
                                                <?php echo $order_bill[0]->bstate ?> India. <br>
                                                Phone : +91 <?php echo $order_bill[0]->bphone ?><br>
                                            </span>
                                        </td>
                                        <td>
                                            <?php echo $order_bill[0]->sname ?><br>
                                            <span class="address">
                                                <?php echo $order_bill[0]->saddr1 ?>,<br>
                                                <?php if (!empty($order_bill[0]->saddr2)) { ?>
                                                    <?php echo $order_bill[0]->saddr2 ?>,<br>
                                                <?php } ?>

                                                <?php echo $order_bill[0]->spincode ?>. <br>
                                                India. <br>
                                                <?php if (!empty($order_bill[0]->landmark)) { ?>Landmark :
                                                <?php echo $order_bill[0]->landmark ?><br><?php } ?>
                                            Phone : +91 <?php echo $order_bill[0]->sphone ?><br>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td width="50%"><b>Order Placed on :</b>
                                            <?php $date = date_create($orders[0]->ordered_date);
                                            echo $ordered_date = date_format($date, "d M Y"); ?> </td>
                                        <td><b>Payment Mode :</b>
                                            <?php echo $orders[0]->paymode; ?> </td>
                                    </tr>
                                    <tr>
                                        <?php
                                        if (!empty($orders[0]->shipping_date)) {
                                        } else {
                                        ?>

                                            <td><b>Expected Delivery :</b>
                                                <?php echo date('d M Y', strtotime(+$orders[0]->delivery_days . "days")); ?></td>


                                        <?php
                                        }
                                        ?>

                                        <?php
                                        if ($orders[0]->status == "3") {
                                        ?>

                                            <td><b>Shipped On :</b>
                                                <?php echo date('d M Y', strtotime($orders[0]->shipping_date)); ?></td>


                                        <?php
                                        }
                                        ?>


                                        <?php

                                        if ($orders[0]->status == "4") {
                                        ?>

                                            <td><b>Delivered On :</b>
                                                <?php echo date('d M Y', strtotime($orders[0]->delivered_date)); ?></td>


                                        <?php
                                        }
                                        ?>
                                    </tr>

                                </tbody>
                            </table>
                            <div class="order_box">

                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <th>Item</th>
                                            <th class="text-center">Quantity</th>
                                            <th class="text-right">Price</th>
                                        </tr>
                                        <?php if (is_array($order_products)) {
                                            $tamm = [];
                                            $priceAmount = [];
                                            foreach ($order_products as $ordp) {
                                                //$priceAmount[] = $ordp->price;
                                                $tamm[] = $ordp->tax;
                                                $image = $ordp->image_path;
                                                $priceAmount[] = $ordp->price * $ordp->qty + $ordp->tax;
                                                $pacid = $ordp->package_id;
                                                $packname = "";

                                                if ($pacid == 1) {
                                                    $packname .= "Gold";
                                                } else if ($pacid == 2) {
                                                    $packname .= "Silver";
                                                } else if ($pacid == 3) {
                                                    $packname .= "Normal";
                                                }

                                             

                                        ?>
                                                <tr>
                                                    <td>
                                                        <div class="row">
                                                        <div class="item_img pull-left col-2">
                                                            <a href="#"><img src="<?php echo $ordp->image_path; ?>" class="img-fluid"></a>
                                                        </div>
                                                        <div class="item_detail cart-item col-10">
                                                            <div class="det">
                                                                <h3><?php echo $ordp->pname ?></h3>
                                                                <h6 class="mb-1 mt-1"><?php echo $ordp->ptitle ?></h6>
                                                                <h4> Product Code:<?php echo $ordp->pcode ?></h4>
                                                                <div class="badge badge-warning"><?php echo $packname ?></div>
                                                                
                                                                <p class="det">
                                                                    <?php if ($ordp->size_id != '0') { ?>Size:<?php echo $ordp->size_name; ?> <?php } ?>
                                                                </p>
                                                                </div>
                                                        </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <?php echo $ordp->qty; ?> </td>
                                                    <td class="text-right">
                                                        <i class="fas fa-rupee-sign"></i>
                                                        <?php echo $this->home_db->getnumberformat($ordp->price * $ordp->qty + $ordp->tax); ?>
                                                    </td>
                                                </tr>

                                        <?php
                                            }
                                        }
                                        ?>

                                        <tr>
                                            <td colspan="3" class="total text-right bg-slight">
                                                <table class="table table-none">
                                                    <tbody>
                                                        <tr>
                                                            <td>Total</td>
                                                            <td width="150px"><i class="fa fa-rupee-sign"></i> <?php echo array_sum($priceAmount); ?></td>

                                                        </tr>
                                                        <?php
                                                        if (!empty($orders[0]->taxamount) && $orders[0]->taxamount != 0) {
                                                        ?>
                                                            <tr>
                                                                <td> Tax </td>
                                                                <td><span style="margin-right:6px">+</span><i class="fas fa-rupee-sign"></i>
                                                                    <?php echo $orders[0]->taxamount; ?> </td>
                                                            </tr>
                                                        <?php
                                                        }
                                                        ?>
                                                        <tr>
                                                            <td> Delivery Charge </td>
                                                            <td><span style="margin-right:6px">+</span><i class="fas fa-rupee-sign"></i>
                                                                <?php echo $this->home_db->getnumberformat($orders[0]->devilery_charge) ?> </td>
                                                        </tr>
                                                        <?php
                                                        if (!empty($orders[0]->discount) && $orders[0]->discount != 0) {
                                                        ?>
                                                            <tr>
                                                                <td> Discount </td>
                                                                <td>
                                                                    <?php echo $orders[0]->discount_per . "%"; ?>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td> Discount Amount </td>
                                                                <td><span style="margin-right:6px">-</span><i class="fas fa-rupee-sign"></i>
                                                                    <?php echo $this->home_db->getnumberformat($orders[0]->discount) ?>
                                                                </td>
                                                            </tr>
                                                        <?php
                                                        } else {
                                                        }
                                                        ?>

                                                        <tr>
                                                            <td><b>Grand Total</b> </td>
                                                            <td><i class="fas fa-rupee-sign"></i>
                                                                <b><?php echo $this->home_db->getnumberformat($orders[0]->total_amt_paid) ?></b>
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>

                                </table>



                            </div>

                        </div>
                    </div>
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

</body>

</html>