<span class="myloader" style="display:none;"></span>
<!-- <CART POPUP> ================================= -->
<div class="cart_popup_wr">
	<div class="cart_popup">
		<div class="items_rate">
			<?php $charges = 0;
			if ($this->session->userdata('pincode')) {
			if (floatval($this->session->userdata('charges')) > 0) {
			$charges = $this->session->userdata('charges');
			}
			}
			?>
			<span class="count"> <span class="cartcnt"><?php echo count($this->cart->contents()); ?></span> items</span>
			<span class="price" id="carttot"> <i class=" icon_rs_gray"></i>
			<?php echo $this->home_db->getcarttotal($this->session->userdata('discount'), $this->cart->total(), $charges); ?></span>
		</div>
		<a href="javascript:void(0);" class="close">X</a>
		<div id="cart_tabs" class="tabs_container">
			<ul class="tabs">
				<li data-tabs="cart_tab1" class="active" id="carttab1">Cart</li>
				<li data-tabs="cart_tab2" id="carttab2">Wishlist</li>
			</ul>
			<div id="cart_tab1" class="tabcontent cart_tabcontent">
				<div class="items_wr" id="cart_popup_wr"
					<?php if (count($this->cart->contents()) <= 0) { ?>align="center" <?php } ?>>
					<?php if (count($this->cart->contents()) > 0) {
					foreach ($this->cart->contents() as $items) {
					$options = $this->cart->product_options($items['rowid']);
					?>
					<div class="added_cart_item_row <?php echo $items['rowid']; ?>">
						<div class="item">
							<a href="<?php echo $items['plink']; ?>"><img src="<?php echo $items['image']; ?>"></a>
						</div>
						<div class="item_details">
							<h4><?php echo $items['name']; ?>
							<?php if ($items['sizeid'] != '0') {
							echo '(' . $items['sname'] . ')';
							} ?></h4>
							<p>[<?php echo $items['pcode']; ?>]</p>
						</div>
						<span class="delete_btn" onclick="remove_row('<?php echo $items['rowid'] ?>');" title="remove"></span>
					</div>
					<?php } ?>
					<div class="view_btn">
						<a class="btn btn-primary" href="<?php echo base_url(); ?>cart/cart_summary">View Cart</a>
					</div>
					<?php } else {
					?>
						<div class="alert alert-danger alert-dismissable" style="width: 80%;">No items in your Cart!</div>
					<?php } ?>
				</div>
			</div>
			<div id="cart_tab2" class="tabcontent cart_tabcontent">
				<div class="items_wr" id="wish_popup_wr" <?php if (!is_array($UserDetail)) { ?>align="center"
					<?php } else {
					$wishlist = $this->home_db->getcontent1('wishlist_view', 'user_id', $UserDetail[0]->id, '', 'id', 'asc');
					if (!is_array($wishlist)) { ?>align="center"
					<?php }
														} ?>>
					<?php if (!is_array($UserDetail)) { ?>
					<div class="alert alert-danger alert-dismissable" style="width: 80%;">No Wishlist Found!</div>
					<?php } else {
					//$wishlist = '';
					if (is_array($wishlist)) {
					foreach ($wishlist as $w) {
					$url = base_url() . 'products/product_view?page=' . $w->ppage_url;
					?>
					<div class="added_cart_item_row remove<?php echo $w->id; ?>">
						<div class="item">
							<a href="<?php echo $url ?>"><img src="<?php echo cdn_url() . $w->image_path; ?>"></a>
						</div>
						<div class="item_details">
							<h4><?php echo $w->pname ?></h4>
							<p>[<?php echo $w->pcode; ?>]</p>
						</div>
						<a href="javascript:add_cart('<?php echo $w->cpage_url; ?>','<?php echo $w->psid; ?>');remove_wish(<?php echo $w->pid; ?>);"class="add_cart">Add to Cart</a>
						<span class="delete_btn" onclick="remove_wish(<?php echo $w->pid; ?>);" title="remove"></span>
					</div>
					<?php } ?>
					<div class="view_btn">
						<a class="btn btn-primary" href="<?php echo base_url(); ?>my_account/my_wishlist">View Wishlist</a>
					</div>
					<?php } else { ?>
						<div class="alert alert-danger alert-dismissable" style="width: 80%;">No Wishlist Found!</div>
					<?php }
					} ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- </CART POPUP> ================================= -->
