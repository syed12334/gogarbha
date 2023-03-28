 <?php //echo "<pre>";print_r($ppids);exit; ?>
   <div class="toast" style="position: fixed; top:5px; right: 5px; z-index: 99;" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
    <div class="toast-header">
      <strong class="mr-auto text-primary">My Cart</strong>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">×</button>
    </div>
    <div class="toast-body">
      Item added to cart
    </div>
  </div>
 <?php if (is_array($product)) {
            $mrp = $product[0]->mrp;
            $sell = $product[0]->sellingprice;
            $disc = $this->home_db->discount($mrp, $sell);
            $ppackage = $this->home_db->sqlExecute('select  * from productpackage where pid ='.$product[0]->id.'');
        ?>
            <div class="container">
                <div class="row">
                    
                    <?php $images = $this->home_db->sqlExecute('select * from product_images where pid='.$product[0]->ppid.'');
                     $images1 = $this->home_db->sqlExecute('select * from product_images where pid='.$product[0]->ppid.' limit 1');
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
                                     

                                    <li class="thumbnail_box">  <span style="cursor:pointer" data-image="<?php echo cdn_url() . $value->image_medium; ?>" data-zoom-image="<?php echo cdn_url() . $value->image_large; ?>">
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
                        <h4 class="mt-0 mb-1"><?php echo $product[0]->title; ?> - <?php echo $product[0]->ptitle; ?></h4>
                        <h6 class="mb-1"> Product Code:<?php if (!empty($product[0]->pcode)) { ?> <?php echo $product[0]->pcode ?> <?php } ?></h6>
                        <hr>
                        <div class="blog-card__meta mb-3">
                            <?php $rate = $this->products_db->getratings($product[0]->ppid);
                                //echo $this->db->last_query();

                             ?>
                            <a><i class="far fa-star"></i><?php if(!empty($rate)) {echo str_replace(".0000", "", $rate); }else { echo 0; }?> Rating</a> &nbsp;&nbsp; |
                            <a class="review-t"><i class="far fa-comments"></i> <?php $reviews = $this->home_db->getRecords('reviews', ['pid' => $product[0]->ppid,'status'=>0], '*');
                                                                                if (is_array($reviews)) {
                                                                                    echo count($reviews);
                                                                                } else {
                                                                                    echo 0;
                                                                                } ?> Reviews</a> &nbsp;&nbsp; |
                             <?php if ($product[0]->stock > 0) { ?><a class="text-success"><i class="fa fa-check text-success"></i> In Stock</a><?php } else { ?><a class="text-danger"><i class="fa fa-times text-danger"></i> Out of Stock</a><?php } ?>
                        </div>
                        <hr>
                        <input type="hidden" id="hid" value="<?php echo $product[0]->id; ?>">

                        <div class="price">
                            <span class="main"><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($product[0]->sellingprice); ?></span>
                              <span class="hash-price"><?php if (floatval($disc) > 0) { ?><i class="fas fa-rupee-sign"></i> <?php echo $this->home_db->getnumberformat($product[0]->mrp); ?> <?php } ?></span>
                            <h6><?php
                                    if(!empty($product[0]->psize)) {
                                        $sql = $this->home_db->getRecords('sizes',['id'=>$product[0]->psize],'id,name');

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

                             <div class="pack  mt-4">
                                 <?php
                                if(count($ppackage)) {
                                    foreach ($ppackage as $value) {
                                        ?>
                                       
                                            <?php
                                        if($value->package_id ==1) {
                                            
                                               ?>
                                                <span data-id="<?php echo $product[0]->id; ?>" data-pid="<?php echo $value->id; ?>" id="packagenew1" onclick="return packagechange(<?php echo $product[0]->id; ?>,<?php echo $value->id; ?>,1)" class="<?php if($ppids==1) {echo 'active';}else {echo"";}?>">Gold</span>
                                               <?php
                                          
                                        }
                                        
                                         if($value->package_id ==2) {
                                         
                                              ?>
                                              <span data-id="<?php echo $product[0]->id; ?>" data-pid="<?php echo $value->id; ?>" id="packagenew2" onclick="return packagechange(<?php echo $product[0]->id; ?>,<?php echo $value->id; ?>,2)" class="<?php if($ppids==2) {echo 'active';}else {echo"";}?>">Silver</span>
                                              <?php
                                          
                                        }

                                         if($value->package_id ==3) {
                                           
                                                ?>
                                                  <span data-id="<?php echo $product[0]->id; ?>" data-pid="<?php echo $value->id; ?>" id="packagenew3" onclick="return packagechange(<?php echo $product[0]->id; ?>,<?php echo $value->id; ?>,3)" class="<?php if($ppids==3) {echo 'active';}else {echo"";}?>">Normal</span>
                                                <?php
                                          
                                        }
                                      
                                    }
                                }
                            ?>
                             </div>
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
                                    <span class="add-to-cart thm-btn " onclick="add_cart('<?php echo $product[0]->cpage_url; ?>','<?php echo $product[0]->ppid; ?>')" style="cursor:pointer" id="showToast">ADD TO CART</span><!-- /.thm-btn -->
                                </div>
                                <a href="javascript:void(0);" categ="<?php echo $product[0]->cpage_url ?>" wid="<?php echo $product[0]->ppid; ?>" id="w<?php echo $product[0]->ppid; ?>" <?php if ($wish == 0) { ?>class="share wish awishlist addto_wish<?php echo $product[0]->ppid; ?>" <?php } else { ?>class="btn" <?php } ?>>
                                    <i id="icon<?php echo $product[0]->ppid ?>" class="far  <?php if ($wish == 0) { ?>fa-heart<?php } else { ?>fa-heart<?php } ?>"></i>
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
                                        <a href="http://twitter.com/share?text=<?= $product[0]->ptitle?>?&url=<?= base_url().'product/'.$product[0]->ppage_url?>&hashtags=#gogarbha" target="_blank" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="https://plus.google.com/share?url=<?= base_url().'product/'.$product[0]->ppage_url?>" target="_blank" class="googleplus"><i class="fab fa-google-plus-g"></i></a>
                                    </div>
                                </div>

                            </div>

                        </div>





                    </div>





                </div><!-- /.row -->


                <div class="row">
                    <div class="col-md-12">
                        <div class="det-s">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="Discription-tab" data-toggle="tab" href="#Discription" role="tab" aria-controls="Discription" aria-selected="true">Discription</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="Specification-tab" data-toggle="tab" href="#Specification" role="tab" aria-controls="Specification" aria-selected="false">How To Use
                                    </a>
                                </li>
                             <!--      <li class="nav-item">
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
                                                    if(!empty($product[0]->youtube)) {
                                                        $youtube = $product[0]->youtube;
                                                        $ex = explode("v=", $youtube);
                                                        ?>
                                                        <iframe width="60%" height="350" src="https://www.youtube.com/embed/<?php echo $ex[1];?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                                        $reviews = $this->home_db->getRecords('reviews', ['status'=>0,'pid'=>$product[0]->ppid],'*','id desc');
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
                                                 <input type="hidden" name="pid" id="pid" value="<?= $product[0]->piidmg;?>">
                                                <input type="hidden" name="ppid" id="ppid" value="<?= $product[0]->ppid;?>">
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
            <?php } else {
            echo "No product found";
        } ?>
            </div><!-- /.container -->
       

       <script type="text/javascript">
           
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
  $("#zoom_03").elevateZoom({gallery:'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'}); 
 
    $("#zoom_03").bind("click", function(e) {  
    var ez =   $('#zoom_03').data('elevateZoom');   
        $.fancybox(ez.getGalleryList());
    return false;
    });

    
       </script>