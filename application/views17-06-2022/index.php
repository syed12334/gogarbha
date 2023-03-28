<?php
// echo "<pre>";print_r($newproducts);exit;
// echo "<pre>";print_r($bundle_products);exit;
// echo "<pre>";print_r($special_offers);exit;
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

    <link rel="canonical" href="<?= base_url(); ?>" />
    <link rel="alternate" hreflang="en" href="<?php echo base_url(); ?>" />


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
    <style>
        .offer_tag {
            background-color: #014E37;
            color: #fff;
            font-size: 12px;
            font-weight: 500;
            padding: 5px 16px 3px 9px;
            left: 0px;
            position: absolute;
            top: 8px;
            z-index: 9;
            text-transform: uppercase;
        }

        .offer_tag::before {
            content: "";
            position: absolute;
            right: 0;
            top: 0;
            width: 0;
            height: 0;
            border-top: 12px solid #014E37;
            border-bottom: 13px solid #014E37;
            border-right: 7px solid #fff;
        }

        .test {
            width: 100%;
        }


        .owl-wrapper-outer.autoHeight {
            height: auto !important;
        }
        a.viewall {
    float: right;
    font-size: 12px;
    border: 1px solid #2b2b2b;
    padding: 7px 15px;
    border-radius: 5px;
    color: #2b2b2b;
   
}
    </style>
</head>

<body>
    <span class="myloader" style="display: none"></span>
    <?php echo $header; ?>

    <div class="stricky-header stricked-menu main-menu main-menu__two">
        <div class="sticky-header__content"></div>
    </div>

    <section class="main-slider main-slider__two">
        <div class="main-slider__line-1"></div><!-- /.main-slider__line-1 -->
        <div class="main-slider__line-2"></div><!-- /.main-slider__line-2 -->
        <div class="main-slider__line-3"></div><!-- /.main-slider__line-3 -->
        <div class="main-slider__line-4"></div><!-- /.main-slider__line-4 -->
        <div class="main-slider__line-5"></div><!-- /.main-slider__line-5 -->
        <div class="main-slider__line-6"></div><!-- /.main-slider__line-6 -->
        <div class="swiper-container thm-swiper__slider" data-swiper-options='{
        "slidesPerView": 1,
        "loop": true,
        "effect": "fade",
        "autoplay": {
            "delay": 5000
        },
        "navigation": {
            "nextEl": "#main-slider__swiper-button-next",
            "prevEl": "#main-slider__swiper-button-prev"
        }
    }'>
            <div class="swiper-wrapper">
                <?php
                if (is_array($banners)) {
                    foreach ($banners as $value) {
                ?>
                        <div class="swiper-slide">
                            <div class="image-layer" style="background-image: url(<?php echo base_url() . $value->banner_image; ?>);">
                            </div>
                            <!-- /.image-layer -->
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-12 text-center">
                                        <span class="tagline">Welcome to Gogarbha</span>
                                        <h2>Desi Cow <br>
                                            Products</h2>
                                       <!-- <a href="#" class=" thm-btn">Discover More</a>
                                         /.thm-btn dynamic-radius -->
                                    </div><!-- /.col-lg-7 text-right -->
                                </div><!-- /.row -->
                            </div><!-- /.container -->
                        </div><!-- /.swiper-slide -->
                <?php
                    }
                }

                ?>


            </div><!-- /.swiper-wrapper -->

            <!-- If we need navigation buttons -->
            <div class="main-slider__nav">
                <div class="swiper-button-prev" id="main-slider__swiper-button-next"><i class="agrikon-icon-left-arrow"></i>
                </div>
                <div class="swiper-button-next" id="main-slider__swiper-button-prev"><i class="agrikon-icon-right-arrow"></i></div>
            </div><!-- /.main-slider__nav -->

        </div><!-- /.swiper-container thm-swiper__slider -->
    </section><!-- /.main-slider -->

    <section class="about-two" id="about">
        <img src="<?php echo asset_url(); ?>images/icons/about-2-bg-1.png" alt="" class="about-two__bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-two__images">
                        <img src="<?php echo asset_url(); ?>images/resources/about-2-2.jpg" alt="">
                        <img src="<?php echo asset_url(); ?>images/resources/about-2-1.jpg" alt="">
                    </div><!-- /.about-two__images -->
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="about-two__content">
                        <div class="block-title">
                            <div class="block-title__image"></div><!-- /.block-title__image -->
                            <p>Our introduction</p>
                            <h3>Agriculture & Dairy Products
                            </h3>
                        </div><!-- /.block-title -->
                        <div class="about-two__summery">

                            <p class="mb-3">
                            Gogarbha is a mission to re-establish the Bharatiya breed of cows as the economic backbone of the country. We are committed to providing a market and a platform for producers that are committed to manufacturing high-quality panchagavya goods in order to save mother cows and restore Bharat's decentralized economy, which served as a significant model. We are committed to providing the highest quality products to our consumers at all times and are dedicated to rigorously exploring the potential of the Bharatiya cow species to fulfill today's challenges and needs. In this method, we have offered high-quality panchagavya goods for everyday usages, like cosmetics, panchagavya medicines, puja items, and other goods.
                            </p>

                            <p class="mb-3">
                            All of these commodities are produced by various gaushalas and research centers. After using them, you would want to re-use the same product category again. Not only that, but your purchase of these high-quality items will help to grow the national economy by encouraging more people to support the cause of cow protection and conservation.
                            </p>

                            <p>
                            The proceeds are shared with the farmers, and every farmer involved in the product is introduced to the customer. The customer can even directly procure it from them.
                            </p>

                        </div><!-- /.about-two__summery -->


                    </div><!-- /.about-two__content -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.about-two -->

    <section class="service-two service-two__home-two" id="product">
        <div class="service-two__bottom-curv"></div><!-- /.service-two__bottom-curv -->
        <div class="container">

            


            <?php $currencyid = $this->session->userdata('currencyid');
            $priceType = ($currencyid != '') ? $currencyid['price_type'] : '';
            $price_icon =  ($priceType == 2) ? '<span>&#36;</span> ' : '<i class="fas fa-rupee-sign"></i> ';
            ?>