<!-- <HEADER> ================================= -->
<a href="#" class="scrollup">Scroll</a>
<header>
	<div class="topbsp  text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-5 col-sm-5 col-xs-12 hidden-sm hidden-xs text-left">
					<li class="t-left">Get 50% Off On Selected Items</li>
				</div>
				<div class="col-lg-6 col-md-7 col-sm-7 col-xs-12 hidden-sm text-right offtitle"></div>
			</div>
		</div>
	</div>
	<?php 
	$array=explode('/', $_SERVER['REQUEST_URI']);
	end($array);
	$mainmenu = $this->uri->segment(2);
	$menu = $this->uri->segment(3);

	$arr1 = $arr2 = array();
	$hcategory = $this->home_db->getcontent1('view_categ_exist','*','','','corder_no','asc');
	//echo $this->db->last_query();exit;
	$cnt = 0;
	/*if(is_array($hcategory)){
	$cnt = round(count($hcategory)/2);
	$hcategory = array_chunk($hcategory, $cnt, true);
	if(count($hcategory) > 1){
	$arr1 = $hcategory[0];
	}
	else{
	$arr1 = $hcategory[0];
	}
	}*/	
	?>
	<div class="homemenu">
		<div class="container">
			<div class="row">
				<div id="logo" class="col-lg-4 col-md-3 col-sm-2 col-xs-12 text-left">
					<a href="<?php echo base_url() ?>"><img src="<?php echo asset_url(); ?>images/logo.png" class="img-responsive"></a>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 header_sea">
					<div id="search" class="desktop-search">
						<div id="search" class="wbSearch">
							<div id="search_block_top">
								<div class="input-group">
									<input type="text" value="" placeholder="Search products here..." name="searchbar" id="searchbar" onkeypress="searchproducts(event);" class="ui-autocomplete-input search_query form-control input-lg madebyhand-search" autocomplete="off">
									<div class="input-group-btn">
										<button type="button" class="btn btn-primary btn-lg" onclick="checkempty();">
										<i class="fas fa-search"></i>
										</button>
									</div>
									<div class="madebyhand-search text-left">
										<div class="madebyhand-search-loader" style="display: none;">
											<div class="loaders"></div>
										</div>
										<div class="madebyhand-search-result">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="top-links" class="col-lg-3 col-md-4 col-sm-12 col-xs-12 text-right">
					<ul class="list-inline">
						<?php if(!is_array($UserDetail)){?>
						<li class="dropdown inuser d-inline-block">
							<a href="<?php echo base_url();?>register" title="My Account" class="dropdown-toggle" data-toggle="dropdown">
								<div class="usvg d-inline-block">
									<div class="svgbg"><i class="far fa-user ssm"></i> </div>
									<div class="hdis text-left nav-link hidden-xs d-inline-block">
									<span class="hidden-sm-down userdess">My Account</span><br class="hidden-md-down">
									<span><span id="cartme">Register &amp; login</span></span>
									</div>
								</div>
							</a>
							<ul class="dropdown-menu dropdown-menu-right user-down haccount  hlogout ">
								<h5 class="text-left">Your Account</h5>
								<h6 class="text-left">Access account and manage orders</h6>
								<li class="acd"><a href="<?php echo base_url();?>register" class="link"><i
								class="fa fa-user-plus"></i> Register</a></li>
								<li class="acd"><a href="<?php echo base_url();?>login" class="link"><i class="fa fa-lock"></i> Sign In</a></a></li>
							</ul>
						</li>
						<?php }else{
						?>
						<div class="hdis text-left nav-link hidden-xs d-inline-block">
							<a href="<?php echo base_url();?>my_account">
								<div class="usvg d-inline-block">
									<div class="svgbg"><i class="far fa-user ssm"></i> </div>
									<div class="hdis text-left nav-link hidden-xs d-inline-block">
										<span class="hidden-sm-down userdess">Hi</span><br class="hidden-md-down">
										<span><?php echo $UserDetail[0]->name;?></span>
									</div>
								</div>
							</a>
						</div>
						<?php }?>
						<li>
							<div id="cart" class="btn-group btn-block">
								<a href="<?php echo base_url()?>cart/cart_summary">
									<div class="svgbg">
										<i class="fas fa-shopping-basket ssm"></i>
									</div>
									<span id="cart-total"><span class="hidden-xs  hidden-xs  cartna"> My cart</span>
									<br class="hidden-xs hidden-sm">
									<span
									class="cartt count cartcnt">(<?php echo count($this->cart->contents());?>)</span>
									<span class="hidden-xs hidden-sm hidden-xs "> Items </span></span>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="header">
		<a href="#" class="scrollup">Scroll</a>
		<!-- Logo and Loging row -->
		<div class="container"></div>
		<div class="stick">
			<div class="container">
				<div class="row">
					<div class=" menu_hed">
						<div class="container_wb_megamenu">
							<nav id="menu" class="navbar">
								<div class="navbar-header">
									<button type="button" class="btn-navbar navbar-toggle" onclick="openNav()" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
								</div>
								<div id="mySidenav" class="sidenav">
									<div class="close-nav  hidden-md hidden-lg hidden-xl">
										<span class="categories">all Categories</span>
										<a href="javascript:void(0)" class="closebtn pull-right" onclick="closeNav()"><i class="fa fa-close"></i></a>
									</div>
									<div class="collapse navbar-collapse navbar-ex1-collapse">
										<ul class="nav navbar-nav">
                                            <li class="dropdown m-menu"><a href="#" class="dropdown-toggle header-menu" data-toggle="dropdown" >Premium Body Care<i class="fa fa-angle-down enangle"></i></a>
											
                                                <div class="dropdown-menu">
                                                    <div class="dropdown-inner">
														<ul class="list-unstyled">
															<li class="dropdown-submenu"> 
																<ul class="list-unstyled grand-child">
																	<li><a href="<?php echo base_url();?>products/products_wholesaler?type=soap-2">Soap</a> </li>
																	<li> <a href="<?php echo base_url();?>wholesaler">Aftershave</a> </li>
																	<li> <a href="<?php echo base_url();?>wholesaler">Body Wash</a> </li>
																	<li> <a href="<?php echo base_url();?>wholesaler">Moisturizer</a> </li>
																	<li> <a href="<?php echo base_url();?>wholesaler">Noviley Exclusive </a> </li>
																</ul>
															</li>
														</ul>
                                                    </div>
                                                </div>
                                            </li>
											<li class="dropdown m-menu"><a href="#" class="dropdown-toggle header-menu" data-toggle="dropdown" >Luxury Spa Essentials<i class="fa fa-angle-down enangle"></i></a>
                                                <div class="dropdown-menu">
                                                    <div class="dropdown-inner">
														<ul class="list-unstyled">
															<li class="dropdown-submenu"> 
																<ul class="list-unstyled grand-child">
																	<li> <a href="<?php echo base_url();?>wholesaler">Massage Oil</a> </li>
																	<li> <a href="<?php echo base_url();?>wholesaler">Bath Salts</a> </li>
																	<li> <a href="<?php echo base_url();?>wholesaler">Body Scrub and Pack</a> </li>
																</ul>
															</li>
														</ul>
                                                    </div>
                                                </div>
                                            </li>
											 <li class="dropdown m-menu"><a href="#" class="dropdown-toggle header-menu" data-toggle="dropdown" >Wellness Naturale<i class="fa fa-angle-down enangle"></i></a>
                                                <div class="dropdown-menu">
                                                    <div class="dropdown-inner">
														<ul class="list-unstyled">
															<li class="dropdown-submenu"> 
																<ul class="list-unstyled grand-child">
																	<li> <a href="<?php echo base_url();?>wholesaler">Edible </a>
																		<ul class="list-unstyled grand-child">
																			<li> <a href="<?php echo base_url();?>wholesaler">Oils </a></li>
																			<li> <a href="<?php echo base_url();?>wholesaler">Teas</a></li>
																			<li> <a href="<?php echo base_url();?>wholesaler">Herbs & Spices</a></li>
																		</ul>
																		<ul class="list-unstyled grand-child">
																			<li> <a href="<?php echo base_url();?>wholesaler">Non Edible</a>
																				<ul class="list-unstyled grand-child">
																					<li> <a href="<?php echo base_url();?>wholesaler">Oils </a></li>
																					<li> <a href="<?php echo base_url();?>wholesaler">Incense & fragrances</a></li>
																					<li> <a href="<?php echo base_url();?>wholesaler">Crystals & Accessories</a></li>
																				</ul>
																			</li>
																		</ul>
																	</li>
																</ul>
															</li>
														</ul>
                                                    </div>
												</div>
											</li>
											<li class="dropdown m-menu"><a href="#" class="dropdown-toggle header-menu" data-toggle="dropdown" >Eco  & Bio Artisan  Products <i class="fa fa-angle-down enangle"></i></a>
                                                <div class="dropdown-menu">
                                                    <div class="dropdown-inner">
														<ul class="list-unstyled">
															<li class="dropdown-submenu"> 
																<ul class="list-unstyled grand-child">
																	<li> <a href="<?php echo base_url();?>wholesaler">Utility </a>
																		<ul class="list-unstyled grand-child">	
																			<li> <a href="<?php echo base_url();?>wholesaler">Kitchen </a></li>
																			<li> <a href="<?php echo base_url();?>wholesaler">Disposables</a></li>
																			<li> <a href="<?php echo base_url();?>wholesaler">Accessories </a></li>
																		</ul>
																		<ul class="list-unstyled grand-child">
																			<li> <a href="<?php echo base_url();?>wholesaler">Packaging</a>
																				<ul class="list-unstyled grand-child">
																					<li> <a href="<?php echo base_url();?>wholesaler">Boxes</a></li>
																					<li> <a href="<?php echo base_url();?>wholesaler">Organisers</a></li>
																					<li> <a href="<?php echo base_url();?>wholesaler">Bags</a></li>
																				</ul>
																			</li>
																		</ul>
																	</li>
																</ul>
															</li>
														</ul> 
                                                    </div>
                                                </div>
                                            </li>
										</ul>
                                    </div>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
</header>


