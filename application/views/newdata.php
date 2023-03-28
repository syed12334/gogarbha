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
                            //$sel_dollar = $p->sel_dollar;
                            $stock = $p->stock;
                            //echo 'user_type______'.$user_type;exit;
                            // if($user_type == 2)
                            // {
                            //   $sell = $p->b2b_selling_price;
                            //   $sel_dollar = $p->b2b_sel_dollar;
                            // }
                            $disc = $this->home_db->discount($mrp, $sell);
                            //print_r($disc);exit;
                            $name = $p->title;
                            // $size = $p->sname;
                            // $str = explode("-",$size);
                            if (strlen($name) > 32) {
                                $name = substr($name, 0, 30) . '...';
                            }
                            $url = base_url() . 'product/' . $p->ppage_url;
                           // $sellp = ($priceType == 2) ? $sel_dollar : $sell;
                             

                               
                            ?>
                    <div class="col-md-3 col-lg-3 col-6">
                        <div class="blog-card">
                            <?php 
                                if(!empty($disc) && $disc !=0) {
                                    ?>
                                    <div class="offer-tag"><span><?php  echo round($disc);?>%</span></div>
                                    <?php
                                }else {
                                    
                                }
                            ?>
                             <?php $rate = $this->products_db->getratings($p->id); 
                                //echo $this->db->last_query();exit;
                             ?>
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
                                <!-- <a href="javascript:add_cart('<?php echo $p->cpage_url; ?>','<?php echo $p->pid; ?>');" class="thm-btn"><i class="fas fa-shopping-cart"></i> &nbsp; ADD TO CART</a> -->
                     
                            </div><!-- /.blog-card__content -->
                        </div><!-- /.blog-card -->
                    </div><!-- /.col-md-6 col-lg-4 -->
                       
                     <?php

               
                 }
                    }else {
                        echo "<h3 style='text-align:center;width:100%'>No products found</h3>";
                       }  
                     ?>