<?php
    if(count($categorywise)) {
        foreach ($categorywise as $categorywise) {
            $cid= $categorywise->id;
            $sql = $this->home_db->sqlExecute('select page_url from subcategory where category_id ='.$cid.' and status=0 group by category_id');
            $cpage_url = $categorywise->cpage_url;
            $procucts = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.name as ptitle,p.home_page,p.page_url,ps.mrp,ps.selling_price,s.name as sname,pi.image_path,pi.thumb,ps.stock from products p left join product_sizes ps on p.id=ps.pid left join product_images pi on p.id=pi.pid left join sizes s on s.id =ps.size_id left join category c on c.id =p.cat_id where p.status =0 and p.home_page =1 and p.cat_id ='.$cid.' group by ps.pid order by p.id desc  limit 4');
          // echo $this->db->last_query();
           ?>
  <h3> <img src="<?php echo base_url(); ?>assets/images/logo_top.svg" alt="" width="15px"> <span><?= $categorywise->name; ?></span>    <a href="<?php echo base_url(); ?>home/product_detailsview?id=<?php echo base64_encode($cid); ?>" class="viewall">View All</a>
</h3>

              <div class="row">

                <?php

                //echo "<pre>";print_r($bundle_products);exit;

                if (is_array($procucts)) {
                    foreach ($procucts as $p) {
                        //$mrp = $p->mrp;
                        //$sell = $p->selling_price;
                        $mrp = $p->mrp;
                        $sell = $p->selling_price;
                        //echo 'user_type______'.$user_type;exit;
                        // if($user_type == 2)
                        // {
                        //   $sell = $p->b2b_selling_price;
                        //   $sel_dollar = $p->b2b_sel_dollar;
                        // }
                        $disc = $this->home_db->discount($mrp, $sell);
                        //print_r($disc);exit;
                        $name = $p->ptitle;
                        $size = $p->sname;
                        $stock = $p->stock;
                        $str = explode("-", $size);
                        if (strlen($name) > 32) {
                            $name = substr($name, 0, 30) . '...';
                        }
                        $url = base_url() . 'product/' . $p->page_url;
                        $sellp = ($priceType == 2) ? $sel_dollar : $sell;

                             if($stock ==0) {

                           }else {
                                    ?>


                     <div class="col-md-3 col-lg-3 col-6">
                                <div class="blog-card">
                                    <?php
                                    if (!empty($disc) && $disc != 0) {
                                    ?>
                                        <div class="offer-tag"><span><?php echo round($disc); ?>%</span></div>
                                    <?php
                                    }
                                    ?>
                                    <?php $rate = $this->products_db->getratings($p->id); ?>
                                    <?php $sql = $this->home_db->getcontent('product_images', 'id', $p->id, '0', '');
                                    ?>
                                    <p class="star_box">
                                        <span class="star <?php if (intval($rate) >= 1) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 2) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 3) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 4) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 5) { ?>star_review<?php } ?>"></span>
                                    </p>
                                    <div class="blog-card__image">
                                        <img src="<?php echo cdn_url() . $p->thumb; ?>" alt="">
                                        <a href="<?php echo $url; ?>"></a>
                                    </div><!-- /.blog-card__image -->
                                    <div class="blog-card__content">

                                        <h3><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h3>
                                        <h6 style="font-size: 13px"><?php echo $p->ptitle; ?></h6>
                                        <p><?= $p->sname ?></p>
                                        <div class="price"><span class="new-price"><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($sell); ?></span>
                                            <?php if (floatval($disc) > 0) { ?>
                                                <span class="old-price"><i class="fas fa-rupee-sign"></i>
                                                    <?php echo $this->home_db->getnumberformat($mrp); ?></span><?php } ?>
                                        </div>
                                        <?php
                                        if (!empty($stock) && $stock > 0) {
                                        ?>



                                        <?php
                                        } else {
                                        }
                                        ?>
                                    </div><!-- /.blog-card__content -->
                                </div><!-- /.blog-card -->
                            </div><!-- /.col-md-6 col-lg-4 -->
                <?php
                           }

            
                    }
                }
                ?>
            </div>
            <!--end--->
           <?php
        }
    }
