<?php //echo "<pre>";print_r($this->cart->contents());exit;?>
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
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/main.css">
<link rel="canonical" href="<?php echo base_url().'cart/cart_summary';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'pcart/cart_summary';?>"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
    <style type="text/css">
        .no-td-border {
            border-bottom: none !important;
        }
    </style>
</head>

<body>
    <?php echo $header; ?>

 <section class="page-header">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url(); ?>/images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <ul class="thm-breadcrumb list-unstyled">
                    
                    <li><span>MY CART</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

         <section class="service-details pt-5 pb-5"  id="loaddata">
            <?php 
                if(count($this->cart->contents()) >0) {
                    $arss = [];
                    foreach($this->cart->contents() as $key) {
                         $arss[] = $key['subtotal'];
                    }
                    $discountAmount = "";
                                        if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                            $discountAmount = $this->session->userdata('discount') / 100 * array_sum($arss);
                                        }

                      $currencyid = $this->session->userdata('currencyid');
                $priceType = ($currencyid != '') ? $currencyid['price_type'] : '';
                $price_icon =  ($priceType == 2) ? '<span>&#36;</span>' : '<i class="fa fa-rupee-sign"></i> ';
                    ?>
                    <div class="container">
                 
                <div class="row">
                    <div class="col-md-8">
                        <h2>Items Purchased</h2>
                        <?php 
                                  $ars = [];$tax = [];
                    foreach ($this->cart->contents() as $items) {
                        $ars[] = $items['subtotal'];
                        $options = $this->cart->product_options($items['rowid']);
                        $sellp = ($priceType == 2) ? $items['sel_dollar'] : $this->home_db->getnumberformat($items['price']);
                    $productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax');
                    if(!empty($productTax)) {
                        if(is_numeric($productTax[0]->tax)) {
                            $tax_amt = $productTax[0]->tax / 100 * $items['subtotal'];
                        $tax[] = $productTax[0]->tax / 100 * $items['subtotal'];
                        }
                        
                }else {

                }
                    
                    
                    ?>
                      <div class="card cart-item">
                            <div class="card-body p-1">
                                <div class="row">
 <div class="col-md-2 col-12">
                                    <img src="<?php echo $items['image']; ?>" alt="">
                                </div>

                                <div class="col-md-5 col-12">
                                    
                                    <div class="det">
                                    <h3><?php echo $items['name'];?></h3>
                                     <h6 class="mb-1 mt-1"><?php echo  $items['name'] ?></h6>
                                     <h4>Product Code: <?php echo $items['pcode'] ?></h4>
                                   
                                   
                                    
                                    <p><?= $items['sname']; ?></p>
                                    <div class="price">
                                        <span class="main"><i class="fas fa-rupee-sign"></i><?php echo  $sellp; ?></span>
                                       <!--  <span class="off-tag">
                                            10% <br> Off
                                        </span> -->
                                    </div>
                                </div>
                                </div>
                                <div class="col-md-3 col-9">
                                 <div class="input-group qty">
                                        <input type="button" value="-" class="button-minus reduced items-count" data-field="quantity" onclick="reduceqty('<?php echo $items['rowid']; ?>');">
                                       <input type="text" value="<?php echo $items['qty']; ?>" class="qty onlynumbers" name="qty<?php echo $items['rowid']; ?>" id="qty<?php echo $items['rowid']; ?>" uid="<?php echo $items['rowid']; ?>" maxlength="3" style="margin-top:0px!important;width:60px!important;padding: 0px 22px!important">
                                        <input type="button" value="+" class="button-plus increase items-count" data-field="quantity" onclick="addqty('<?php echo $items['rowid']; ?>');">
                                    </div>
                                </div>
                                <div class="col-md-2 col-3">
                                   <span class="delete-cart" onclick="remove_row('<?php echo $items['rowid']; ?>');"> <i class="fa fa-trash"></i></span>
                                </div>
                            </div>
                            </div>
                        </div>
                    <?php
                }

                        ?>
                      

                       
                    </div>
                    <div class="col-md-4 sticky-top">
                        <h2>Order details</h2>


                        <div class="crt-t">
                        <table class="table">
                            <tr>
                                <td>
                                    Item <span id="totalitemsview"><?php echo $this->cart->total_items();?></span>
                                </td>
                                <td align="right"><i class="fa fa-rupee-sign" style="margin-right:6px"></i>
                                   <span id="totalList"> <?php  echo $this->cart->total(); ?>
                               </span>
                                </td>
                            </tr>
                          
                                     <tr>
                                <td>Tax</td>
                                <td align="right"><i class="fa fa-rupee-sign" style="margin-right:6px"></i><?php $this->session->set_userdata('taxamountlist',array_sum($tax)); ?><span id="taxes" data-tax="<?php echo array_sum($tax);?>"><?php echo array_sum($tax);?></span></td>
                            </tr>
                            
 <!--                    <tr>
    <td>Shipping Charges</td>
    <td align="right"><i class="fa fa-rupee-sign" style="margin-right:6px"></i>0</td>
</tr>       
                          
                            
<tr>
    <td>Coupon</td>
