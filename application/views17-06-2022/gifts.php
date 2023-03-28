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
	</style>
</head>

<body>

	<?php echo $header; ?>

	


	<!-- <PAGE CONTENT> ================================= -->
	<div class="page_content" id="information-information"> 
		 
			<h1 class="heading text-center"><span><?php echo $typename; ?></span></h1>
			 
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-11 col-sm-10">

					<!-- <div class="sort_by">
                	<span class="title"> Showing <?php echo $prodcount ?> items </span>
                    <span id="all"> <a href="<?php echo base_url() ?>">Home</a></span>
                    <span class="test"><?php echo $typename; ?></span>
                </div> -->

					<div class="row filter artiirow">
						<?php if ($prodcount) { ?>
							<?php
							if (count($query) && is_array($query)) {
								foreach ($query as $p) {
									$url = base_url() . 'products/product_view?page=' . $p->ppage_url;
									$mrp = $p->mrp;
									$sell = $p->selling_price;
									$disc = $this->home_db->discount($mrp, $sell);
									$name = $p->pname;
									if (strlen($name) > 32) {
										$name = substr($name, 0, 30) . '...';
									}
							?>

									<div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
										<div class="product-thumb transition">
											<div class="img">

												<div class="image">
													<a href="<?php echo $url; ?>"><img src="<?php echo cdn_url() . $p->image_path; ?>" class="img-responsive center-block"></a>
													<a href="<?php echo $url; ?>"><img src="<?php echo cdn_url() . $p->image_path; ?>" class="img-responsive second-img" alt="hover image"></a> <span class="sale"><?php if (floatval($disc) > 0) { ?> <?php echo $disc ?>
														<?php } ?>
													</span>
												</div>


											</div>
											<div class="text caption">
												<?php $rate = $this->products_db->getratings($p->pid); ?>
												<p class="star_box">
													<span class="star <?php if (intval($rate) >= 1) { ?>star_review<?php } ?>"></span>
													<span class="star <?php if (intval($rate) >= 2) { ?>star_review<?php } ?>"></span>
													<span class="star <?php if (intval($rate) >= 3) { ?>star_review<?php } ?>"></span>
													<span class="star <?php if (intval($rate) >= 4) { ?>star_review<?php } ?>"></span>
													<span class="star <?php if (intval($rate) >= 5) { ?>star_review<?php } ?>"></span>
												</p>

												<h4 class="protitle"><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h4>


												<p class="price">
													<?php $nooffer = 'no_offer';
													if (floatval($disc) > 0) {
														$nooffer = ''; ?>

														<span class="price-new <?php echo $nooffer; ?>"> <i class="fas fa-rupee-sign"></i>
															<?php echo $this->home_db->getnumberformat($p->selling_price); ?>
														</span> &nbsp;
														<span class="price-old"><i class="fas fa-rupee-sign"></i>
															<?php echo $this->home_db->getnumberformat($p->mrp); ?></span><?php } ?>
												</p>

												<div class="button-group">
													<a href="javascript:add_cart('<?php echo $p->cpage_url; ?>','<?php echo $p->psid; ?>');" type="button" data-original-title="Add to cart"><i class="fas fa-shopping-basket"></i></a>


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
													<a href="javascript:void(0);" data-original-title="Add to Wish List" wid="<?php echo $p->pid; ?>" id="w<?php echo $p->pid; ?>" categ="<?php echo $p->cpage_url ?>" <?php if ($wish == 0) { ?>class="awishlist" title="Add to wishlist" <?php } else { ?> class="added" title="Added to wishlist" <?php } ?>><i id="icon<?php echo $p->pid ?>" class="far <?php if ($wish == 0) { ?>fa-heart<?php } else { ?>fa-heart<?php } ?>"></i></a>



												</div>



											</div>
										</div>
									</div>
							<?php }
							} ?>
							<?php if (isset($next)) : ?>
								<div class="prodnav">
									<a href='<?php echo base_url(); ?>home/collections?p=<?php echo $next; ?>&page=<?php echo $pageurl; ?>'>Next</a>
								</div>
							<?php endif ?>
						<?php } else {
							echo "Coming Soon...";
						}
						?>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- END </ PAGE CONTENT>  -->


	<?php echo $footer; ?>



</body>

<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url(); ?>js/jquery-1.7.1.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/owl.carousel.min.js"></script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="<?php echo asset_url(); ?>js/jquery.lazyload.min.js"></script>
<?php echo $jsFile; ?>

<script type="text/javascript" src="<?php echo asset_url(); ?>js/jquery-ias.min.js"></script>

<script type="text/javascript">
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