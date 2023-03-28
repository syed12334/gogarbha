
<?php
$page = (int) (!isset($_GET['p'])) ? 1 : $_GET['p'];
$limit=20;
//echo $page;
# sql query
$sql = $productsSql;
//echo "<pre>";print_r($sql);exit;
# find out query stat point
$start = ($page * $limit) - $limit;
$prodcount=count($this->home_db->runSql($sql));
# query for page navigation
if( $prodcount > ($page * $limit)){
	$next = ++$page;
}
$query = $this->home_db->runSql( $sql . " LIMIT {$start}, {$limit}");
//echo $this->db->last_query();exit;

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

<link rel="canonical" href="<?php echo base_url().'my_account/my_wishlist';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'my_account/my_wishlist';?>"/>

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
  <?php echo $common; ?>
</head>
<style>
.alert {
    position: absolute;
    top: 80px;
    left: 0;
    right: 0;
    font-size: 12px;
    border-radius: 0;
    z-index: 99;
    text-transform: capitalize;
}

.blog-card__content {
    height: 195px;
}

@media(max-width:768px){
    .blog-card__content {
    padding: 12px 10px 20px 10px;
    height: 165px;
}

a.btn.btn-danger.awishlist.text-center {
    font-size: 11px;
}

.col-md-4.col-6 {
    padding: 8px;
}
}
</style>
<body class="bg-dark1">

  <?php echo $header; ?>
   <div class="page-wrapper">
      <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <section class="page-header">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url() ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container soft">
                <ul class="thm-breadcrumb list-unstyled">
                    
                    <li><span>My Wishlist</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details myaccount">
            <div class="container">
                <div class="row">
                    
                    <div class="col-lg-9">
                         <?php if($prodcount){?>
                         <div class="row">
                              <?php 
                                if(count($query) >0){
                                    foreach ($query as $p){
                                        $url = base_url().'product/'.$p->page_url;
                                        $mrp = $p->mrp;
                                        $sell = $p->selling_price;
                                        $stock = $p->stock;
                                        $disc = $this->home_db->discount($mrp,$sell);
                                        $name = $p->ptitle;
                                        if(strlen($name) > 32){
                                            $name = substr($name, 0, 30).'...';
                                        }

                                        if(!empty($stock) && $stock >0) {
                                            ?>
                                             <div class="col-md-4 col-6">
                                <div class="blog-card">
                               <?php 
                                if(!empty($disc)  && $disc !=0) {
                                    ?>
                                    <div class="offer-tag"><span><?php  echo round($disc);?>%</span></div>
                                    <?php
                                }else {
                                    
                                }
                            ?>
                             <?php $rate = $this->products_db->getratings($p->id); ?>
                             <?php $sql=$this->home_db->getcontent('product_images','id',$p->id,'0','');
                                        ?>
                        <p class="star_box">
                                <span class="star <?php if (intval($rate) >= 1) { ?>star_review<?php } ?>"></span>
                                <span class="star <?php if (intval($rate) >= 2) { ?>star_review<?php } ?>"></span>
                                <span class="star <?php if (intval($rate) >= 3) { ?>star_review<?php } ?>"></span>
                                <span class="star <?php if (intval($rate) >= 4) { ?>star_review<?php } ?>"></span>
                                <span class="star <?php if (intval($rate) >= 5) { ?>star_review<?php } ?>"></span>
                            </p> 
                            <div class="blog-card__image">
                                <img src="<?php echo cdn_url() . $p->image_path; ?>" alt="">
                                  <a href="<?php echo $url; ?>"></a>
                            </div><!-- /.blog-card__image -->
                            <div class="blog-card__content">
   
                                <h3><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h3>
                                 <h6 style="font-size: 13px"><?php echo $p->sname; ?></h6>
                                <div class="price"><span class="new-price"><i class="fas fa-rupee-sign"></i>  <?php echo $this->home_db->getnumberformat($sell); ?></span>
                                      <?php if (floatval($disc) > 0) {?>
                                 <span class="old-price"><i class="fas fa-rupee-sign"></i>
                                    <?php echo $this->home_db->getnumberformat($mrp); ?></span><?php } ?>
                                </div>
                                 <?php
                            if(!empty($stock) && $stock >0) {
                               ?>
                                <!--  <a href="javascript:add_cart('<?php echo $p->cpage_url; ?>','<?php echo $p->ppid; ?>');remove_wish(<?php echo $p->ppid;?>);" class="thm-btn"><i class="fas fa-shopping-cart"></i> &nbsp; ADD TO CART</a> --><!-- /.thm-btn -->
                                <a class="btn btn-danger awishlist text-center" href="javascript:void(0);" onclick="remove_wish(<?php echo $p->id;?>);"
                                     class="added" title="Remove Item"><i class="fas fa-times"></i> Remove Item</a><!-- /.thm-btn -->

                                <?php
                            }else {

                                  ?>
<p style="color:red;float: right;margin-top:10px">Out of Stock</p>
                                <?php
                            }?>
                            </div><!-- /.blog-card__content -->
                        </div><!-- /.blog-card -->
                            </div><!-- /.col-md-6 -->
                                            <?php

                                        }
                                    }
                                }
                                ?>
                           

                            
                            
                         </div>
                          <?php }else {
                            ?>
                            <div align="center" class="no-item"><img src="<?php echo asset_url(); ?>images/icons/cow.svg"/>
                                    <h2 class="mb-2">No wishlist.</h2>

<p>Looks like you have no wishlist.<br>
<a href="<?= base_url();?>">Click here</a> to continue shopping.</p>
                                    </div>
                            <?php
                          } ?>

                    </div><!-- /.col-lg-9 -->


                    <div class="col-lg-3">
                        <div class="service-sidebar">
                            <div class="service-sidebar__links pb-3 pt-3">
                                <ul>
                                   <li><a href="<?= base_url().'my_account';?>"><i class="fas fa-user"></i> My Profile</a></li>
                                    <li><a href="<?= base_url().'my_account/my_wishlist';?>" class="active"><i class="fas fa-heart"></i> My
                                            Wishlist</a></li>
                                    <li><a href="<?= base_url().'my_account/my_orders';?>"><i class="fas fa-boxes"></i> My Orders</a></li>
                                    <li><a href="<?= base_url().'home/logout';?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
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
        function incrementValue(e) {
            e.preventDefault();
            var fieldName = $(e.target).data('field');
            var parent = $(e.target).closest('div');
            var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

            if (!isNaN(currentVal)) {
                parent.find('input[name=' + fieldName + ']').val(currentVal + 1);
            } else {
                parent.find('input[name=' + fieldName + ']').val(0);
            }
        }

        function decrementValue(e) {
            e.preventDefault();
            var fieldName = $(e.target).data('field');
            var parent = $(e.target).closest('div');
            var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

            if (!isNaN(currentVal) && currentVal > 0) {
                parent.find('input[name=' + fieldName + ']').val(currentVal - 1);
            } else {
                parent.find('input[name=' + fieldName + ']').val(0);
            }
        }

        $('.input-group').on('click', '.button-plus', function (e) {
            incrementValue(e);
        });

        $('.input-group').on('click', '.button-minus', function (e) {
            decrementValue(e);
        });

</script>
</body>

</html>