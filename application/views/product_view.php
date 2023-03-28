<?php

$prodsize ="";
if(!empty($product[0]->psid)) {
    $prosize = $this->home_db->sqlExecute('select s.name,s.id as sid,ps.id as psid from product_sizes ps left join sizes s on s.id = ps.size_id where ps.pid ='.$product[0]->id.'');
}


//echo "<pre>";print_r($product);exit;
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
 <style>
 .product_image_wr .thumbnails {
    text-align: center;
    padding: 10px 0;
    clear: left;
    background: #fbfbfb!important;
}

.product_image_wr .thumbnails ul {
    padding: 0;
    margin: 0;
}


.zoomContainer{
    z-index: 9999;
}

.product_image_wr .thumbnails .thumbnail_box {
    display: inline-block;
    width: 50px;
    border: 1px solid #eaeaea;
    padding: 2px;
    margin: 0 10px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -moz-transition-property: all;
    -o-transition-property: all;
    -webkit-transition-property: all;
    transition-property: all;
    -moz-transition-duration: 0.5s;
    -o-transition-duration: 0.5s;
    -webkit-transition-duration: 0.5s;
    transition-duration: 0.5s;
}
.product_image_wr .thumbnails .thumbnail_box a {
    display: block;
}

.product_image_wr .thumbnails .thumbnail_box a img {
    width: 100%;
}


.product_image_wr {
    border: 1px solid #eaeaea;
    padding: 10px;
    float: left;
    width: 100%;
    overflow: hidden;
    margin-bottom: 20px;
}

.product_image_wr {
    background-color: #fff;
}

.product_image_wr .product_image ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

.product_image_wr .product_image ul .img_box {
    width: 100%;
    margin-bottom: 40px;
}

.product_image_wr .product_image ul .img_box img {
    width: 100%;
}


@media (min-width: 1200px){
.product_image_wr .thumbnails .thumbnail_box {
    width: 100px;
    padding: 10px;
}
}
@media (min-width: 992px){
.product_image_wr .thumbnails .thumbnail_box {
    width: 80px;
    padding: 10px;
}
}
@media (max-width: 767px) {
    .rop {
    position: relative;
    top:0px!important;
}
}
@media (min-width: 768px){
.product_image_wr .thumbnails .thumbnail_box {
    width: 70px;
    padding: 10px;
}
}
.rop {
    position: relative;
    top:-150px;
}


.pack span{border:1px solid #ccc; font-size: 15px; color:#000; display:inline-block; padding:5px 8px; margin-left: 8px;cursor: pointer}
.pack span.active{color:red;}
 </style>

    <!-- template styles -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/main.css">
    <link rel="canonical" href="<?php if (!empty($product) && isset($product)) {
                                    echo base_url() . 'product/' . $product[0]->ppage_url;
                                } else {
                                    redirect('My404');
                                    exit();
                                } ?>" />
    <link rel="alternate" hreflang="en" href="<?php if (!empty($product) && isset($product)) {
                                                    echo base_url() . 'product/' . $product[0]->ppage_url;
                                                } else {
                                                    redirect('My404');
                                                    exit();
                                                } ?>" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <![endif]-->
    <?php echo $common; ?>
