<?php if(count($this->cart->contents()) > 0){
                  	foreach ($this->cart->contents() as $items){
                  		$options = $this->cart->product_options($items['rowid']);
                  	?>
                    <div class="added_cart_item_row <?php echo $items['rowid'];?>">
                        <div class="item">
                            <a href="<?php echo $items['plink'];?>"><img src="<?php echo $items['image'];?>"></a>
                        </div>
                        <div class="item_details">
                            <h4><?php echo $items['name'];?> <?php if($items['sizeid'] != '0'){echo '('.$items['sname'].')';}?></h4>
                            <p >[<?php echo $items['pcode'];?>]</p>
                        </div>
                        <span class="delete_btn" onclick="remove_row('<?php echo $items['rowid']?>');"></span>
                    </div>
                    <?php }?>
                    <div class="view_btn">
                        <a class="btn btn-primary" href="<?php echo base_url();?>cart/cart_summary" >View Cart</a>
                    </div>
                    <?php }
                    else{
                    ?>
                    <div class="alert alert-danger alert-dismissable" style="width: 80%;">No items in your Cart!</div>
                    <?php }?>