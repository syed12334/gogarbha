			<?php

			
            $prosize = $this->home_db->sqlExecute('select s.name,s.id as sid,ps.id as psid from product_sizes ps left join sizes s on s.id = ps.size_id where ps.pid ='.$product[0]->id.'');
            $prosize1 = $this->home_db->sqlExecute('select s.name,s.id as sid,ps.id as psid,image from product_sizes ps left join sizes s on s.id = ps.size_id where ps.id ='.$psid.' and image !=""');
            $prosize2 = $this->home_db->sqlExecute('select s.name,s.id as sid,ps.id as psid,image from product_sizes ps left join sizes s on s.id = ps.size_id where ps.id ='.$psid.' and image !="" limit 1');
            $images = $this->home_db->sqlExecute('select * from product_images where pid='.$product[0]->id.'');
                     $images1 = $this->home_db->sqlExecute('select * from product_images where pid='.$product[0]->id.' limit 1');
			//echo $this->db->last_query();exit;
								$currencyid = $this->session->userdata('currencyid');
			                    $priceType = ($currencyid !='' ) ? $currencyid['price_type'] : '';
								$price_icon =  ($priceType == 2) ? '<span>&#36;</span>' : '<i class="fas fa-rupee-sign"></i>';
								
								$mrp = $product[0]->mrp;
								$sell = $product[0]->selling_price;
								$sel_dollar = $product[0]->sel_dollar;
								if($user_type == 2)
								{
								  $sell = $product[0]->b2b_selling_price;
								  $sel_dollar = $product[0]->b2b_sel_dollar;
								}
								$disc = $this->home_db->discount($mrp, $sell);
								$size = $product[0]->spage_url;
								$size = $product[0]->spage_url;
								$str = explode("-",$size);
								$sellp = ($priceType == 2) ? $sel_dollar : $sell;
								$stock = '<p style="color:red;";>Out of Stock</p>';
								?>


                                  <div class="col-md-6 rop" >
                     
                            <?php
                                if(count($prosize1) >0) {
                                    ?>
                                       <div class="product_image_wr">
                                <div class="product_image">
                                    <ul class="rslides" id="slider1">

                                    <li class="img_box"><img id="zoom_03" src="<?php echo cdn_url() . $prosize2[0]->image; ?>" data-zoom-image="<?php echo cdn_url() . $prosize2[0]->image; ?>"/> </li>

                                </ul>
                                </div>
                                <div class="thumbnails">
                                   <ul id="gallery_01">
                                    <?php
                                    foreach ($prosize1 as $key => $value) {
                                        ?>
    
                                    <li class="thumbnail_box">  <span data-image="<?php echo cdn_url() . $value->image; ?>" data-zoom-image="<?php echo cdn_url() . $value->image; ?>" style="cursor:pointer">
        <img id="zoom_03" src="<?php echo cdn_url() . $value->image; ?>"/>
      </span>
     </li>

                             
                                        <?php
                                    }
                                     ?>
                                        </ul>
                                </div>
                            </div>
                                    <?php
                                }else {
                                     ?>
                                       <div class="product_image_wr">
                                <div class="product_image">
                                    <ul class="rslides" id="slider1">

                                    <li class="img_box"><img id="zoom_03" src="<?php echo cdn_url() . $images1[0]->image_medium; ?>" data-zoom-image="<?php echo cdn_url() . $images1[0]->image_large; ?>"/> </li>

                                </ul>
                                </div>
                                <div class="thumbnails">
                                   <ul id="gallery_01">
                                    <?php
                                    foreach ($images as $key => $value) {
                                        ?>
                                <li class="thumbnail_box">  <span data-image="<?php echo cdn_url() . $value->image_medium; ?>" data-zoom-image="<?php echo cdn_url() . $value->image_large; ?>" style="cursor:pointer">
                                    <img id="zoom_03" src="<?php echo cdn_url() . $value->image_large; ?>"/>
                                    </span>
                                </li>
                                        <?php
                                    }
                                     ?>
                                        </ul>
                                </div>
                            </div>
                                    <?php
                                }
                            ?>
                               
                    </div><!-- /.col-md-6 -->
	                 <div class="col-md-6 col-lg-6 col-xs-12 col-sm-6">
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
                    <span class="ssl <?php if($value->psid == $product[0]->psid) { echo 'active';}?>" onclick="prosize(<?= $product[0]->id; ?>,<?= $value->psid;?>,<?= $value->sid?>,'<?= $product[0]->ppage_url;?>')"><?php echo $value->name;?></span>
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



                                    <script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js"></script>
 
    <script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
      <script>
        $("#zoom_03").elevateZoom({gallery:'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'}); 
 
    $("#zoom_03").bind("click", function(e) {  
    var ez =   $('#zoom_03').data('elevateZoom');   
        $.fancybox(ez.getGalleryList());
    return false;
    });</script>