<!--     <script type="application/javascript">
        window.fbAsyncInit = function() {
            FB.init({
                appId: '3182287005425708',
                cookie: true,
                xfbml: true,
                version: 'v12.0'
            });

            FB.AppEvents.logPageView();

        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        function FBShareOp(title, descr, image, url) {
            if (title == "noval") {
                title = $("#tle").val();
            }
            if (descr == "noval") {
                descr = $("#des").val();
            }
            if (image == "noval") {
                image = $("#imge").val();
            }
            if (url == "noval") {
                url = $("#url12").val();
            }
            FB.ui({
                method: 'feed',
                redirect_uri: '<?php echo base_url() ?>',
                name: title,
                link: url,
                picture: image,
                description: descr

            }, function(response) {
                if (response && response.post_id) {} else {}
            });
        }
    </script> -->
    <style type="text/css">
        .product_box .img .img_box .img_src img {
            width: auto;
        }

        .tabs_container .prodtabcontent {
            padding: 35px 15px;
        }

        .availability .available_result {
            margin-top: 0px;
        }

        .breadcrumb {
            color: #014E37;
        }

        tr {
            line-height: 32px;
        }
    </style>
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
            top: 29px;
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

        .rela {
            position: relative !important;
            z-index: 0;
        }

        .exp {
            color: #000 !important;
            font-size: 12px !important;
            margin: -8px 0 10px 0 !important;
            font-weight: 500 !important;
        }

        p.edit.avil,
        p.edit.not-avil {
            background: #72d975;
            font-size: 14px;
            float: none;
            padding: 15px;
            font-weight: 400;
        }

        p.edit.not-avil {
            background: #ff6a9c;
        }
    </style>
</head>

<body class="right-bg">
      <div class="toast" style="position: fixed; top:5px; right: 5px; z-index: 99;" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
    <div class="toast-header">
      <strong class="mr-auto text-primary">My Cart</strong>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">×</button>
    </div>
    <div class="toast-body">
      Item added to cart
    </div>
  </div>
</div>
    </div>
    <span class="myloader" style="display: none"></span>
    <?php echo $header; ?>

    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
        <!-- /.page-header__bg -->
        <div class="container">
            <ul class="thm-breadcrumb list-unstyled">

                <li><span><a href="<?php echo base_url(); ?>">Home</a> | <?php echo $product[0]->cname; ?></span></li>
            </ul><!-- /.thm-breadcrumb list-unstyled -->

        </div><!-- /.container -->
    </section><!-- /.page-header -->

    <section class="service-details pt-5 pb-5">
        <?php if (is_array($product)) {
            $mrp = $product[0]->mrp;
            $sell = $product[0]->selling_price;
            $disc = $this->home_db->discount($mrp, $sell);
            $ppackage = $this->home_db->sqlExecute('select  * from productpackage where pid ='.$product[0]->id.'');
        ?>
            <div class="container">

                <div class="row" >
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6"></div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <h4 class="mt-0 mb-1"><?php echo $product[0]->title; ?></h4>
                        <h6 class="mb-1"> Product Code: <?php if (!empty($product[0]->pcode)) { ?> <?php echo $product[0]->pcode ?> <?php } ?></h6>
                        <hr>
                        <div class="blog-card__meta mb-3">
                            <?php $rate = $this->products_db->getratings($product[0]->id);
                                //echo $this->db->last_query();
                            //echo "<pre>";print_r($rate);

                             ?>
                            <a><i class="far fa-star"></i><?php if(!empty($rate)) {echo ceil($rate); }else { echo 0; }?> Rating</a> &nbsp;&nbsp; |
                            <a class="review-t"><i class="far fa-comments"></i> <?php $reviews = $this->home_db->getRecords('reviews', ['pid' => $product[0]->id,'status'=>0], '*');
                               // echo $this->db->last_query();                                      
                                          if (is_array($reviews)) {
                                                                                    echo count($reviews);
                                                                                } else {
                                                                                    echo 0;
                                                                                } ?> Reviews</a> &nbsp;&nbsp; |
                              <?php if ($product[0]->stock > 0) { ?><a class="text-success"><i class="fa fa-check text-success"></i> In Stock</a><?php } else { ?><a class="text-danger"><i class="fa fa-times text-danger"></i> Out of Stock</a><?php } ?>
                        </div>
                        <hr>
                        <input type="hidden" id="hid" value="<?php echo $product[0]->id; ?>">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="row" id="prosizeappend">
                    
                    <?php $images = $this->home_db->sqlExecute('select * from product_images where pid='.$product[0]->id.'');
                     $images1 = $this->home_db->sqlExecute('select * from product_images where pid='.$product[0]->id.' limit 1');
                   // echo $this->db->last_query();exit;
                    ?>
                    <div class="col-md-6 rop">
                        <div class="product_image_wr">
                                <div class="product_image">
                                    <ul class="rslides" id="slider1">

                                    <li class="img_box"><img id="zoom_03" src="<?php echo cdn_url() . $images1[0]->image_medium; ?>" data-zoom-image="<?php echo cdn_url() . $images1[0]->image_large; ?>"/> </li>

                                </ul>
                                </div>
                                <div class="thumbnails">
                                   <ul id="gallery_01">
                            <?php
                                if(count($images) >0) {
                                    foreach ($images as $key => $value) {
                                        ?>
                                     

                                    <li class="thumbnail_box">  <span data-image="<?php echo cdn_url() . $value->image_medium; ?>" data-zoom-image="<?php echo cdn_url() . $value->image_large; ?>" style="cursor:pointer">
        <img id="zoom_03" src="<?php echo cdn_url() . $value->image_large; ?>"/>
      </span>
     </li>

                             
                                        <?php
                                    }
                                }
                            ?>
                               </ul>
                                </div>
                            </div>

                    </div><!-- /.col-md-6 -->

                    <div class="col-md-6 dets">
                    

                        <div class="price">
                            <span class="main"><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($product[0]->selling_price); ?></span>
                              <span class="hash-price"><?php if (floatval($disc) > 0) { ?><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($product[0]->mrp); ?> <?php } ?></span>
                            <h6><?php
                                    if(!empty($product[0]->psize)) {
                                        $sql = $this->home_db->getRecords('sizes',['id'=>$product[0]->sid],'id,name');

                                        echo $sql[0]->name;
                                    }
                            ?></h6>
                            </span>
   <?php 
                                if(!empty($disc) && $disc !=0)  {
                                    ?>
  <div class="offer-tag mr-5 position-relative"><span><?php  echo round($disc);?>%</span></div>
                                    <?php
                                }
                            ?>

                          
                        </div>
<div class="sizes">
    <?php
        if(count($prosize) >0) {
            foreach ($prosize as $key => $value) {
                ?>
                    <span id="ssl" class="ssl <?php if($value->psid == $product[0]->psid) { echo 'active';}?>" onclick="prosize(<?= $product[0]->id; ?>,<?= $value->psid;?>,<?= $value->sid?>,'<?= $product[0]->ppage_url;?>')"><?php echo $value->name;?></span>
                <?php
            }
        }
    ?>
                            
                            </div>
                        <div class="special-box p-4 text-white">

                            <div class="availability p-0">
                                <div id="checkpin" class="pincode_form" <?php if ($this->session->userdata('pincode')) { ?> <?php } ?>>
                                    <h6>Check delivery options at your location</h6>
                                    <form onsubmit="return checkpincodes();">
                                        <div class="input-group mb-3">
                                            <input type="text" required="required" placeholder=" your pincode" class="onlynumbers checkpincode form-control" maxlength="6" name="pincode" id="pincode" value="">
                                            <div class="input-group-append">
                                                <input type="submit" id="pinbtn button-addon2" value="Check" class="btn btn-info">
                                            </div>
                                        </div>

                                    </form>
                                    <?php
                                    $days = 6;
                                    $terms = '';
                                    if (is_array($settings)) {
                                        if (!empty($settings[0]->delivery_days)) {
                                            $days = $settings[0]->delivery_days;
                                        }
                                        $terms = $settings[0]->product_terms;
                                    }
                                    if (intval($days) > 1) {
                                        $days = '' . ($days - 1) . '-' . ($days + 1) . ' working days';
                                    } else if (intval($days) == 1) {
                                        $days = '1 working day';
                                    } else if (intval($days) == 0) {
                                        $days = '5-7 working days';
                                    }
                                    ?>
                                    <p style="color:#000"><b>(Shipping is done in batches to help the customer on reducing shipping cost.)</b></p>
                                    <p class="exp">Expected delivery <?php echo $days; ?></p>
                                </div>
                                <div class="available_result" id="pinchecked" <?php if (!$this->session->userdata('pincode')) { ?>style="display: none;" <?php } ?>>
                                
                                </div>
                            </div>

                        </div><!-- /.special-box -->

                        <div class="call-to-action__button">
                            <!--    <div class="left-align">
                                <div class="input-group qty">
                                    <input type="button" value="-" class="button-minus" data-field="quantity">
                                    <input type="number" step="1" max="" value="1" name="quantity"
                                        class="quantity-field">
                                    <input type="button" value="+" class="button-plus" data-field="quantity">
                                </div>
                            </div> -->



                            <?php
                            $wish = 0;
                            if (!empty($UserDetail)) {
                                $db = array(
                                    'categ' => $product[0]->cpage_url,
                                    'pid' => $product[0]->id,
                                    'user_id' => $UserDetail[0]->id
                                );
                                $wish = $this->home_db->checkwishlist($db);
                            }
                            ?>
                            <!--  <div class="left-align"> <span class="share wish" title="Add to wishlist"><i
                                        class="fas fa-heart"></i></span> </div> -->
                            <?php if ($product[0]->stock > 0) { ?>

                                <div class="left-align">
                                    <span class="add-to-cart thm-btn " onclick="add_cart('<?php echo $product[0]->cpage_url; ?>','<?php echo $product[0]->psid; ?>')" style="cursor:pointer" id="showToast">ADD TO CART</span><!-- /.thm-btn -->
                                </div>
                                <a href="javascript:void(0);" categ="<?php echo $product[0]->cpage_url ?>" wid="<?php echo $product[0]->id; ?>" id="w<?php echo $product[0]->id; ?>" <?php if ($wish == 0) { ?>class="share wish awishlist addto_wish<?php echo $product[0]->id; ?>" <?php } else { ?>class="btn" <?php } ?>>
                                    <i id="icon<?php echo $product[0]->id ?>" class="far  <?php if ($wish == 0) { ?>fa-heart<?php } else { ?>fa-heart<?php } ?>"></i>
                                    <?php /* if ($wish == 0) { ?>Add to Wishlist<?php } else { ?>Added to
                                Wishlist<?php } */ ?>
                                    <i id="icon247" class=""></i>
                                </a>
                            <?php } else {
                            } ?>
                            <div class="left-align position-relative"> <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" class="share" title="Share"><i class="fas fa-share-alt"></i></a>

                                <div class="collapse share-a" id="collapseExample">
                                    <div class="card card-body p-0">
                                        <a href="https://www.facebook.com/sharer/sharer.php?u=<?= base_url().'product/'.$product[0]->ppage_url?>" target="_blank" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="http://twitter.com/share?text=<?= $product[0]->title?>?&url=<?= base_url().'product/'.$product[0]->ppage_url?>&hashtags=#gogarbha"  target="_blank"class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="https://plus.google.com/share?url=<?= base_url().'product/'.$product[0]->ppage_url?>" target="_blank" class="googleplus"><i class="fab fa-google-plus-g"></i></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    </div>
                </div><!-- /.row -->

            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="det-s">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="Discription-tab" data-toggle="tab" href="#Discription" role="tab" aria-controls="Discription" aria-selected="true">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="Specification-tab" data-toggle="tab" href="#Specification" role="tab" aria-controls="Specification" aria-selected="false">How To Use
                                    </a>
                                </li>
                             <!--    <li class="nav-item">
                                    <a class="nav-link" id="Terms-tab" data-toggle="tab" href="#Terms" role="tab" aria-controls="Terms" aria-selected="false">Terms
                                    </a>
                                </li> -->
                                <li class="nav-item">
                                    <a class="nav-link" id="Reviews-tab" data-toggle="tab" href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">Reviews</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="Discription" role="tabpanel" aria-labelledby="Discription-tab">
                                    <p><?php echo $product[0]->overview; ?></p>

                                </div>
                                <div class="tab-pane fade" id="Specification" role="tabpanel" aria-labelledby="Specification-tab">
                                    <div class="row">

                                        <div class="col-md-12">
                                                <?php
                                                    if(!empty($product[0]->youtubelink)) {
                                                        $youtube = $product[0]->youtubelink;
                                                        //echo "<pre>";print_r($ex);
                                                        ?>
                                                        <iframe width="60%" height="350" src="https://www.youtube.com/embed/<?php echo $youtube;?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                                        <?php
                                                    }else {

                                                    }
                                                ?>
                                                <?php echo $product[0]->how_to_use; ?>
                                        </div><!-- /.col-md-6 -->
                                    </div><!-- /.row -->
                                </div>
                                              <div class="tab-pane fade" id="Terms" role="tabpanel" aria-labelledby="Terms-tab">
                                    <div class="row">

                                        <div class="col-md-12">
                                        <?php echo $settings[0]->product_terms; ?>
                                        </div><!-- /.col-md-6 -->
                                    </div><!-- /.row -->
                                </div>
                                <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">
                                              <div class="row customer_review">
                                        <?php
                                        $reviews = $this->home_db->getRecords('reviews', ['status'=>0,'pid'=>$product[0]->id],'*','id desc');
                                        //echo $this->db->last_query();exit;
                                        if (is_array($reviews)) { ?>
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <?php
                                                foreach ($reviews as $r) {
                                                ?>
                                                    <div class="review_box">
                                                        <div class="row">
                                                            <div class="col-lg-1 col-md-1 col-sm-3">
                                                                <img src="<?php echo asset_url(); ?>images/Gogarbha_Logo.svg" class="customer_img">
                                                            
                                                              
                                                            </div>
                                                            <div class="col-lg-11 col-md-11 col-sm-9">
                                                                <h4 class="name"><?php echo ucfirst($r->name); ?></h4>
                                                                  <p class="star_box">
                                                                    <span class="star <?php if (intval($r->rating) >= 1) { ?>active<?php } ?>"><i class="fa fa-star"></i></span>
                                                                    <span class="star <?php if (intval($r->rating) >= 2) { ?>active<?php } ?>"><i class="fa fa-star"></i></span>
                                                                    <span class="star <?php if (intval($r->rating) >= 3) { ?>active<?php } ?>"><i class="fa fa-star"></i></span>
                                                                    <span class="star <?php if (intval($r->rating) >= 4) { ?>active<?php } ?>"><i class="fa fa-star"></i></span>
                                                                    <span class="star <?php if (intval($r->rating) >= 5) { ?>active<?php } ?>"><i class="fa fa-star"></i></span>
                                                                </p>
                                                                <span class="date"><?php echo date("M d Y", strtotime($r->created_date)); ?></span>
                                                                <p>
                                                                    <?php echo $r->review_descp; ?>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                        <!-- <div class="col-lg-4 col-md-4 col-sm-4">
                                </div> -->
                                    </div>
                                    <div class="comment-form">
                                        <h2>Write your review</h2>
                                        <?php
                                        $name = '';
                                        $email = '';
                                        if (!empty($UserDetail)) {
                                            $name = $UserDetail[0]->name;
                                            $email = $UserDetail[0]->emailid;
                                        }
                                        ?>
                                        <div id="reviewmsgbox"></div>
                                        <form class="contact-one__form contact-form-validated">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <input type="text" placeholder="Title*" name="name" id="name" maxlength="30" value="<?php echo $name; ?>">
                                                </div><!-- /.col-lg-6 -->
                                                <input type="hidden" name="pid" id="pid" value="<?= $product[0]->id;?>">
                                                <input type="hidden" id="ppid" name="ppid" value="<?= $product[0]->id;?>">
                                                <div class="col-lg-12">
                                                    <textarea name="review_descp" placeholder="Write Comment" id="review_descp"></textarea>
                                                </div><!-- /.col-lg-12 -->

                                                <div class="col-lg-12">
                                                    <label for="">Rate here</label> <br>
                                                    <div class="star-wrapper">
                                                        <a class="fa fa-star  s5" rel="5" id="rating"></a>
                                                        <a class="fa fa-star s4" rel="4" id="rating"></a>
                                                        <a class="fa fa-star s3" rel="3" id="rating"></a>
                                                        <a class="fa fa-star s2" rel="2" id="rating"></a>
                                                        <a class="fa fa-star s1" rel="1" id="rating"></a>
                                                    </div>
                                                </div>
                                                <div id="ratereview"></div>
                                                <input type="hidden" name="ratings" id="ratings" value="4">
                                                <div class="col-lg-12 mt-4">
                                                    <button type="submit" class="thm-btn" id="review">Submit Review</button>
                                                    <!-- /.thm-btn -->
                                                </div><!-- /.col-lg-12 -->
                                            </div><!-- /.row -->
                                        </form>
                                    </div><!-- /.comment-form -->
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php } else {
            echo "No product found";
        } ?>
            </div><!-- /.container -->

    </section><!-- /.service-details -->
    <section>
        <div class="container">
            <?php $similar = $this->home_db->productDetailsView( $product[0]->id,$product[0]->cid);
            // $similar = $this->home_db->productDetailsViewSimilar( $product[0]->id,$product[0]->cid);
            
            //echo $this->db->last_query();

            ?>


            <div class="team-one__content">
                <section class="team-one">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="block-title__image"></div>
                            <h5>Related Products</h5>
                        </div>
                        <div class="col-md-6">
                            <div class="team-one__nav">
                                <div class="swiper-button-prev" id="team-one__swiper-button-next"><i class="agrikon-icon-left-arrow"></i>
                                </div>
                                <div class="swiper-button-next" id="team-one__swiper-button-prev"><i class="agrikon-icon-right-arrow"></i></div>
                            </div><!-- /.team-one__nav -->
                        </div>
                    </div>
                    <div class="team-one__carousel-wrap">
                        <div class="thm-swiper__slider swiper-container" data-swiper-options='{"spaceBetween": 0, "slidesPerView": 1, "slidesPerGroup": 1, "autoplay": { "delay": 5000 }, "navigation": {
                    "nextEl": "#team-one__swiper-button-next",
                    "prevEl": "#team-one__swiper-button-prev"
                },"breakpoints": {
                    "0": {
                        "spaceBetween": 0,
                        "slidesPerView": 1,
                        "slidesPerGroup": 1
                    },
                    "640": {
                        "spaceBetween": 30,
                        "slidesPerView": 2,
                        "slidesPerGroup": 2
                    },
                    "992": {
                        "spaceBetween": 30,
                        "slidesPerView": 4,
                        "slidesPerGroup": 2
                    },
                    "1200": {
                        "spaceBetween": 30,
                        "slidesPerView": 4,
                        "slidesPerGroup": 2
                    }
                }}'>

                            <div class="swiper-wrapper">
                                <?php
                                if (is_array($similar)) {
                                    foreach ($similar as $p) {
                                        $url = base_url() . 'product/' . $p->ppage_url;
                                        $mrp = $p->mrp;
                                        $sell = $p->selling_price;
                                       
                                     
                                        $disc = $this->home_db->discount($mrp, $sell);
                                        $name = $p->title;
                                        if (strlen($name) > 32) {
                                            $name = substr($name, 0, 30) . '...';
                                        }

                                        $stock = $p->stock;
                                ?>
                                        <?php
                                        $wish = 0;
                                        if (!empty($UserDetail)) {
                                            $db = array(
                                                'categ' => $p->cpage_url,
                                                'pid' => $p->id,
                                                'user_id' => $UserDetail[0]->id
                                            );
                                            $wish = $this->home_db->checkwishlist($db);
                                        }

                                     
                                         ?>


                                <div class="swiper-slide">


                                    <div class="blog-card">
                                       
                                            <?php 
                                if(!empty($disc) && $disc !=0)  {
                                    ?>
  <div class="offer-tag"><span><?php  echo round($disc);?>%</span></div>
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
                                            <img src="<?php echo cdn_url() . $p->image_path; ?>" alt="">
                                            <a href="<?php echo $url; ?>"></a>
                                        </div><!-- /.blog-card__image -->
                                        <div class="blog-card__content">

                                            <h3><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h3>
                                            <p><?= $p->sname;?></p>
                                              <?php if($stock ==0) { echo "<p style='color:red'>Out of stock</p>";}?>  
                                            <div class="price"><span class="new-price"><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($sell); ?></span>
                                                <?php if (floatval($disc) > 0) { ?>
                                                    <span class="old-price"><i class="fas fa-rupee-sign"></i>
                                                        <?php echo $this->home_db->getnumberformat($mrp); ?></span><?php } ?>
                                            </div>
                                      
                                        </div><!-- /.blog-card__content -->
                                    </div><!-- /.blog-card -->



                                </div><!-- /.swiper-slide -->
                                <?php
                                      
                                        }
                                } ?>





                            </div><!-- /.swiper-wrapper -->

                        </div><!-- /.thm-swiper__slider -->
                    </div><!-- /.team-one__carousel-wrap -->
                </section><!-- /.team-one -->
            </div>

        </div>
    </section>



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
    <script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
    <!-- template js -->
    <script src="<?php echo asset_url() ?>js/theme.js"></script>



 



    <?php echo $jsFile; ?>
    <script type="text/javascript">
        $(document).ready(function(){
            $packagenew1 = '<?php echo 1;?>';
        });

        $("#sizes").change(function() {
            $(".prodspec").hide();
            $(".prod_price").hide();
            $("#spec-" + $("#sizes").val()).css("display", "table-row");
            $("#price-" + $("#sizes").val()).show();
        });


// $("#packagenew").on('click',function(e) {
//     e.preventDefault();
//     $(this).addClass('active');
// });
        $('.star-wrapper a').on('click', function(event) {
event.preventDefault();
            $('.star-wrapper a').find('b').remove();

var rate = $(this).attr("rel");
$('#ratings').val(rate);
$(this).append("<b></b>");
           
        });


        $(document).ready(function() {
                $(".s1").on('click',function(e) {
                    e.preventDefault();
                     $(".fa-star").css("color", "#ababab");
                    $(".s1").css("color",'gold');
                });

                $(".s2").on('click',function(e) {
                    e.preventDefault();
                     $(".fa-star").css("color", "#ababab");
                    $(".s1, .s2").css("color",'gold');
                });

                $(".s3").on('click',function(e) {
                    e.preventDefault();
                     $(".fa-star").css("color", "#ababab");
                    $(".s1, .s2,.s3").css("color",'gold');
                });

                $(".s4").on('click',function(e) {
                    e.preventDefault();
                     $(".fa-star").css("color", "#ababab");
                    $(".s1, .s2,.s3,.s4").css("color",'gold');
                });

                $(".s5").on('click',function(e) {
                    e.preventDefault();
                     $(".fa-star").css("color", "#ababab");
                    $(".s1, .s2,.s3,.s4,.s5").css("color",'gold');
                });

                $("#st1").click(function() {
              $(".fa-star").css("color", "#ababab");
              $("#st1").css("color", "yellow");

          });
      
        });

        $("#review").on('click', function(e) {

            var name = $("#name").val();
            console.log(name);
            var review_descp = $("#review_descp").val();
            var ratings = $("#ratings").val();
            var pid = $("#pid").val();
            var ppid = $("#ppid").val();
            $("#reviewmsgbox").show();
            if ($.trim(name) == "") {
                $("#reviewmsgbox").html(
                    '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Your Name.</div>'
                );
                return false;
            } else if ($.trim(review_descp) == "") {
                $("#reviewmsgbox").html(
                    '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Your Review.</div>'
                );
                return false;
            } else {
                $.ajax({
                    url: "<?= base_url() . 'home/reviews'; ?>",
                    method: "post",
                    data: {
                        name: name,
                        review_descp: review_descp,
                        ratings: ratings,
                        id: pid,
                        ppid :ppid
                    },
                    success: function(data) {
                        if (data == 0) {
                           window.location.href="<?= base_url().'login';?>";
                        }else if(data ==2) {
                            $("#reviewmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Review already exists</div>');
                        } else {
                            $("#name").val("");
                            $("#review_descp").val("");
                            $("#ratings").val("");
                            location.reload();
                            $("#reviewmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Submitted Successfully !!!</div>');
                            $("#reviewmsgbox").fadeOut(4000);
                        }

                    }
                });
            }
        });

 



        function checkpincodes() {
            var pin = $("#pincode").val();
            $('.myloader').fadeIn();
            $.post("<?php echo base_url() ?>home/checkpincodes", {
                pin: pin
            }, function(data) {
                $('.myloader').fadeOut();
                $("#pinchecked").show();
                //$("#checkpin").hide();
                if (data != '') {
                    if (data > 0) {

                         $("#pinchecked").html("<p class='edit avil'>" + pin +
                        " &nbsp; <i class='fas fa-pencil-alt' onclick='removepincode();'></i> <br><span class='head'> </span><span class='text'>This item  can be delivered to your location with delivery charges <i class='fas fa-rupee-sign' style='color:#fff;margin-right:5px'></i>" +data);
                       
                    }

                    if(data ==-1) {

                        $("#pinchecked").html("<p class='edit avil'>" + pin +
                        " &nbsp; <i class='fas fa-pencil-alt' onclick='removepincode();'></i> <br><span class='head'> </span><span class='text'>This item can not be delivered to your location with delivery charges");
                    }
                   

                } else {
                    $("#pinchecked").html("<p class='edit not-avil'><b> " + pin +
                        " </b> &nbsp; <i class='fas fa-pencil-alt' onclick='removepincode();'></i> <span class='head'> </span><br><span class='text'>Delivery not available to your location</span></p>"
                    );
                }
            });
            return false;
        }
        function removepincode() {
            $('#checkpin').show();
            $('#pinchecked').hide();
            $.post("<?php echo base_url() ?>home/removepincode", function(data) {

            });
        }
    

        function packagechange(id,pid,ppid) {

            $.ajax({
                url :"<?= base_url().'home/productPackageDetails';?>",
                type :"post",
                dataType:"html",
                data : {
                    pid:id,
                    ppid:pid,
                    pif :ppid
                },
                success:function(data) {
$(".service-details").html(data);

                }
            });
        }
  

        function zoomimagenew(small,large) {
            $("#slider1").html('<li class="img_box"><img class="zoom" src="'+small+'" data-zoom-image="'+large+' "></li> ');
        }
    </script>

    <script>
        $("#zoom_03").elevateZoom({gallery:'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'}); 
 
    $("#zoom_03").bind("click", function(e) {  
    var ez =   $('#zoom_03').data('elevateZoom');   
        $.fancybox(ez.getGalleryList());
    return false;
    });</script>



</body>

</html>