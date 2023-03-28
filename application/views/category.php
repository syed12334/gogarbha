
<?php //echo "<pre>";print_r($products);exit; ?>
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



<body>
 
<span class="myloader" style="display: none"></span>
    <?php echo $header; ?>
     <div class="stricky-header stricked-menu main-menu main-menu__two">
        <div class="sticky-header__content"></div>
    </div>
  <div class="page-wrapper">
       
        <section class="page-header">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container soft">
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="<?= base_url();?>">Home </a> | <?php echo $ptitle[0]->name;?></li>
                   
                </ul><!-- /.thm-breadcrumb list-unstyled -->
                <h2><?php echo $subtitle[0]->name?></h2>
                <div class="filter-option">
                    <span class="filtr-btn">Filter</span> <span class="sort">
                        <select id="sortBy">
                            <option>Sort By</option>
                            <option value="1">Low to High</option>
                            <option value="2">High to Low</option>
                            <option value="3">Newest First</option>
                            <option value="4">Popularity</option>
                        </select></span>
                </div>
            </div><!-- /.container -->
        </section><!-- /.page-header -->


        <div class="filter-box">
            <h3>Filter <span class="close-filter">X</span></h3>
            <div>
                <h2>Price</h2>

    <form id="filterform" method="get" action="<?php echo base_url() ?>home/product_details" >
                <ul class="filter_list"> 
                    <li class="filtercheckbox"><label for="100 - 300"><input type="checkbox" name="pricerang[]" class="checkedbox getPrice" id='100 - 300' value='1'/> 100 - 300</label></li>
                    <li class="filtercheckbox"><label for="300 - 500"><input type="checkbox" name="pricerang[]" class="checkedbox getPrice" id='300 - 500' value='2'/> 300 - 500</label></li>
                    <li class="filtercheckbox"><label for="500 - 700"><input type="checkbox" name="pricerang[]" class="checkedbox getPrice" id='500 - 700' value='3'/> 500 - 700</label></li>
                    <li class="filtercheckbox"><label for="700 - 900"><input type="checkbox" name="pricerang[]" class="checkedbox getPrice" id='700 - 900' value='4'/> 700 - 900</label></li>
                    <li class="filtercheckbox"><label for="1000+"><input type="checkbox" name="pricerang[]" class="checkedbox getPrice" id='1000+' value='5'/> 1000+</label></li>
                </ul>
                <input type="hidden" name="id" value="<?php echo  base64_encode($this->session->userdata('filterid'));?>">
            </form>
            </div>
         
           
        </div>

        <section class="blog-grid">
            <div class="container">
                <div class="row" id="sort">
                    <?php

//echo "<pre>";print_r($special_offers);exit;
                              
                    if(count($products) >0) 
                    {  
                        foreach ($products as $p) 
                        {
                            
                            $mrp = $p->mrp;
                            $sell = $p->selling_price;
                            $stock = $p->stock;
                           
                            $disc = $this->home_db->discount($mrp, $sell);

                            $name = $p->title;
                            if (strlen($name) > 32) {
                                $name = substr($name, 0, 30) . '...';
                            }
                            $url = base_url() . 'product/' . $p->ppage_url;
                          
                                            ?>
                    <div class="col-md-3 col-lg-3 col-6">
                        <div class="blog-card">
                            <?php 
                                if(!empty($disc) && $disc !=0)  {
                                    ?>
  <div class="offer-tag"><span><?php  echo round($disc);?>%</span></div>
                                    <?php
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
                                <img src="<?php echo cdn_url().$p->thumb; ?>" alt="" />
                                <a href="<?php echo $url; ?>"></a>
                            </div><!-- /.blog-card__image -->
                            <div class="blog-card__content">
     
                                <h3><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h3>
                                 <p><?= $p->sname;?></p>

                                 <?php if($stock ==0) { echo "<p style='color:red'>Out of stock</p>";}?>                                
                                 <div class="price">
                                    <span class="new-price"><i class="fas fa-rupee-sign"></i>  <?php echo $this->home_db->getnumberformat($sell); ?></span>
                                      <?php if (floatval($disc) > 0) {?>
                                 <span class="old-price"><i class="fas fa-rupee-sign"></i>
                                    <?php echo $this->home_db->getnumberformat($mrp); ?></span><?php } ?>
                                </div>
                              
                            </div><!-- /.blog-card__content -->
                        </div><!-- /.blog-card -->
                    </div><!-- /.col-md-6 col-lg-4 -->
                       
                     <?php
                           
                
  
                 }
                    }else {
                          ?>
                        <center style="width:100%"> <div align="center" class="no-item"><img src="<?php echo asset_url(); ?>images/icons/cow.svg"/>
                                    <h2 class="mb-2" style="color:#000!important;text-align: center;font-size:22px;margin-top:20px">No search results found .</h2>
                                    </div>
                                    </center>
                       <?php
                       }  
                     ?>
                   


                </div>
            </div><!-- /.container -->
        </section><!-- /.blog-grid -->
</div>
    <!-- END </ PAGE CONTENT>  -->


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
      $('.filtr-btn').click(function() {
            $(".filter-box").addClass("add");
        });

        $('.close-filter').click(function() {
            $(".filter-box").removeClass("add");
        });
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
        $('.review-t').click(function() {
        $("#Reviews-tab").addClass("active");
    });

    $('.close-filter').click(function() {
        $(".filter-box").removeClass("add");
    });
    $(document).ready(function() {
            $("#sortBy").on('change',function(e) {
                e.preventDefault();
                var id = $(this).val();
                var catid="<?php echo $catid; ?>";
                $.ajax({
                    url :"<?= base_url().'home/sortByList'; ?>",
                    method :"post",
                    dataType :"html",
                    data :{sort :id,type:catid},
                    success:function(data) {
                        $("#sort").html(data);
                    }
                });
            });
    });
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

        // $(".items_wr").mCustomScrollbar();



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
                    $(".cartcnt").html((data));
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

<script type="text/javascript">
  

 filter_data();

    function filter_data()
    {
    
        var price = get_filter('getPrice');
        var id = "<?= $_GET['id']?>";
        var type = "<?= $_GET['stype']?>";
       
        $.ajax({
            url:"<?= base_url().'home/getPrice';?>",
            method:"POST",
             dataType :"html",
            data:{price:price,id:id,type:type},
            success:function(data){
                $("#sort").html(data);
            }
        });
    }

    function get_filter(class_name)
    {
        var filter = [];
        $('.'+class_name+':checked').each(function(){
            filter.push($(this).val());
        });
        return filter;
    }
   
 $('.checkedbox').click(function(){
        filter_data();
    });




</script>


</body>

</html>