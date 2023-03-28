<?php
$page = (int) (!isset($_GET['p'])) ? 1 : $_GET['p'];
$limit = 12;
//echo $page;
# sql query
$sql = $productsSql;
# find out query stat point
$start = ($page * $limit) - $limit;
$prodcount = count($this->home_db->runSql($sql));
# query for page navigation
if ($prodcount > ($page * $limit)) {
    $next = ++$page;
}
$query = $this->home_db->runSql($sql . " LIMIT {$start}, {$limit}");


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo maintitle ?></title>
    <link href="<?php echo asset_url(); ?>css/artiiplants.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/artiiplants.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/artiiplantss.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/all.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min1.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
    <style type="text/css">
        .product_box .img .img_box .img_src img {
            width: auto;
        }
		
	.cathed {
    background-color: #014E37;
   
}

.breadcrumb {
    color: #014E37;
}
    </style>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <link rel="icon" href="<?php echo asset_url(); ?>images/logo_top.svg">
    <style>
        .product_box .img .btns {
            height: 40px;
        }

        .myloader {
            background: rgba(255, 255, 255, 0.5) url("assets/images/loader.gif") no-repeat scroll center center;
            display: block;
            height: 100%;
            position: fixed;
            width: 100%;
            z-index: 9999999;
        }


        .ias_trigger {
            background: rgba(230, 211, 1, 0.1) none repeat scroll 0 0;
            border: 1px solid #e6d301;
            border-radius: 10px;
            color: #0da17f;
            float: left;
            padding: 10px;
            text-align: center;
            width: 100%;
        }

        .ias_trigger>a {
            color: #0da17f;
        }
    </style>

    <style type="text/css">
        .product_box .img .img_box .img_src img {
            width: auto;
        }
    </style>
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


	</style>
