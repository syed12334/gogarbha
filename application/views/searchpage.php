<?php
//echo "<pre>";print_r($products);exit;

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
<link rel="canonical" href="<?php echo base_url().'search';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'search'?>"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->

</head>

<body>
<span class="myloader" style="display: none"></span>
    <?php echo $header; ?>
  <div class="page-wrapper">
           <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <section class="page-header">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container soft">
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="<?= base_url();?>">Your have searched</a></li>
                    
                </ul><!-- /.thm-breadcrumb list-unstyled -->
                <h2><?php echo ucfirst($searcheddata);?></h2>
                <div class="filter-option">
                    <span class="sort">
                         <select id="sortBySearch">
                            <option>Sort By</option>
                            <option value="1">Low to High</option>
                            <option value="2">High to Low</option>
                            <option value="3">Newest First</option>
                            <option value="4">Popularity</option>
                        </select></span>
                </div>
            </div><!-- /.container -->
        </section><!-- /.page-header -->


     

        <section class="blog-grid">
            <div class="container">
                <div class="row" id="sort">
                    <?php

//echo "<pre>";print_r($special_offers);exit;
                              
                    if(count($products) > 0) 
                    {  
                        foreach ($products as $p) 
                        {
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
                            $name = $p->pname;
                          
                            if (strlen($name) > 32) {
                                $name = substr($name, 0, 30) . '...';
                            }
                            $url = base_url() . 'product/' . $p->ppage_url;
                           // $sellp = ($priceType == 2) ? $sel_dollar : $sell;
                            

                              
 ?>
                    <div class="col-md-3 col-lg-3 col-6">
                        <div class="blog-card">
                            <?php 
                                if(!empty($disc)  && $disc !=0) {
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
                                <img src="<?php echo cdn_url().$p->image_path; ?>" alt="">
                                <a href="<?php echo $url; ?>"></a>
                            </div><!-- /.blog-card__image -->
                            <div class="blog-card__content">
                                <h3><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h3>
                            <p><?= $p->sname?></p>
 <?php if($stock ==0) { echo "<p style='color:red'>Out of stock</p>";}?>    
                                <div class="price"><span class="new-price"><i class="fas fa-rupee-sign"></i>  <?php echo $this->home_db->getnumberformat($sell); ?></span>
                                      <?php if (floatval($disc) > 0) {?>
                                 <span class="old-price"><i class="fas fa-rupee-sign"></i>
                                    <?php echo $this->home_db->getnumberformat($mrp); ?></span><?php } ?>
                                </div>
                                 <?php
                         
                               ?>
                               <!--  <a href="javascript:add_cart('<?php echo $p->cpage_url; ?>','<?php echo $p->pid; ?>');" class="thm-btn"><i class="fas fa-shopping-cart"></i> &nbsp; ADD TO CART</a> /.thm-btn --> 
                     
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
			console.log('radbtn'+radbtn);
            if (radbtn.is(':checked') == true) {
                radbtn.attr('checked', 'checked');
            } else {
                radbtn.attr('checked');
            }
            $('#filterform').attr("onsubmit", "return true;");
            $("#filterform").submit();
        });

    });

    (function($) {
        $(window).load(function() {
            // $(".filter_list").mCustomScrollbar();
        });
    })(jQuery);

    $(document).ready(function() {
            $("#sortBySearch").on('change',function(e) {
                e.preventDefault();
                var data = $(this).val();
                var cat = "<?php echo $_GET['searchbar'] ?>";
                $.ajax({
                    url :"<?= base_url().'home/sortByListSearch'; ?>",
                    method :"post",
                    dataType :"html",
                    data :{sort :data,title:cat},
                    success:function(data) {
                        $("#sort").html(data);
                    }
                });
            });
    });
    $(document).ready(function($) {
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
        $.ias({
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


<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="<?php echo asset_url(); ?>css/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript">
    $j = jQuery.noConflict();

    function monkeyPatchAutocomplete() {

        var oldFn = $j.ui.autocomplete.prototype._renderItem;

        $j.ui.autocomplete.prototype._renderItem = function(ul, item) {

            var t = String(item.value).replace(
                new RegExp(this.term, "gi"),
                "<b>$&</b>");

            return $j("<li></li>")
                .data("item.autocomplete", item)
                .append("<a>" + t + " </a>")
                .appendTo(ul);
        };
    }

    $j(document).ready(function() {

        monkeyPatchAutocomplete();
        var str = '<?php echo $materialtext . $color_text . $size_text . $cattext; ?>';
        //alert('<?php echo base_url() ?>search?search_auto?'+str);
        $j('#searchbar').autocomplete({
            source: '<?php echo base_url(); ?>search/search_auto?' + str,
            minLength: 2,
            select: function(event, ui) {

                if (parseInt(ui.item.id) != 0) {

                    window.location.href = '<?php echo base_url() ?>search?searchbar=' +
                        encodeURIComponent(ui.item.value) + '&id=' + ui.item.id + str;
                } else {
                    $j(this).removeClass('working');
                    ui.item.value = $j('#searchbar').val();
                }
            },
            search: function() {
                $j(this).addClass('working');
            },
            open: function() {
                $j(this).removeClass('working');
            }
        });

    });

    function checkempty() {

        var val = document.getElementById("searchbar").value;
        if ($j.trim(val) == "") {
            $j('#filterform').attr("onsubmit", "return false;");
            $j("#searchbar").focus();
        } else {
            $j('#filterform').attr("onsubmit", "return true;");
            $j('#filterform').submit();
        }
    }

    function searchproducts(e) {
        if (e.keyCode == 13) {

            checkempty();
        }
    }
</script>


</body>

</html>