</tr>--> 
                            <tr>
                                <td colspan="2" align="right" style="border: none;">
                                    
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder="Enter Coupon Code" name="coupon" id="coupon" required>
                                        <div class="input-group-append">
                                          <button class="btn btn-info giftcoupon" type="submit" id="couponcode">APPLY</button>
                                          
                                        </div>
                                      </div><div id="couponerror" class="text-left"></div></td>
                            </tr>
                              <?php
                                        $discountAmount = "";
                                        if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                            $discountAmount = $this->session->userdata('discount') / 100 * array_sum($ars);
                                            ?>
                                             <tr>
                                <td>Coupon Applied</td>
                                <td align="right"><?php echo $this->session->userdata('discount')."%";?> Discount <a href="javascript:void(0)" onclick="removediscount()" title="Remove Couponcode"><div class="remove-c"><i class="fa fa-times"></i> Remove </div></a></td>
                            </tr>
                                                                        <tr>
                                                <td> Discount Price <br /></td>
                                                <td align="right">
                                                    <?php echo "- ".$price_icon; ?>
                                                    <span id="discountview" data-discount="<?php echo $discountAmount ?>"><?php echo $discountAmount ?></span> </td>
                                            </tr>
                                            <?php

                                        }else {

                                        }

                                        ?>
                           
                            <tr>
                                <td>Total Amount</td>
                                <td align="right"><i class="fa fa-rupee-sign"></i><?php 

    $this->session->set_userdata('totalamountlist',number_format(floatval(array_sum($ars)),2)+number_format(floatval(array_sum($tax)),2) - number_format(floatval($discountAmount),2));

                                              ?><span id="totalAmoutA"><?php echo  number_format(floatval(array_sum($ars)),2)+number_format(floatval(array_sum($tax)),2) - number_format(floatval($discountAmount),2); 
                                 
                                ?> </span></td>
                            </tr>
                        </table>
                    </div>
<?php
    if(isset($UserDetail) && !empty($UserDetail)) {
        ?>
 <a href="<?= base_url().'cart/billing_shipping'?>" class="btn btn-info btn-block">Place Order</a>
        <?php
    }else {
        ?>
 <a href="<?= base_url().'login'?>" class="btn btn-info btn-block">Place Order</a>
        <?php
    }
?>
                    </div>
                </div>
 
            </div><!-- /.container -->
                    <?php
                     $discountAmount = "";
                        if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                            $discountAmount = $this->session->userdata('discount') / 100 * array_sum($ars);

                                        }
                }else {
                    ?>
                     <section class="service-details pt-5 pb-5">
            <div class="container">
                 
                <div class="row">
                    <div class="col-md-12 text-center">
<img src="<?php echo asset_url(); ?>images/icons/cow.svg" alt="" width="350px">
<h2 class="mb-2">Cart is empty.</h2>

<p>Looks like you have no items in your shopping cart.<br>
<a href="<?php echo base_url(); ?>">Click here</a> to continue shopping.</p>
                    </div>
                </div>
 
            </div><!-- /.container -->
        </section><!-- /.service-details -->
                    <?php
                }

            ?>
        </section><!-- /.service-details -->

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
    function reduceqty(id) {
        var result = document.getElementById('qty' + id);

        var qty = result.value;
        //alert(id);
        if (!isNaN(qty) && qty > 1) {
            result.value--;
        }
        updateCart(id);
        return true;
    }
    function removediscount() {
          $.ajax({
                url :"<?= base_url().'cart/destroycoupon'; ?>",
                success:function(data) {
                    $.post("<?php echo base_url(); ?>cart/loadsummary", function(data1) {
                $('.myloader').fadeOut();
                $("#loaddata").html(data1);
            });
                }
            });
    }

    $(document).ready(function() {
        $("#couponcode").on('click',function(e) {
            e.preventDefault();
            var coupon = $("#coupon").val();
            if(coupon =="") {
                $("#couponerror").html('<div class="text-danger">Please enter coupon code</div>');
                return false;
            }
        });
        
    });

    function addqty(id) {
        var result = document.getElementById('qty' + id);
        var qty = result.value;
        if (!isNaN(qty)) {
            result.value++;
        }
        updateCart(id);
        return true;
    }


    function updateCart(id) {
        $('.myloader').fadeIn();
         var tax =  $("#taxes").data('tax');
         //alert(tax);
         var discount =  $("#discountview").data('discount');
         var total = tax - discount;

        //alert();
        var qty = $("#qty" + id).val();
        if (parseInt(qty) <= 0) {
            qty = 1;
        }
        $.ajax({
            url :"<?php echo base_url(); ?>cart/updateCart",
            method :"post",
            data : {
                rowid: id,
            qty: qty
        },
        dataType :"json",
        success:function(data) {
            console.log(data);
            $('.myloader').fadeOut();
           $.post("<?php echo base_url(); ?>cart/loadsummary", function(data1) {
                $('.myloader').fadeOut();
                $("#loaddata").html(data1);
                $("#gmsgbox").html(data);
            });
                
        }
        });
       
    }
</script>

</body>

</html>