</head>
<script>
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function() {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-68094496-1', 'auto');
    ga('send', 'pageview');
</script>


<body>

    <?php echo $header1; ?>

    <form id="filterform" method="get" action="<?php echo base_url() ?>products">
    <div class="breadbg">
        <div class="container">
            <div class="row">
                <ul class="breadcrumb">
                    <li><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i></a></li>
                    <li><a href="<?php echo base_url() ?>products">Products</a></li>
                    <li><a href="#"><?php echo $typename; ?></a></li>
                    <li><u><?php echo $categ; ?></u></li>
                    <span class="pull-right">
                        <span class="cc">
                      
                            <select class="form-control" name="sort_type" style="width:auto; display:inline-block;" onchange="$('#filterform').submit();">
							    <option value="">  Sort by</option>
								
                                <option value="1" <?php if($sort_get==1){?>selected="selected" <?php } ?>>Price - Low to High</option>
                                <option value="2" <?php if($sort_get==2){?>selected="selected" <?php } ?>>Price - High to Low</option>
                                <option value="3" <?php if($sort_get==3){?>selected="selected" <?php } ?>>Name A to Z</option>
								<option value="4" <?php if($sort_get==4){?>selected="selected" <?php } ?>>Name Z to A</option>
                            </select>
                        </span>
                        <span  class="cc">Showing <?php echo $prodcount ?> items</span>
                    </span>
                </ul>

            </div>
        </div>
    </div>

    <!-- <PAGE CONTENT> ================================= -->
    <div class="page_content">
        <div class="container">
            <div class="row">
              
                    <input type="hidden" name="type" value="<?php echo $type; ?>">

                    <div class="col-sm-4 col-md-3 col-xs-12">

                        <div class="filter_icon visible-xs"> <i class="icon icon-filter"></i> Show / Hide Filter </div>

                        <div class="filter_container">
                            <?php if (!empty($pricefilter)) { ?>
							 <div class="filter_box">
                                <div class="panel-heading cathed">
                                    Price
									<span class="toggle_btn">  </span>
                                </div>
                                <ul class="filter_list">
                                    <?php echo $pricefilter; ?>
                                </ul>
                            </div>
							
                            <?php } ?>

                            <?php $material = $this->home_db->getcontent1('view_material_exists', 'cpage_url', $type, '', 'morder_no', 'asc');
                            if (is_array($material) && count($material) > 1) {
                            ?>
                            <div class="filter_box">
                                <div class="panel-heading cathed">
                                    Material
										<span class="toggle_btn">  </span>
                                </div>
                                <ul class="filter_list">
                                    <?php foreach ($material as $m) { ?>
                                    <li class="filtercheckbox"> <input type="checkbox"
                                            <?php if (is_array($material_get) && in_array($m->mpage_url, $material_get)) { ?>checked="checked"
                                            <?php } ?> id="<?php echo $m->mpage_url ?>" name="material[]"
                                            value="<?php echo $m->mpage_url ?>"> <label
                                            for="<?php echo $m->mpage_url ?>"><?php echo $m->mname ?></label> </li>
                                    <?php } ?>
                                </ul>
                            </div>
							

                            <?php } ?>

                            <?php $colors = $this->home_db->getcontent1('view_color_exists', 'cpage_url', $type, '', 'clorder_no', 'asc');
                            if (is_array($colors) && count($colors) > 1) {
                            ?>
                           <div class="filter_box">
                                <div class="panel-heading cathed">
                                    Colors
									<span class="toggle_btn">  </span>
                                </div>
                                <ul class="filter_list">
                                    <?php foreach ($colors as $c) { ?>
                                    <li class="filtercheckbox"> <input type="checkbox"
                                            <?php if (is_array($color_get) && in_array($c->clpage_url, $color_get)) { ?>checked="checked"
                                            <?php } ?> id="<?php echo $c->clpage_url ?>" name="color[]"
                                            value="<?php echo $c->clpage_url ?>"> <label
                                            for="<?php echo $c->clpage_url ?>"><?php echo $c->clname; ?></label> </li>
                                    <?php } ?>
                                </ul>
                            </div>
						

                            <?php } ?>

                            <?php $size = $this->home_db->getcontent1('view_sizes_exists', 'cpage_url', $type, '', 'sorder_no', 'asc');
                            if (is_array($size) && count($size) > 1) {
                            ?>
                            <div class="filter_box">
                                <div class="panel-heading cathed">
                                    Dimensions
								<span class="toggle_btn">  </span>

                                </div>
                                <ul class="filter_list">
                                    <?php foreach ($size as $s) {
                                            if ($s->size_id != '0') {
                                        ?>
                                    <li class="filtercheckbox"> <input type="checkbox"
                                            <?php if (is_array($size_get) && in_array($s->spage_url . '~' . $s->size_id, $size_get)) { ?>checked="checked"
                                            <?php } ?> id="<?php echo $s->size_id ?>" name="size[]"
                                            value="<?php echo $s->spage_url . '~' . $s->size_id; ?>"> <label
                                            for="<?php echo $s->size_id ?>"><?php echo $s->sname; ?></label> </li>
                                    <?php } else { ?>
                                    <li class="filtercheckbox"> <input type="checkbox"
                                            <?php if (is_array($size_get) && in_array($s->spage_url . '~' . $s->size_id, $size_get)) { ?>checked="checked"
                                            <?php } ?> id="<?php echo $s->size_id ?>" name="size[]"
                                            value="<?php echo $s->spage_url . '~' . $s->size_id; ?>"> <label
                                            for="<?php echo $s->size_id ?>">Multisize</label> </li>
                                    <?php }
                                        } ?>
                                </ul>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-9  col-xs-12">

                        <!-- <div class="sort_by">
                            <span class="title"> Showing <?php echo $prodcount ?> items </span>
                            <span id="all"> <a href="<?php echo base_url() ?>">Home</a></span>
                            <span class="test"> <a href="<?php echo base_url() ?>products">Products</a></span>
                            <span class="test"><?php echo $typename; ?></span>
                        </div> -->

                        <div class="row filter artiirow">
                        <?php if ($prodcount) { ?>
                                <?php
                                if (count($query) && is_array($query)) {
                                    foreach ($query as $p) {
                                        $url = base_url() . 'products/product_view?page=' . $p->ppage_url;
                                        //$url = base_url() . 'register';
                                        $mrp = $p->mrp;
                                        $sell = $p->selling_price;
                                        $disc = $this->home_db->discount($mrp, $sell);
                                        $name = $p->pname;
										$size = $p->spage_url;
										$str = explode("-",$size);
                                        if (strlen($name) > 32) {
                                            $name = substr($name, 0, 30) . '...';
                                        }
                                ?>
                            <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12 item_prod">
                                <div class="product-thumb transition">
                                    <div class="img">

                                        <div class="image">
                                            
											
											<a href="<?php echo $url; ?>"><img
                                                    src="<?php echo cdn_url() . $p->image_path; ?>"
                                                    class="img-responsive center-block"></a>
                                            <?php $sql=$this->home_db->getcontent('product_images','pid',$p->pid,'0','');
										?>
										<a href="<?php echo $url; ?>">
										<img src="<?php echo cdn_url().$sql[0]->thumb; ?>"
                                        class="img-responsive second-img" alt="hover image"></a><!-- <span
                                                class="sale"><?php if (floatval($disc) > 0) { ?> <?php echo $disc ?>% OFF
                                                <?php } ?>
                                            </span>-->
											<span class="offer_tag"><span class="tr"><?php if (floatval($disc) > 0) { ?> <?php echo round($disc) ?>% Off
											<?php } ?></span></span>
											
                                        </div>


                                    </div>
                                    <div class="text caption">
                                        <?php $rate = $this->products_db->getratings($p->pid); ?>
                                        <p class="star_box">
                                            <span
                                                class="star <?php if (intval($rate) >= 1) { ?>star_review<?php } ?>"></span>
                                            <span
                                                class="star <?php if (intval($rate) >= 2) { ?>star_review<?php } ?>"></span>
                                            <span
                                                class="star <?php if (intval($rate) >= 3) { ?>star_review<?php } ?>"></span>
                                            <span
                                                class="star <?php if (intval($rate) >= 4) { ?>star_review<?php } ?>"></span>
                                            <span
                                                class="star <?php if (intval($rate) >= 5) { ?>star_review<?php } ?>"></span>
                                        </p>

                                        <h4 class="protitle"><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h4>


                                        <p class="price">
                                            <?php $nooffer = 'no_offer';
                                                        if (floatval($disc) > 0) {
                                                            $nooffer = ''; ?>

                                            <span class="price-new <?php echo $nooffer; ?>"> <i
                                                    class="fas fa-rupee-sign"></i>
                                                <?php echo $this->home_db->getnumberformat($p->selling_price); ?>
                                            </span> &nbsp;
                                            <span class="price-old"><i class="fas fa-rupee-sign"></i>
                                                <?php echo $this->home_db->getnumberformat($p->mrp); ?></span><?php } ?>&nbsp;&nbsp;<span>&#36;</span><?php echo 75;?><br/>
												<?php echo $str[0].$str[1];?>
                                        </p>

                                        <div class="button-group">
                                            <a href="javascript:add_cart('<?php echo $p->cpage_url; ?>','<?php echo $p->psid; ?>');"
                                                type="button" data-original-title="Add to cart"><i
                                                    class="fas fa-shopping-basket"></i></a>


                                            <?php
                                                        $wish = 0;
                                                        if (!empty($UserDetail)) {
                                                            $db = array(
                                                                'categ' => $p->cpage_url,
                                                                'pid' => $p->pid,
                                                                'user_id' => $UserDetail[0]->id
                                                            );
                                                            $wish = $this->home_db->checkwishlist($db);
                                                        }
                                                        ?>
                                           <!-- <a href="javascript:void(0);" data-original-title="Add to Wish List"
                                                wid="<?php echo $p->pid; ?>" id="w<?php echo $p->pid; ?>"
                                                categ="<?php echo $p->cpage_url ?>"
                                                <?php if ($wish == 0) { ?>class="awishlist" title="Add to wishlist"
                                                <?php } else { ?> class="added" title="Added to wishlist" <?php } ?>><i
                                                    id="icon<?php echo $p->pid ?>"
                                                    class="far <?php if ($wish == 0) { ?>fa-heart<?php } else { ?>fa-heart<?php } ?>"></i></a>-->
											<a href="javascript:void(0);" data-original-title="Add to Wish List" wid="<?php echo $p->pid; ?>" id="w<?php echo $p->pid; ?>"
                                    categ="<?php echo $p->cpage_url ?>" <?php if ($wish == 0) { ?>class="awishlist"
                                    title="Add to wishlist" <?php } else { ?> class="added" title="Added to wishlist"
                                    <?php } ?>><i id="icon<?php echo $p->pid ?>"
                                        class="far <?php if ($wish == 0) { ?>fa-heart<?php } else { ?>fa-heart<?php } ?>"></i></a>



                                        </div>



                                    </div>
                                </div>
                            </div>




                            <?php }
                                } ?>
                            <?php if (isset($next)) : ?>
                            <div class="prodnav">
                                <a
                                    href='<?php echo base_url(); ?>products?p=<?php echo $next; ?>&type=<?php echo $type; ?><?php echo $materialtext . $color_text . $size_text . $price_text; ?>'>Next</a>
                            </div>
                            <?php endif ?>
                            <?php } else {
                                echo "No products found !!!!";
                            }
                            ?>
                        </div>
                    </div>

               
            </div>

        </div>
    </div>
 </form>
    <!-- END </ PAGE CONTENT>  -->


    <?php echo $footer; ?>



</body>
<script src="<?php echo asset_url(); ?>js/jquery-1.7.1.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/owl.carousel.min.js"></script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/jquery.lazyload.min.js"></script>
<script src="<?php echo asset_url(); ?>js/jquery.mousewheel.min.js"></script>
<script src="<?php echo asset_url(); ?>js/jquery.mCustomScrollbar.min.js"></script>

<?php echo $jsFile; ?>
<script type="text/javascript">
    $(document).ready(function() {

        $('.list_btn').click(function(e) {
            e.preventDefault();
            $('.main_nav').slideToggle();
        });

        //$('body').on('mouseover',".product_box .cart_btn", function(){
        $('.product_box .cart_btn').hover(function() {
            $(this).find('.text').show().stop().animate({
                top: '-11px'
            }, 300);
        }, function() {
            $(this).find('.text').hide().stop().animate({
                top: '50%'
            }, 300);
        });

        //$('body').on('mouseover',".product_box", function(){
        $('.product_box').hover(function() {
            $(this).find('.btns').stop().animate({
                right: 0
            });
        }, function() {
            $(this).find('.btns').stop().animate({
                right: '-40'
            });
        });

        $('.main_nav a').click(function() {
            $('.main_nav').slideDown();
        });

        $('#pincode').keypress(function(e) {
            if (e.keyCode == 13) {
                $("#pinbtn").click();
            }
        });

        $('body').on('keypress', "#coupon", function(e) {
            if (e.keyCode == 13) {
                $(".giftcoupon").click();
            }
        });

        $('body').on('keypress', "#femail", function(e) {
            if (e.keyCode == 13) {
                forgotpass();
            }
        });


        $('body').on('keypress', "#lemail, #password", function(e) {
            if (e.keyCode == 13) {
                login();
            }
        });

        $('body').on('keypress', "#remail, #rpassword, #rname, #rconfpassword", function(e) {
            if (e.keyCode == 13) {
                register();
            }
        });


        $('body').on('click', ".awishlist", function() {

            $('.myloader').fadeIn();
            var val_id = $(this).attr('wid');
            var categ = $(this).attr('categ');


            $.post("<?php echo base_url(); ?>home/CheckSession", {
                url: window.location.href,
                val_id: val_id,
                categ: categ
            }, function(data) {
                if (data == 1) {
                    //alert(data);
                    $.post("<?php echo base_url(); ?>home/addwish", {
                        val_id: val_id,
                        categ: categ
                    }, function(data) {
                        $('.myloader').fadeOut();
                        if (data == 1) {

                            $.post("<?php echo base_url(); ?>home/loadwishlist", function(data) {
                                $("#wish_popup_wr").attr('align', '');
                                $("#wish_popup_wr").html(data);
                                $("#wish_popup_wr").mCustomScrollbar();
                                $('.view_btn').animate({
                                    right: 0
                                }, 600);
                            });
                            $(".addto_wish" + val_id).html('<i class="icon icon-like_green"></i> Added to Wishlist');

                            $("#w" + val_id).removeClass('awishlist');
                            $("#w" + val_id).addClass('added');
                            $("#w" + val_id).attr("title", "Added to wishlist");
                            $("#icon" + val_id).removeClass('icon-like_green');

                            if ($("#icon" + val_id).hasClass("addto_wish" + val_id) == false) {
                                $("#icon" + val_id).addClass('icon-like_green');
                            } else {
                                $("#icon" + val_id).addClass('icon-like_green');
                            }

                            $(".cart_btn_header").click();
                            $("#carttab2").click();
                        } else if (data == 0) {
                            alert("Error in adding to wishlist");
                        }

                    });
                } else {
                    $('.myloader').fadeOut();
                    $('.get_login_popup').click();
                }
            });
        });


        $('.get_password').click(function(e) {
            e.preventDefault();
            $('.forgot_form').animate({
                left: 0
            }, 300);
        });

        $('.get_register').click(function(e) {
            e.preventDefault();
            $('.register_form').animate({
                left: 0
            }, 300);
        });

        $('.get_login').click(function(e) {
            e.preventDefault();
            $('.register_form').animate({
                left: '100%'
            }, 500);
            $('.forgot_form').animate({
                left: '100%'
            }, 500);
        });

        $('.close_login').click(function() {
            $('.login_popup_wr').animate({
                right: '-100%'
            }, 400);
        });

        $('.get_login_popup').click(function(e) {
            e.preventDefault();
            $('.login_popup_wr').animate({
                right: 0
            }, 400);
        });

        $('.get_register_popup').click(function(e) {
            e.preventDefault();
            $('.login_popup_wr').animate({
                right: 0
            }, 400);
            $('.get_register').click();
        });

        $('body').on('click', ".close", function(evt) {
            $('.cart_popup_wr').animate({
                right: '-100%'
            }, 400);
            $('.cart_popup').animate({
                right: '-100%'
            }, 300);
            $('.view_btn').animate({
                right: '-130%'
            }, 300);
            $('body').removeClass('cart_shown');
            $(this).parent(".alert").remove();
        });

        $('body').on('click', ".cart_btn_header", function(e) {
            e.preventDefault();
            $('.cart_popup_wr').animate({
                right: 0
            }, 300);
            $('.cart_popup').animate({
                right: 0
            }, 600);
            $('.view_btn').animate({
                right: 0
            }, 600);

            $('body').addClass('cart_shown');
        });


        $("body").on("keypress", ".qty", function(e) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ($.trim($(this).val()) == "" && (charCode == 48 || charCode == 8)) {
                $(this).val(1);
            }

            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        });

        $("body").on("keyup", ".qty", function(e) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            //alert($('#qty').val());
            if ($.trim($(this).val()) == "" && (charCode == 48 || charCode == 8)) {
                $(this).val(1);
            } else if (parseInt($(this).val()) == 0) {
                $(this).val(1);
            }
        });


        $("body").on("change", ".qty", function(e) {
            $('.myloader').fadeIn();
            var atr = $(this).attr('uid');
            var qty = $(this).val();
            if (parseInt(qty) <= 0) {
                qty = 1;
            }
            $.post('<?php echo base_url(); ?>cart/updateCart', {
                rowid: atr,
                qty: qty
            }, function(data) {
                //alert(data);

                $.post("<?php echo base_url(); ?>cart/loadsummary", function(data1) {
                    $('.myloader').fadeOut();
                    $("#loaddata").html(data1);
                    $("#gmsgbox").html(data);
                });
            });
        });

        $("body").on("click", ".giftcoupon", function(e) {
            $('.myloader').fadeIn();
            var coupon = document.getElementById('coupon');
            $("#gmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
            if ($.trim(coupon) == "") {
                $("#gmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Coupon Code.</div>');
            } else {
                $.post("<?php echo base_url(); ?>cart/checkcoupon", {
                    coupon: $("#coupon").val()
                }, function(data) {
                    //alert(data);
                    var spt = data.split('~');
                    if (parseInt(spt[0]) == 0) {
                        //$("#gift_voucherid").html(spt[1]);
                        //$('#current_total').html(spt[2]);
                        $.post("<?php echo base_url(); ?>cart/cart_total", function(data) {
                            $("#carttot").html('<i class=" icon_rs_gray"></i> ' + data);
                        });
                        $.post("<?php echo base_url(); ?>cart/loadsummary", function(data) {

                            $('.myloader').fadeOut();
                            $("#loaddata").html(data);
                        });
                        $("#gmsgbox").html('');
                    } else {
                        $('.myloader').fadeOut();
                        $("#gmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Coupon Code.</div>');
                    }
                });
            }
        });

        $("body").on("click", ".removecoupon", function(e) {
            $('.myloader').fadeIn();
            $('.gift_coupon_added').remove();
            $.post("<?php echo base_url(); ?>cart/removecoupon", function(data) {
                $.post("<?php echo base_url(); ?>cart/cart_total", function(data) {
                    $("#carttot").html('<i class=" icon_rs_gray"></i> ' + data);
                });
                $.post("<?php echo base_url(); ?>cart/loadsummary", function(data) {
                    $('.myloader').fadeOut();
                    $("#loaddata").html(data);
                });
            });
        });


        // Tap Content
        $(function(e) {
            $('.cart_tabcontent').hide().filter(':first').show();
            $('#cart_tabs li[data-tabs]').on('click', function() {
                $('#cart_tabs li[data-tabs]').removeClass('active');
                $('.cart_tabcontent').hide();
                var tab = $(this).data('tabs');
                $(this).addClass('active');
                $('#' + tab).fadeIn().show();
            });
        });

        $(".items_wr").mCustomScrollbar();



        $('body').on('keypress', ".onlynumbers", function(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode

            if (charCode == 8) //back space
                return true;
            if (charCode < 48 || charCode > 57) //0-9
            {
                return false;
            }

            return true;
        });

        $('body').on('keypress', ".floatval", function(event) {
            var charCode = (event.which) ? event.which : event.keyCode
            if (charCode == 8 || charCode == 9) {

            } else if ((charCode != 46 || $(this).val().indexOf('.') != -1) && (charCode < 48 || charCode > 57)) {
                event.preventDefault();
            }
        });


        $('#newslttr').click(function() {
            var url = "<?php echo base_url(); ?>" + "home/newslettersub";
            var nEmail = $("#newltrsemail").val();
            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            if (nEmail.trim() == "") {

                $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Email ID</div>');

            } else if (!emailReg.test(nEmail)) {

                $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Valid Email ID</div>');

            } else {
                $("#emailmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
                $.post(url, {
                    mail: nEmail
                }, function(data, status) {

                    if (data.trim() == "0") {

                        $("#newltrsemail").attr('value', "");

                        $("#emailmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Thanks For Subscribing</div>').fadeOut(5000);
                        $("#emailmsgbox").fadeOut(10000);

                    } else if (data.trim() == "1") {

                        $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>This Email Is Already Registered</div>');
                    } else {

                        $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Something Went Wrong..!! Please Try Again Later</div>');
                    }





                });
            }
        });
    });

    function remove_row(id) {
        $('.myloader').fadeIn();
        $.post("<?php echo base_url(); ?>cart/removeitem", {
            id: id
        }, function(data) {

            $("." + id).remove();
            if (data == "0") {
                $("#cart_popup_wr").attr('align', 'center');
                $('#cart_popup_wr').html('<div class="alert alert-danger alert-dismissable" style="width: 80%;">No items in your Cart!</div>');
                $(".cartcnt").html(0);


            }
            $("#current_total").html(data);
            $("#carttot").html('<i class=" icon_rs_gray"></i> ' + data);
            $.post("<?php echo base_url(); ?>cart/loadsummary", function(data) {
                $('.myloader').fadeOut();
                $("#loaddata").html(data);
            });
            $.post("<?php echo base_url(); ?>cart/countcart", function(data) {
                $("#cart_popup_wr").attr('align', '');
                if (parseInt(data) <= 0) {
                    $("#cart_popup_wr").attr('align', 'center');
                }
                $(".cartcnt").html(data);
            });
        });

    }

    function remove_wish(id) {
        $('.myloader').fadeIn();
        $(".remove" + id).remove();
        $.post("<?php echo base_url(); ?>home/removewishlist", {
            id: id
        }, function(data) {

            $('.myloader').fadeOut();
            if (data == "0") {
                $("#wish_popup_wr").attr('align', 'center');
                $('#wish_popup_wr').html('<div class="alert alert-danger alert-dismissable" style="width: 80%;">No Wishlist Found!</div>');

                $("#maincontainer").html('<div align="center"><div class="alert alert-warning alert-dismissable">No items in your Wishlist!</div></div>');
            } else {
                $.post("<?php echo base_url(); ?>home/loadwishlist", function(data) {
                    $("#wish_popup_wr").attr('align', '');
                    $("#wish_popup_wr").html(data);
                    $('.view_btn').animate({
                        right: 0
                    }, 600);
                });

                $.post("<?php echo base_url(); ?>my_account/wishlistcount", function(data) {
                    $("#wishcount").html(data + ' items in your wishlist');
                    $(".items_wr").mCustomScrollbar();
                });
            }

            $(".addto_wish" + id).html('<i class="icon icon-like_green"></i> Add to Wishlist');
            $("#w" + id).removeClass('added');
            $("#w" + id).addClass('awishlist');
            $("#w" + id).attr("title", "Add to wishlist");
            $("#icon" + id).removeClass('icon-like_green');

            if ($("#icon" + id).hasClass("addto_wish" + id) == false) {
                $("#icon" + id).addClass('icon-like_green');
            } else {
                $("#icon" + id).addClass('icon-like_green');
            }


        });

    }


    function add_cart(val, hid) {
        $('.myloader').fadeIn();
        $.post("<?php echo base_url(); ?>cart/addtocart", {
            type: val,
            hid: hid
        }, function(data) {
            $('.myloader').fadeOut();
            if (data != "0" && data != "-1") {
                $("#cart_popup_wr").html(data);
                $.post("<?php echo base_url(); ?>cart/countcart", function(data) {
                    $("#cart_popup_wr").attr('align', '');
                    if (parseInt(data) <= 0) {
                        $("#cart_popup_wr").attr('align', 'center');
                    }
                    $(".cartcnt").html(data);
                });
                $.post("<?php echo base_url(); ?>cart/cart_total", function(data) {
                    $("#carttot").html('<i class=" icon_rs_gray"></i> ' + data);
                });
                $(".cart_btn_header").click();
                $("#carttab1").click();
                $(".items_wr").mCustomScrollbar();
            }

        });

    }

    function login() {
        var email = $("#lemail").val();
        var password = $("#password").val();
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        $("#lmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
        if ($.trim(email) == "") {
            $("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
        } else if (!emailReg.test(email)) {
            $("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
        } else if ($.trim(password) == "") {
            $("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Password.</div>');
        } else {
            $.post('<?php echo base_url(); ?>home/checklogin', {
                email: email,
                password: password
            }, function(data) {

                if (data != "2") {
                    $("#lmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Login successful. Redirecting...</div>');
                    location.reload();

                } else {
                    $("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Credentials.</div>');
                }
            });
        }
    }

    function register() {
        var email = $("#remail").val();
        var name = $("#rname").val();
        var confpassword = $("#rconfpassword").val();
        var password = $("#rpassword").val();
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        $("#rmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
        if ($.trim(name) == "") {
            $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Name.</div>');
        } else if ($.trim(email) == "") {
            $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
        } else if (!emailReg.test(email)) {
            $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
        } else if ($.trim(password) == "") {
            $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Password.</div>');
        } else if ($.trim(password).length < 6) {
            $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Password must contain atleast 6 characters.</div>');
        } else if (password != confpassword) {
            $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Password and Confirm Password doesnot match.</div>');
        } else {
            $.post('<?php echo base_url(); ?>home/register', {
                email: email,
                password: password,
                name: name
            }, function(data) {

                if (data == "0") {
                    $("#rmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Registered successfully. Redirecting...</div>');
                    location.reload();

                } else {
                    $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Already registered.</div>');
                }
            });
        }
    }

    function forgotpass() {
        var email = $("#femail").val();
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        $("#fmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
        if ($.trim(email) == "") {
            $("#fmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
        } else if (!emailReg.test(email)) {
            $("#fmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
        } else {
            $.post('<?php echo base_url(); ?>home/forgotPass', {
                email: email
            }, function(data) {

                if (parseInt(data) == 1) {
                    $("#fmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Email ID.</div>');

                } else {
                    $("#fmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Check your Email for the credentials.</div>');
                    $("#femail").val('');
                }
            });
        }
    }
</script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/jquery-ias.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {

        $('.toggle_btn').click(function() {
            $(this).toggleClass('hide_list');
            $(this).parent().next('.filter_list').slideToggle();
        })


        $('.filter_icon').click(function() {
            $('.filter_container').slideToggle();
        });

        $("body").on("click", ".filtercheckbox", function(e) {
            $('.myloader').fadeIn();
            var radbtn = $(this).find('input[type="checkbox"]');
            if (radbtn.is(':checked') == true) {
                radbtn.prop('checked', false);
            } else {
                radbtn.prop('checked', true);
            }
            $("#filterform").submit();
        });

    });

    (function($) {
        $(window).load(function() {
            $(".filter_list").mCustomScrollbar();
        });
    })(jQuery);


    jQuery(document).ready(function($) {
        var $win = $(window),
            $imgs = $(".filter .product_box img");
        //alert($imgs);


        function loadVisible($els, trigger) {
            $els.filter(function() {
                var rect = this.getBoundingClientRect();
                return rect.top >= 0 && rect.top <= window.innerHeight;
            }).trigger(trigger);
        }


        $win.on('scroll', function() {
            loadVisible($imgs, 'lazylazy');
        });

        $imgs.lazyload({
            effect: "fadeIn",
            failure_limit: Math.max($imgs.length - 1, 0),
            event: 'lazylazy'
        });

        // Infinite Ajax Scroll configuration
        jQuery.ias({
            container: '.artiirow', // main container where data goes to append
            item: '.item_prod', // single items
            pagination: '.prodnav', // page navigation
            next: '.prodnav a', // next page selector
            loader: '<img src="<?php echo asset_url(); ?>images/ajax-loader.gif"/>', // loading gif
            triggerPageThreshold: 5, // show load more if scroll more than this
            onRenderComplete: function(items) {
                //console.log('We loaded ' + items.length + ' items'); 
                $imgs = $(".filter .product_box img");
                $imgs.lazyload({
                    effect: "fadeIn",
                    failure_limit: Math.max($imgs.length - 1, 0),
                    event: 'lazylazy'
                });

                $('.product_box .cart_btn').hover(function() {
                    $(this).find('.text').show().stop().animate({
                        top: '-11px'
                    }, 300);
                }, function() {
                    $(this).find('.text').hide().stop().animate({
                        top: '50%'
                    }, 300);
                });

                $('.product_box').hover(function() {
                    $(this).find('.btns').stop().animate({
                        right: 0
                    });
                }, function() {
                    $(this).find('.btns').stop().animate({
                        right: '-40'
                    });
                });
            }
        });


    });
</script>


</body>

</html>