?>

           
            <br />
<img src="<?php echo asset_url(); ?>images/banner33.jpg" alt="" class="img-fluid">
            <br/>
            <br/>
            <div class="block-title__image"></div><!-- /.block-title__image -->
            <h3><span>Special Products</span></h3>
            <div class="row">
                <?php

                //echo "<pre>";print_r($special_offers);exit;
 $special_offers = $this->home_db->sqlExecute('select c.name as cname,c.page_url as cpage_url,p.id,p.name as ptitle,p.home_page,p.page_url,ps.mrp,ps.selling_price,s.name as sname,pi.image_path,pi.thumb,ps.stock from products p left join product_sizes ps on p.id=ps.pid left join product_images pi on p.id=pi.pid left join sizes s on s.id =ps.size_id left join category c on c.id =p.cat_id where p.status =0 and p.special =1  group by ps.pid order by p.id desc  limit 4');
                if (is_array($special_offers)) {
                    foreach ($special_offers as $p) {
                        //$mrp = $p->mrp;
                        //$sell = $p->selling_price;
                        $mrp = $p->mrp;
                        $sell = $p->selling_price;

                        $stock = $p->stock;
                        //echo 'user_type______'.$user_type;exit;
                        // if($user_type == 2)
                        // {
                        //   $sell = $p->b2b_selling_price;
                        //   $sel_dollar = $p->b2b_sel_dollar;
                        // }
                        $disc = $this->home_db->discount($mrp, $sell);
                        //print_r($disc);exit;
                        $name = $p->ptitle;
                        if (strlen($name) > 32) {
                            $name = substr($name, 0, 30) . '...';
                        }
                        $url = base_url() . 'product/' . $p->page_url;
                        if (!empty($stock) && $stock > 0) {
                ?>
                            <div class="col-md-3 col-lg-3 col-6">
                                <div class="blog-card">
                                    <?php
                                    if (!empty($disc) && $disc != 0) {
                                    ?>
                                        <div class="offer-tag"><span><?php echo round($disc); ?>%</span></div>
                                    <?php
                                    }
                                    ?>
                                    <?php $rate = $this->products_db->getratings($p->id); ?>
                                    <?php $sql = $this->home_db->getcontent('product_images', 'id', $p->id, '0', '');
                                    ?>
                                    <p class="star_box">
                                        <span class="star <?php if (intval($rate) >= 1) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 2) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 3) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 4) { ?>star_review<?php } ?>"></span>
                                        <span class="star <?php if (intval($rate) >= 5) { ?>star_review<?php } ?>"></span>
                                    </p>
                                    <div class="blog-card__image">
                                        <img src="<?php echo cdn_url() . $p->thumb; ?>" alt="">
                                        <a href="<?php echo $url; ?>"></a>
                                    </div><!-- /.blog-card__image -->
                                    <div class="blog-card__content">

                                        <h3><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h3>
                                        <h6 style="font-size: 13px"><?php echo $p->ptitle; ?></h6>
                                        <p><?= $p->sname ?></p>
                                        <div class="price"><span class="new-price"><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($sell); ?></span>
                                            <?php if (floatval($disc) > 0) { ?>
                                                <span class="old-price"><i class="fas fa-rupee-sign"></i>
                                                    <?php echo $this->home_db->getnumberformat($mrp); ?></span><?php } ?>
                                        </div>
                                        <?php
                                        if (!empty($stock) && $stock > 0) {
                                        ?>



                                        <?php
                                        } else {
                                        }
                                        ?>
                                    </div><!-- /.blog-card__content -->
                                </div><!-- /.blog-card -->
                            </div><!-- /.col-md-6 col-lg-4 -->

                <?php
                        }
                    }
                } else {
                    echo "<h3 style='text-align:center'>No products found</h3>";
                }
                ?>








            </div><!-- /.row -->




        </div><!-- /.container -->
    </section><!-- /.service-two -->
    <section class="video-one">
        <img src="<?php echo asset_url(); ?>images/icons/video-bg-1-1.png" class="video-one__bg" alt="">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="video-one__image">
                        <img src="<?php echo asset_url(); ?>images/resources/video-1-1.jpg" alt="">
                        <a href="https://www.youtube.com/watch?v=sHbSeU_flAo?rel=0&enablejsapi=1" class="video-popup"><i class="fa fa-play"></i></a><!-- /.video-popup -->

                    </div><!-- /.video-one__image -->
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="video-one__content pt-5 pb-5">
                        <div class="block-title">
                            <div class="block-title__image"></div><!-- /.block-title__image -->
                            <p>Get to know us</p>
                            <h3>Growing Healthy Food</h3>
                        </div><!-- /.block-title -->
                        <div class="video-one__summery">
                       <p> Cows are an integral part of Indians life. The major portion of our population is engaged in farming. The cow is one of those animals that is worshipped in our country, and they play a very significant role in our agriculture. Farmers manage cows in large groups, but many farmers know their cows just by sight, which is incredible. </p>
