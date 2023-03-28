
         <div class="service-details pt-0 pb-0"  id="loaddata">
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
                    
                        
                            $tax_amt = (int)$productTax[0]->tax / 100 * (int)$items['subtotal'];
                        $tax[] = (int)$productTax[0]->tax / 100 * (int)$items['subtotal'];
           
                    
                    
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
                                     <h4>Product Code:<?php echo $items['pcode'] ?></h4>
                                   
                                   
                                    
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

    $this->session->set_userdata('totalamountlist',(int)array_sum($ars)+(int)array_sum($tax)- (int)$discountAmount);

                                              ?><span id="totalAmoutA"><?php echo  number_format((int)array_sum($ars)+(int)array_sum($tax)- (int)$discountAmount);
                                 
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
        </div><!-- /.service-details -->