<p>Cows are intelligent, emotional, and affectionate creatures who form strong social bonds with their farmer. If you call a cow by name, you have more of a one-to-one relationship. Most farmers have a sense of attachment to their cows with the bond ranging to a family relationship. Farmers go to great lengths to care for their cows. The farmers can’t rest until the cows are comfortable. Good care improves the wellbeing of the cows in terms of health and productivity.</p>
<p>The farmer-cow bond is strong and will continue throughout time.</p>

                        </div><!-- /.video-one__summery -->
                         
                         
                    </div><!-- /.video-one__content -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.video-one -->






    <section class="call-to-action jarallax" data-jarallax data-speed="0.3" data-imgPosition="-80% 50%">
        <img class="call-to-action__bg jarallax-img" src="<?php echo asset_url(); ?>images/backgrounds/cta-1-bg-1.jpg" alt="parallax-image" />
        <!-- /.call-to-action__bg -->
        <div class="container">
            <div class="call-to-action__content">
                <div class="row">
                    <div class="col-3">
                <img src="<?php echo asset_url(); ?>images/Kamdhenu.png" alt="" class="img-fluid">
                </div>
                <div class="col-9">
                <h3 class="pt-5">Gau Amritham God's Kailasam</h3>
                    </div>
                    </div>
            </div><!-- /.call-to-action__content -->
            <div class="call-to-action__button">
                <a href="<?php echo asset_url(); ?>images/Kamdhenu.png" download="<?php echo asset_url(); ?>images/Kamdhenu.png" class="thm-btn">Download</a><!-- /.thm-btn -->
            </div><!-- /.call-to-action__button -->
        </div><!-- /.container -->
    </section><!-- /.call-to-action -->

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

        var banner = $("#banner");
        $("a").on("click", function(event) {
            //check the value of this.hash
            if (this.hash !== "") {
                event.preventDefault();

                $("html, body").animate({
                    scrollTop: $(this.hash).offset().top
                }, 500);

                //add hash to the current scroll position
                window.location.hash = this.hash;

            }



        });

        var category_info_slider = $("#category_info_slider");
        category_info_slider.owlCarousel({
            autoPlay: 3000,
            stopOnHover: true,
            paginationSpeed: 400,
            slideSpeed: 300,
            itemsCustom: [
                [0, 1],
                [400, 2],
                [768, 3],
                [992, 3],
                [1200, 3],
                [1600, 3]
            ],
            autoHeight: true,
        });
        var special_product_sl = $("#special_product_sl");
        special_product_sl.owlCarousel({
            autoPlay: false,
            stopOnHover: true,
            paginationSpeed: 400,
            slideSpeed: 300,
            itemsCustom: [
                [0, 1],
                [400, 2],
                [768, 3],
                [992, 4],
                [1200, 5],
                [1600, 5]
            ],
            autoHeight: true,
        });
        $(".special_product .next").click(function() {
            special_product_sl.trigger('owl.next');
        })
        $(".special_product .prev").click(function() {
            special_product_sl.trigger('owl.prev');
        })
        var clients = $("#clients");
        clients.owlCarousel({
            autoPlay: 6000,
            stopOnHover: true,
            paginationSpeed: 400,
            pagination: false,
            slideSpeed: 300,
            itemsCustom: [
                [0, 1],
                [400, 2],
                [768, 3],
                [992, 4],
                [1200, 5],
                [1600, 5]
            ],
            autoHeight: true,
        });
        var testimonial = $("#testimonial");
        testimonial.owlCarousel({
            autoPlay: true,
            stopOnHover: true,
            paginationSpeed: 400,
            slideSpeed: 300,
            singleItem: true,
            autoHeight: true,
        });
        $('.btns').hover(function() {
            $(this).find('.text').show().stop().animate({
                top: '-11px'
            }, 300);
        }, function() {
            $(this).find('.text').hide().stop().animate({
                top: '50%'
            }, 300);
        });
    });
</script>
<script>
    $(document).ready(function() {
        $("#testi").owlCarousel({
            itemsCustom: [
                [0, 1],
                [768, 2],
                [992, 2],
                [1200, 2]
            ],
            autoPlay: false,
            navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>',
                '<i class="fa fa-angle-right" aria-hidden="true"></i>'
            ],
            navigation: false,
            pagination: true
        });
    });
</script>
<script type="text/javascript">
    (function($) {
        $("#blog").owlCarousel({
            itemsCustom: [
                [0, 1],
                [600, 2],
                [768, 2],
                [992, 2],
                [1200, 3],
                [1410, 3]
            ],
            navigationText: ['<i class="fa fa-long-arrow-left"></i>', '<i class="fa fa-long-arrow-right"></i>'],
            navigation: true,
            pagination: false
        });
    }(jQuery));
</script>



</body>

</html>