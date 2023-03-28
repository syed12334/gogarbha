<?php //echo "<pre>";print_r($details);exit; ?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD-->

<head>
	<meta charset="UTF-8" />
	<title><?php echo title; ?></title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!--[if IE]>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<![endif]-->
	<!-- GLOBAL STYLES -->
	<!-- GLOBAL STYLES -->
	<link rel="stylesheet" href="<?php echo asset_url(); ?>css/style.min.css" />
	<!-- <link rel="stylesheet" href="<?php echo asset_url(); ?>plugins/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="<?php echo asset_url(); ?>css/main.css" />
		<link rel="stylesheet" href="<?php echo asset_url(); ?>css/theme.css" />
		<link rel="stylesheet" href="<?php echo asset_url(); ?>css/MoneAdmin.css" />
		<link rel="stylesheet" href="<?php echo asset_url(); ?>plugins/Font-Awesome/css/font-awesome.css" /> -->
	<link rel="stylesheet" href="<?php echo asset_url(); ?>css/bootstrap-fileupload.min.css" />
	<link rel="stylesheet" href="<?php echo asset_url(); ?>plugins/wysihtml5/dist/bootstrap-wysihtml5-0.0.2.css" />
	<link rel="stylesheet" href="<?php echo asset_url(); ?>css/Markdown.Editor.hack.css" />
	<!--<link rel="stylesheet" href="<?php echo asset_url(); ?>plugins/CLEditor1_4_3/jquery.cleditor.css" />
		<link rel="stylesheet" href="<?php echo asset_url(); ?>css/jquery.cleditor-hack.css" />-->
	<link rel="stylesheet" href="<?php echo asset_url(); ?>css/bootstrap-wysihtml5-hack.css" />

	<style>
		#accordion .card-header {
			background-color: #ccc;
		}
	</style>
	<?php echo $updatelogin; ?>
</head>
<!-- END  HEAD-->
<!-- BEGIN BODY-->

<body class="padTop53 ">
	<div id="wrap">
		<div id="main-wrapper">
			<!-- HEADER SECTION -->
			<?php echo $header; ?>
			<!-- END HEADER SECTION -->
			<!-- MENU SECTION -->
			<?php echo $left; ?>
			<!--END MENU SECTION -->
			<div class="page-wrapper">
				<!--============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-5 col-12 align-self-center">
						<h3 class="text-themecolor mb-0">Products</h3>
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
							<li class="breadcrumb-item"><a href="javascript:void(0)">Masters</a></li>
							<li class="breadcrumb-item active">Products</li>
						</ol>
					</div>
					<div class="col-md-7 col-12 align-self-center d-none d-md-block">
					</div>
				</div>
				<div class="container-fluid" id="content">
					<div class="inner" style="min-height:1200px;">
						<div class="row">

							<?php if ($type == 'edit') : ?>

								<div class="col-lg-12">
									<div class="card">
										<div class="card-header">
											<h5>Edit Product details</h5>
										</div>
										<form action="<?php echo base_url() . 'master/products_edit'; ?>" class="form-horizontal form-material row" id="organization_validate" method="post" enctype="multipart/form-data">
											<div id="accordion" class="col-lg-12">
												<div class="card col-lg-12">
													<div class="card-header" id="headingOne">
														<h5 class="mb-0">
															<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="0">Product Basic Details</button>
														</h5>
													</div>
													<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion" id="0">
														<div class="card-body">
															<div class="row">
																<input type="hidden" id="aid" name="aid" class="form-control" value="<?php echo $details[0]->id; ?>" />
																<div class="col-6">
																	<div class="form-group">
																		<label>Category<font style="color: red;">*</font></label>
																		<select id="category" name="category" class="form-control" required onchange="getsubcateg(this.value);">
																			<option value="">--Select--</option>
																			<?php if (is_array($category)) {
																				foreach ($category as $c) {
																			?><option <?php if ($c->id == $details[0]->cat_id) { ?>selected="selected" <?php } ?> value="<?php echo $c->id ?>"> <?php echo $c->name ?></option> <?php }
																																																						} ?>
																		</select>
																	</div>
																</div>
																<div class="col-6">
																	<div class="form-group">
																		<label>SubCategory</label>
																		<select name="subcateg" id="subcateg" class="form-control" required onchange="getsubsubcateg(this.value);">
																			
																			
																			
																			<?php 
																			$subcategory = $this->master_db->getcontent2('subcategory','category_id',$details[0]->cat_id,'0');
																			
																			
																			if (is_array($subcategory)) {
																				foreach ($subcategory as $s) {
																			?><option <?php if ($s->id == $details[0]->subcat_id) { ?>selected="selected" <?php } ?> value="<?php echo $s->id ?>"> <?php echo $s->name ?></option> <?php }
																																																						} ?>
																		</select>
																	</div>
																</div>
																
															
																<div class="col-6">
																	<div class="form-group">
																		<label>Product Name<font style="color: red;">*</font></label>
																		<input type="text" id="name" name="name" value="<?php echo $details[0]->name ?>" class="form-control" required />
																	</div>
																</div>
																<div class="col-6">
																	<div class="form-group">
																		<label class="control-label">Product Code<font style="color: red;">*</font></label>
																		<input type="text" id="code" name="code" class="form-control" value="<?php echo $details[0]->pcode ?>" required />
																	</div>
																</div>

																<div class="col-6" style="display:none;">
																	<div class="form-group">
																		<label class="control-label">Material <font style="color: red;">*</font></label>
																		<select name="material" id="material" class="form-control">
																			<option value="">--Select--</option>
																			<?php if (is_array($material)) {
																				foreach ($material as $c) {
																			?>
																					<option <?php if ($c->id == $details[0]->material_id) { ?>selected="selected" <?php } ?> value="<?php echo $c->id ?>"><?php echo $c->name ?></option>
																			<?php }
																			} ?>
																		</select>
																	</div>
																</div>
																<div class="col-6" style="display:none;">
																	<div class="form-group">
																		<label class="control-label">Color <font style="color: red;">*</font></label>
																		<select name="color" id="color" class="form-control">
																			<option value="">--Select--</option>
																			<?php if (is_array($color)) {
																				foreach ($color as $c) {
																			?>
																					<option <?php if ($c->id == $details[0]->color_id) { ?>selected="selected" <?php } ?> value="<?php echo $c->id ?>">
																						<?php echo $c->name ?></option>
																			<?php }
																			} ?>
																		</select>
																	</div>
																</div>
																<div class="col-6">
																	<div class="form-group">
																		<label class="control-label">Overview<font style="color: red;">*</font></label>
																		<textarea class="form-control" id="overview" name="overview"><?php echo $details[0]->overview ?></textarea>
																	</div>
																</div>
																<div class="col-6">
																	<div class="form-group">
																		<label class="control-label">Meta Keywords</label>
																		<textarea class="form-control" id="mttag" name="mttag"><?php echo $details[0]->meta_keywords ?></textarea>
																	</div>
																</div>
																<div class="col-6">
																	<div class="form-group">
																		<label class="control-label">Meta Description
																		</label>
																		<textarea class="form-control" id="mtdesc" name="mtdesc"><?php echo $details[0]->meta_description ?></textarea>
																	</div>
																</div>
													<div class="col-6">
														<div class="form-group">
															<label class="control-label">Youtube Link
																
															</label>
														<input type="url" name="youtube" id="youtube" class="form-control" placeholder="Enter Youtube Url" value="<?= $details[0]->youtubelink;?>">
														</div>

													<!-- 	<div class="form-group">
															<label class="control-label">Product Type
															</label>
														<select name="protype" class="form-control" >
															<option value="">Select Option</option>
															<option value="1" <?php if($details[0]->ptype ==1) {echo "selected";}?>>Premium</option>
															<option value="2" <?php if($details[0]->ptype ==2) {echo "selected";}?>>Basic</option>
															
														</select>
														</div> -->
													</div>

														<div class="col-6">
														<div class="form-group">
															<label class="control-label">How To Use
																
															</label>
															<textarea class="form-control" id="howtouse" name="howtouse"><?= $details[0]->how_to_use;?></textarea>
														</div>
													</div>

															</div>


															<div class="form-actions col-lg-12 text-center" >
																<a href="<?php echo base_url(); ?>master/products" class="btn btn-rounded btn-primary"><i class="mdi mdi-close "></i> Cancel</a>&nbsp;&nbsp;&nbsp;<button type="button" id="next1" class="btn btn-info btn-rounded skip" uid="1"><i class="mdi mdi-check"></i> Next</button>
															</div>
															<div id="msgbox1"></div>
														</div>
													</div>
												</div>


												<div class="card  col-lg-12">
													<div class="card-header" id="heading1">
														<h5 class="mb-0">
															<button class="btn btn-link collapsed " data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1" id="1">
																Product Sizes /Gallery Image Details </button>
														</h5>
													</div>
													<div id="collapse1" class="collapse" aria-labelledby="heading1" data-parent="#accordion">
														<div class="card-body">
															<div class="row">

																<div class="col-12">
<div class="form-group">
<div class="col-lg-12">
<table class="table table-bordered ">
	<thead>
		<th>Sizes</th>
		<th>MRP</th>
		<th>B2C Selling Price(Rs)</th>
		<th>B2C Selling Price(Dollar)</th>
		<!-- <th>B2B Selling Price(Rs)</th>
		<th>B2B Selling Price(Dollar)</th> -->
		<th>Stock</th>
		<th>Minimum Buy</th>
		<th>Image</th>
		<th></th>
	</thead>
	<tbody id="p">
		<?php $prod_sizes = $this->master_db->getcontent2('product_sizes', 'pid', $details[0]->id, '0'); ?>
		<?php if (is_array($prod_sizes)) {
			$g = 0;
			foreach ($prod_sizes as $p) {
				$rand = rand();
				$g = $g + 1;
		?>
				<tr id="r_<?php echo $rand ?>" <?php if ($g != 1) { ?>class="removeall" <?php } ?>>
					<td><input type="hidden" name="hsize[]" value="<?php echo $p->id; ?>">
						<select name="size[]" id="size" class="form-control" onchange="hidesize(this.value);">
							<option value="">Select
								Size</option>
							<?php if ($g == 1) { ?>
								<option <?php if ($p->size_id == "0") { ?>selected="selected" <?php } ?> value="0">No Size
								</option><?php } ?>
							<?php if (is_array($size)) {
								foreach ($size as $s) {
							?>
									<option <?php if ($s->id == $p->size_id) { ?>selected="selected" <?php } ?> value="<?php echo $s->id ?>">
										<?php echo $s->name ?>
									</option>
							<?php }
							} ?>
						</select>
					</td>
					<td><input type="text" name="mrp[]" id="mrp" class="form-control floatval" placeholder="MRP" value="<?php echo $p->mrp ?>" />
					</td>
					<td><input type="text" name="sell_price[]" id="sell_price" class="form-control floatval" placeholder="Selling Price" value="<?php echo $p->selling_price ?>" />
					</td>
					<td><input type="text" name="sel_dollar[]" id="sel_dollar" class="form-control floatval" placeholder="Selling Price" value="<?php echo $p->sel_dollar ?>" />
					</td>
					<!-- <td><input type="text" name="b2b_selling_price[]" id="b2b_selling_price" class="form-control floatval" placeholder="Selling Price" value="<?php echo $p->b2b_selling_price ?>" />
					</td>
					<td><input type="text" name="b2b_sel_dollar[]" id="b2b_sel_dollar" class="form-control floatval" placeholder="Selling Price" value="<?php echo $p->b2b_sel_dollar ?>" />
					</td> -->
					<td><input type="text" name="stock[]" class="form-control onlynumbers" placeholder="Stock" value="<?php echo $p->stock ?>" />
					</td>
					<td><input type="text" name="minimum_buy[]" class="form-control onlynumbers" placeholder="MimimumBuy" value="<?php echo $p->minimum_buy ?>" />
					</td>
					<td><input type="file" name="proimages[]" class="form-control" />
						<?php 
							if(!empty($p->image)) {
								?>
								<img src="<?= front_url().$p->image;?>" style="width:80px">
								<?php
							}
						?>
					</td>
					<?php if ($g == 1) { ?>
						<td class="mininwidth text-center">
							<span id="newsize" onClick="addmore();" class="btn btn-info"><i class="fas fa-plus"></i></span>
						</td>
					<?php } else {
					?>

						<td class="text-center"><span class="btn btn-primary" onclick='remove123("<?php echo $rand ?>")'><i class='fas fa-minus'></i></span>
						</td>
					<?php } ?>
				</tr>

			<?php }
		} else {
			?>
			<tr>
				<td><input type="hidden" name="hsize[]" value="0">
					<select name="size[]" id="size" class="form-control" onchange="hidesize(this.value);">
						<option value="">Select
							Size</option>
						<option value="0">No
							Size</option>
						<?php if (is_array($size)) {
							foreach ($size as $s) {
						?>
								<option value="<?php echo $s->id ?>">
									<?php echo $s->name ?>
								</option>
						<?php }
						} ?>
					</select>
				</td>
				<td><input type="text" name="mrp[]" id="mrp" class="form-control floatval" placeholder="MRP" value="" /></td>
				<td><input type="text" name="sell_price[]" id="sell_price" class="form-control floatval" placeholder="Selling Price" value="" /></td>
				<td><input type="text" name="sel_dollar[]" id="sel_dollar" class="form-control floatval" placeholder="Selling Price" value="" /></td>
			<!-- 	<td><input type="text" name="b2b_selling_price[]" id="b2b_selling_price" class="form-control floatval" placeholder="Selling Price" value="" /></td>
				<td><input type="text" name="b2b_sel_dollar[]" id="b2b_sel_dollar" class="form-control floatval" placeholder="Selling Price" value="" /></td> -->
				<td><input type="text" name="stock[]" class="form-control onlynumbers" placeholder="Stock" value="" /></td>
				<td><input type="text" name="minimum_buy[]" class="form-control onlynumbers" placeholder="Minimum Buy" value="" /></td>
				<td class="mininwidth text-center">
					<span id="newsize" onClick="addmore();" class="btn btn-info"><i class="fas fa-plus"></i></span>
				</td>
			</tr>
		<?php } ?>
	</tbody>
</table>
</div>
</div>
																</div>
																<div class="col-12">
																	<div class="form-group">
																		<div class="form-group">

																			<div class="col-lg-12">
																				<table class="table table-bordered ">
																					<thead>
																						<th>Order No</th>
																						<th>Thumbnail Image <br>
																							<font color="#008b8b">[Note:
																								Size should be 200 x 240 px]
																							</font>
																						</th>
																						<th>Small Image <br>
																							<font color="#008b8b">[Note:
																								Size should be 200 x 240 px]
																							</font>
																						</th>
																						<th>Medium Image <br>
																							<font color="#008b8b">[Note:
																								Size should be 400 x 400 px]
																							</font>
																						</th>
																						<th>Large Image <br>
																							<font color="#008b8b">[Note:
																								Size should be 800 x 800 px]
																							</font>
																						</th>
																						<th></th>
																					</thead>
																					<tbody id="i">
																						<?php $prod_images = $this->master_db->getcontent2('product_images', 'pid', $details[0]->id, '0'); ?>
																						<?php if (is_array($prod_images)) {
																							$g = 0;
																							foreach ($prod_images as $img) {
																								$rand = rand();
																								$g = $g + 1;
																						?>
																								<tr id="fade<?php echo $img->id ?>">
																									<td><input type="text" name="orderno[]" id="orderno" class="form-control onlynumbers" placeholder="Order No" value="<?php echo $img->order_no ?>" />
																									</td>
																									<td>
																										<div class="fileupload fileupload-exists" data-provides="fileupload">
																											<div class="fileupload-preview thumbnail" style="width: 100px; height: 100px;">
																												<img src="<?php echo front_url() . $img->thumb; ?>">
																											</div>
																											<div>
																												<span class="btn btn-file btn-info"><span class="fileupload-new" uid="<?php echo $img->id ?>">Select
																														image</span><span class="fileupload-exists">Change</span>
																													<input type="file" name="galthumb[]" id="galimag" /></span>
																												<input type="hidden" id="gimgstat<?php echo $img->id ?>" name="gimgstat[]" value="1">
																											</div>

																										</div>
																									</td>


																									<td>
																										<div class="fileupload fileupload-exists" data-provides="fileupload">
																											<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																												<img src="<?php echo front_url(). $img->image_path; ?>">
																											</div>
																											<div>
																												<span class="btn btn-file btn-info"><span class="fileupload-new" uid="<?php echo $img->id ?>">Select
																														image</span><span class="fileupload-exists">Change</span>
																													<input type="file" name="galsmall[]" id="galimag" /></span>
																												<input type="hidden" name="gimgid[]" value="<?php echo $img->id ?>">
																												<input type="hidden" id="gimgstat<?php echo $img->id ?>" name="gimgstat[]" value="1">
																											</div>

																										</div>
																									</td>

																									<td>
																										<div class="fileupload fileupload-exists" data-provides="fileupload">
																											<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																												<img src="<?php echo front_url(). $img->image_medium; ?>">
																											</div>
																											<div>
																												<span class="btn btn-file btn-info"><span class="fileupload-new" uid="<?php echo $img->id ?>">Select
																														image</span><span class="fileupload-exists">Change</span>
																													<input type="file" name="galmedium[]" id="galimag" /></span>
																												<input type="hidden" id="gimgstat<?php echo $img->id ?>" name="gimgstat[]" value="1">
																											</div>

																										</div>
																									</td>

																									<td>
																										<div class="fileupload fileupload-exists" data-provides="fileupload">
																											<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																												<img src="<?php echo front_url(). $img->image_large; ?>">
																											</div>
																											<div>
																												<span class="btn btn-file btn-info"><span class="fileupload-new" uid="<?php echo $img->id ?>">Select
																														image</span><span class="fileupload-exists">Change</span>
																													<input type="file" name="gallarge[]" id="galimag" /></span>
																												<input type="hidden" id="gimgstat<?php echo $img->id ?>" name="gimgstat[]" value="1">
																											</div>

																										</div>
																									</td>
																									<?php if ($g == 1) { ?>
																										<td class="mininwidth text-center">
																											<span id="newr" onClick="addmoreimag();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																										</td>
																									<?php } else {
																									?>
																										<td class="text-center"><span class="btn btn-info" onclick='removeimg(<?php echo $img->id ?>)'><i class='fas fa-minus'></i></span>
																										</td>
																									<?php } ?>
																								</tr>

																							<?php }
																						} else {
																							?>
																							<tr>
																								<td><input type="text" name="orderno[]" id="orderno" class="form-control onlynumbers" placeholder="Order No" value="1" /></td>
																								<td>
																									<div class="fileupload fileupload-new" data-provides="fileupload">
																										<div class="fileupload-preview thumbnail" style="width: 100px; height: 100px;">
																										</div>
																										<div>
																											<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																													image</span><span class="fileupload-exists">Change</span>
																												<input type="file" name="galthumb[]" id="galimag" /></span>

																											<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																											<input type="hidden" id="gimgstat" name="gimgstat[]" value="0">
																										</div>
																									</div>
																								</td>


																								<td>
																									<div class="fileupload fileupload-new" data-provides="fileupload">
																										<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																										</div>
																										<div>
																											<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																													image</span><span class="fileupload-exists">Change</span>
																												<input type="file" name="galsmall[]" id="galimag" /></span>
																											<input type="hidden" name="gimgid[]" value="0">
																											<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																											<input type="hidden" id="gimgstat" name="gimgstat[]" value="0">
																										</div>
																									</div>
																								</td>

																								<td>
																									<div class="fileupload fileupload-new" data-provides="fileupload">
																										<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																										</div>
																										<div>
																											<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																													image</span><span class="fileupload-exists">Change</span>
																												<input type="file" name="galmedium[]" id="galimag" /></span>
																											<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																											<input type="hidden" id="gimgstat" name="gimgstat[]" value="0">
																										</div>
																									</div>
																								</td>

																								<td>
																									<div class="fileupload fileupload-new" data-provides="fileupload">
																										<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																										</div>
																										<div>
																											<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																													image</span><span class="fileupload-exists">Change</span>
																												<input type="file" name="gallarge[]" id="galimag" /></span>
																											<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																											<input type="hidden" id="gimgstat" name="gimgstat2[]" value="0">
																										</div>
																									</div>
																								</td>




																								<td class="mininwidth text-center">
																									<span id="newr" onClick="addmoreimag();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																								</td>
																							</tr>
																						<?php } ?>
																					</tbody>
																				</table>
																			</div>

																		</div>
																	</div>

																</div>

															</div>
															<div class="form-actions no-margin-bottom col-lg-12" style="text-align:center;">
																<a href="<?php echo base_url(); ?>/master/products" class="btn btn-rounded btn-primary"><i class="mdi mdi-close "></i> Cancel</a>&nbsp;&nbsp;&nbsp;<button href="" class="btn btn-rounded btn-primary previous" uid="0"><i class=" fas fa-arrow-left"></i> Previous</button>
																&nbsp;&nbsp;&nbsp;<button type="button" id="next1" class="btn btn-rounded btn-info skip" uid="2"><i class="mdi mdi-check"></i> Next</button>
															</div>

															<div id="msgbox2"></div>
														</div>
													</div>
												</div>


												<div class="card  col-lg-12">
													<div class="card-header" id="heading2">
														<h5 class="mb-0">
															<button class="btn btn-link collapsed " data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2" id="2">
																Product Sizes - 1 pcs </button>
														</h5>
													</div>
													<div id="collapse2" class="collapse" aria-labelledby="heading2" data-parent="#accordion">
														<div class="card-body">
															<div class="row">
																
																	<div class="form-group col-lg-12">
																		<table class="table table-bordered ">
																			<thead>
																				<th>Specification Name</th>
																				<th>Specification Value</th>
																				<th></th>
																			</thead>
																			<tbody id="sp">
																				<?php $prod_spec = $this->master_db->getcontent2('product_spec', 'pid', $details[0]->id, ''); ?>
																				<?php if (is_array($prod_spec)) {
																					$g = 0;
																					foreach ($prod_spec as $p) {
																						$rand = rand();
																						$g = $g + 1;
																				?>
																						<tr id="r_<?php echo $rand ?>">
																							<td><input type="text" name="spec_name[]" id="spec_name" class="form-control" placeholder="Specification Name" value="<?php echo $p->spec_name ?>" />
																							</td>
																							<td><input type="text" name="spec_val[]" id="spec_val" class="form-control" placeholder="Specification Value" value="<?php echo $p->spec_val ?>" />
																							</td>
																							<?php if ($g == 1) { ?>
																								<td class="mininwidth text-center">
																									<span id="newr" onClick="addmorespec();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																								</td>
																							<?php } else {
																							?>
																								<td class="text-center"><span class="btn btn-primary" onclick='remove123("<?php echo $rand ?>")'><i class='fas fa-minus'></i></span>
																								</td>
																							<?php } ?>
																						</tr>
																					<?php }
																				} else {
																					?>
																					<tr>
																						<td><input type="text" name="spec_name[]" id="spec_name" class="form-control" placeholder="Specification Name" value="" /></td>
																						<td><input type="text" name="spec_val[]" id="spec_val" class="form-control" placeholder="Specification Value" value="" /></td>
																						<td class="mininwidth text-center">
																							<span id="newr" onClick="addmorespec();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																						</td>
																					</tr>
																				<?php } ?>
																			</tbody>
																		</table>
																			<div class="col-6">
														<div class="form-group">
															<label class="control-label">Tax
															</label>
															<input type="text" name="tax" class="form-control" id="tax" value="<?php echo $details[0]->tax; ?>">
														</div>
													</div>
																	</div>
															
																	<div class="form-actions no-margin-bottom col-lg-12" style="text-align:center;">
																		<a href="<?php echo base_url(); ?>master/products" class="btn btn-rounded btn-primary"><i class="mdi mdi-close "></i> Cancel</a>&nbsp;&nbsp;&nbsp;<button href="" class="btn btn-rounded btn-primary previous" uid="1"><i class=" fas fa-arrow-left"></i> Previous</button>
																		&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-rounded btn-info" id="validate" onclick="submitfn();"><i class="mdi mdi-check"></i> Save</button></button>
																	</div>

																	<div id="msgbox2"></div>

																
															</div>
														</div>
													</div>

												</div>
											</div>
									</div>
								</div>


								</form>
						</div>
					</div>


				<?php else : ?>

					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<h5>Add Product details</h5>
							</div>
							<form action="<?php echo base_url() . 'master/products_save'; ?>" class="form-horizontal form-material row" id="organization_validate" method="post" enctype="multipart/form-data">
								<div id="accordion" class="col-lg-12">
									<div class="card  col-lg-12">
										<div class="card-header" id="headingOne">
											<h5 class="mb-0">
												<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="0">
													Product Basic Details
												</button>
											</h5>
										</div>
										<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
											<div class="card-body">
												<div class="row">
													<input type="hidden" id="aid" name="aid" class="form-control" value="0" />
													<div class="col-6">
														<div class="form-group">
															<label>Category<font style="color: red;">*</font></label>
															<select id="category" name="category" class="form-control" required onchange="getsubcateg(this.value);">
																<option value="">--Select--</option>
																<?php if (is_array($category)) {
																	foreach ($category as $c) {
																?><option value="<?php echo $c->id ?>"><?php echo $c->name ?></option> <?php }
																																} ?>
															</select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label>SubCategory<font style="color: red;">*</font></label>
															<select name="subcateg" id="subcateg" class="form-control" required onchange="getsubsubcateg(this.value);">
																<option value="">--Select--</option>
															</select>
														</div>
													</div>
												
													<div class="col-6">
														<div class="form-group">
															<label>Product Name<font style="color: red;">*</font></label>
															<input type="text" id="name" name="name" class="form-control" required />
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label class="control-label">Product Code<font style="color: red;">*</font></label>
															<input type="text" id="code" name="code" class="form-control" required />
														</div>
													</div>

													<div class="col-6" style="display:none;">
														<div class="form-group">
															<label class="control-label">Material <font style="color: red;">*</font></label>
															<select name="material" id="material" class="form-control">
																<option value="">--Select--</option>
																<?php if (is_array($material)) {
																	foreach ($material as $c) {
																?>
																		<option value="<?php echo $c->id ?>"><?php echo $c->name ?></option>
																<?php }
																} ?>
															</select>
														</div>
													</div>
													<div class="col-6" style="display:none;">
														<div class="form-group">
															<label class="control-label">Color <font style="color: red;">*</font></label>
															<select name="color" id="color" class="form-control">
																<option value="">--Select--</option>
																<?php if (is_array($color)) {
																	foreach ($color as $c) {
																?>
																		<option value="<?php echo $c->id ?>"> <?php echo $c->name ?></option>
																<?php }
																} ?>
															</select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label class="control-label">Overview<font style="color: red;">*</font></label>
															<textarea class="form-control" id="overview" name="overview"></textarea>
														</div>
													</div>
													
													<div class="col-6">
														<div class="form-group">
															<label class="control-label">Meta Description
															</label>
															<textarea class="form-control" id="mtdesc" name="mtdesc"></textarea>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label class="control-label">Youtube Link
															</label>
														<input type="url" name="youtube" id="youtube" class="form-control" placeholder="Enter Youtube Url" >
														</div>

															<!-- <div class="form-group">
															<label class="control-label">Product Type
															</label>
														<select name="protype" class="form-control" >
															<option value="">Select Option</option>
															<option value="1">Premium</option>
															<option value="2">Basic</option>
															
														</select>
														</div> -->
													</div>

														<div class="col-6">
														<div class="form-group">
															<label class="control-label">How To Use
															</label>
															<textarea class="form-control" id="howtouse" name="howtouse"></textarea>
														</div>
													</div>
												</div>


												<div class="form-actions no-margin-bottom" style="text-align:center;">
													<a href="<?php echo base_url(); ?>master/products" class="btn btn-rounded btn-primary"><i class="mdi mdi-close "></i> Cancel</a>&nbsp;&nbsp;&nbsp;<button type="button" id="next1" class="btn btn-info btn-rounded skip" uid="1"><i class="mdi mdi-check"></i> Next</button>
												</div>
												<div id="msgbox1"></div>
											</div>
										</div>
									</div>
									<div class="card  col-lg-12">
										<div class="card-header" id="heading1">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed " data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1" id="1">
													Product Sizes /Gallery Image Details </button>
											</h5>
										</div>
										<div id="collapse1" class="collapse" aria-labelledby="heading1" data-parent="#accordion">
											<div class="card-body">
												<div class="row">

													<div class="col-12">
														<div class="form-group">
															<div class="col-lg-12">
																<table class="table table-bordered ">
																	<thead>
																		<th>Sizes</th>
																		<th>MRP</th>
																		<th>B2C Selling Price(Rs)</th>
																		<th>B2C Selling Price(Dollar)</th>
																		<!-- <th>B2B Selling Price(Rs)</th>
																		<th>B2B Selling Price(Dollar)</th> -->
																		<th>Stock</th>
																		<th>Minimum Buy</th>
																		<th>Image</th>
																		<th></th>
																	</thead>
																	<tbody id="p">

																		<tr>
																			<td><input type="hidden" name="hsize[]" value="0">
																				<select name="size[]" id="size" class="form-control" onchange="hidesize(this.value);">
																					<option value="">Select
																						Size</option>
																					<option value="0">No
																						Size</option>
																					<?php if (is_array($size)) {
																						foreach ($size as $s) {
																					?>
																							<option value="<?php echo $s->id ?>">
																								<?php echo $s->name ?>
																							</option>
																					<?php }
																					} ?>
																				</select>
																			</td>
																			<td><input type="text" name="mrp[]" id="mrp" class="form-control floatval" placeholder="MRP" value="" /></td>
																			<td><input type="text" name="sell_price[]" id="sell_price" class="form-control floatval" placeholder="Selling Price" value="" /></td>
																			<td><input type="text" name="sel_dollar[]" id="sel_dollar" class="form-control floatval" placeholder="Selling Price" value="" /></td>
																		
																			<td><input type="text" name="stock[]" class="form-control onlynumbers" placeholder="Stock" value="" /></td>
																			<td><input type="text" name="minimum_buy[]" class="form-control onlynumbers" placeholder="Minimum Buy" value="" /></td>
																			<td><input type="file" name="proimages[]" class="form-control" /></td>
																			<td class="mininwidth text-center">
																				<span onClick="addmore();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																			</td>
																		</tr>

																	</tbody>
																</table>
															</div>

														</div>
													</div>
													<div class="col-12">
														<div class="form-group">
															<div class="col-lg-12">
																<table class="table table-bordered ">
																	<thead>
																		<th>Order No</th>
																		<th>Thumbnail Image <br>
																			<font color="#008b8b">[Note:
																				Size should be 200 x 240 px]
																			</font>
																		</th>
																		<th>Small Image <br>
																			<font color="#008b8b">[Note:
																				Size should be 200 x 240 px]
																			</font>
																		</th>
																		<th>Medium Image <br>
																			<font color="#008b8b">[Note:
																				Size should be 400 x 400 px]
																			</font>
																		</th>
																		<th>Large Image <br>
																			<font color="#008b8b">[Note:
																				Size should be 800 x 800 px]
																			</font>
																		</th>
																		<th></th>
																	</thead>
																	<tbody id="i">

																		<tr>
																			<td><input type="text" name="orderno[]" id="orderno" class="form-control onlynumbers" placeholder="Order No" value="1" /></td>
																			<td>
																				<div class="fileupload fileupload-new" data-provides="fileupload">
																					<div class="fileupload-preview thumbnail" style="width: 100px; height: 100px;">
																					</div>
																					<div>
																						<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																								image</span><span class="fileupload-exists">Change</span>
																							<input type="file" name="galthumb[]" id="galimag" /></span>

																						<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																						<input type="hidden" id="gimgstat" name="gimgstat[]" value="0">
																					</div>
																				</div>
																			</td>


																			<td>
																				<div class="fileupload fileupload-new" data-provides="fileupload">
																					<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																					</div>
																					<div>
																						<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																								image</span><span class="fileupload-exists">Change</span>
																							<input type="file" name="galsmall[]" id="galimag" /></span>
																						<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																						<input type="hidden" name="gimgid[]" value="0">
																						<input type="hidden" id="gimgstat" name="gimgstat[]" value="0">
																					</div>
																				</div>
																			</td>

																			<td>
																				<div class="fileupload fileupload-new" data-provides="fileupload">
																					<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																					</div>
																					<div>
																						<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																								image</span><span class="fileupload-exists">Change</span>
																							<input type="file" name="galmedium[]" id="galimag" /></span>
																						<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																						<input type="hidden" id="gimgstat" name="gimgstat[]" value="0">
																					</div>
																				</div>
																			</td>

																			<td>
																				<div class="fileupload fileupload-new" data-provides="fileupload">
																					<div class="fileupload-preview thumbnail" style="width: 150px; height: 150px;">
																					</div>
																					<div>
																						<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																								image</span><span class="fileupload-exists">Change</span>
																							<input type="file" name="gallarge[]" id="galimag" /></span>
																						<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																						<input type="hidden" id="gimgstat" name="gimgstat2[]" value="0">
																					</div>
																				</div>
																			</td>


																			<td class="mininwidth text-center">
																				<span id="newr" onClick="addmoreimag();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																			</td>
																		</tr>

																	</tbody>
																</table>
															</div>

														</div>

													</div>

												</div>
												<div class="form-actions no-margin-bottom" style="text-align:center;">
													<a href="<?php echo base_url(); ?>master/products" class="btn btn-rounded btn-primary"><i class="mdi mdi-close "></i> Cancel</a>&nbsp;&nbsp;&nbsp;<button href="" class="btn btn-rounded btn-primary previous" uid="0"><i class=" fas fa-arrow-left"></i> Previous</button>
													&nbsp;&nbsp;&nbsp;<button type="button" id="next1" class="btn btn-rounded btn-info skip" uid="2"><i class="mdi mdi-check"></i> Next</button>
												</div>

												<div id="msgbox2"></div>
											</div>
										</div>
									</div>


									<div class="card  col-lg-12">
										<div class="card-header" id="heading2">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed " data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2" id="2">
													Product Sizes - 1 pcs </button>
											</h5>
										</div>
										<div id="collapse2" class="collapse" aria-labelledby="heading2" data-parent="#accordion">
											<div class="card-body">
												<div class="row">

													<div class="form-group" style="display: none;">
														<label class="control-label col-lg-3">Planters
															Applied?</label>
														<div class="col-lg-2">
															<div class="checkbox">
																<label>
																	<input class="uniform" type="radio" name="vase" value="1" id="vasey" onclick="$('#vasediv').show();" />
																	Yes
																</label>
															</div>
														</div>
														<div class="col-lg-2">
															<div class="checkbox">
																<label>
																	<input class="uniform" type="radio" checked="checked" name="vase" value="0" id="vasen" onclick="$('#vasediv').hide();" />
																	No
																</label>
															</div>
														</div>
													</div>
													<div class="row" style="display: none;" id="vasediv">
														<div class="col-lg-5">
															<div class="form-group">
																<div class="input-group">
																	<input id="box1Filter" type="text" placeholder="Filter" class="form-control" />
																	<span class="input-group-btn">
																		<button id="box1Clear" class="btn btn-warning" type="button">x</button>
																	</span>
																</div>
															</div>
															<div class="form-group">
																<?php $vasecateg = $this->master_db->getcontent2('products', 'cat_id', '9', '0'); ?>
																<select id="box1View" multiple="multiple" class="form-control" size="16">
																	<?php
																	if (is_array($vasecateg)) {
																		foreach ($vasecateg as $v) {
																	?>
																			<option value="<?php echo $v->id ?>">
																				<?php echo $v->name ?>
																				[<?php echo $v->pcode; ?>]
																			</option>
																	<?php }
																	} ?>
																</select>
																<hr>
																<div class="alert alert-block">
																	<span id="box1Counter" class="countLabel"></span>
																	<select id="box1Storage" class="form-control"></select>
																</div>
															</div>
														</div>

														<div class="col-lg-2">
															<div class="btn-group btn-group-vertical" style="white-space: normal;">
																<button id="to2" type="button" class="btn btn-primary">
																	<i class="icon-chevron-right"></i>
																</button>
																<button id="allTo2" type="button" class="btn btn-primary">
																	<i class="icon-forward"></i>
																</button>
																<button id="allTo1" type="button" class="btn btn-primary">
																	<i class="icon-backward"></i>
																</button>
																<button id="to1" type="button" class="btn btn-primary">
																	<i class=" icon-chevron-left icon-white"></i>
																</button>
															</div>
														</div>

														<div class="col-lg-5">
															<div class="form-group">
																<div class="input-group">
																	<input id="box2Filter" type="text" placeholder="Filter" class="form-control" />
																	<span class="input-group-btn">
																		<button id="box2Clear" class="btn btn-warning" type="button">x</button>
																	</span>
																</div>
															</div>
															<div class="form-group">
																<select id="box2View" name="vasename[]" multiple="multiple" class="form-control" size="16"></select>
															</div>
															<hr />

															<div class="alert alert-block">
																<span id="box2Counter" class="countLabel"></span>
																<select id="box2Storage" class="form-control"> </select>
															</div>
														</div>
													</div>
													<div class="form-group" style="display: none;">
														<div class="col-lg-12">
															<table class="table table-bordered ">
																<thead>
																	<th>Vase Name</th>
																	<th>Vase Image</th>
																	<th>Vase Price</th>
																	<th>Vase Stock</th>
																	<th></th>
																</thead>
																<tbody id="v">

																	<tr>
																		<td><input type="text" name="vasename[]" id="vasename" class="form-control" placeholder="Vase Name" value="" /></td>
																		<td>
																			<div class="fileupload fileupload-new" data-provides="fileupload">
																				<div class="fileupload-preview thumbnail" style="width: 200px; height: 150px;">
																				</div>
																				<div>
																					<span class="btn btn-file btn-info"><span class="fileupload-new">Select
																							image</span><span class="fileupload-exists">Change</span>
																						<input type="file" name="vaseimag[]" id="vaseimag" /></span>
																					<input type="hidden" name="vimgid[]" value="0">
																					<a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
																					<input type="hidden" id="vimgstat" name="vimgstat[]" value="0">
																				</div>
																			</div>
																		</td>
																		<td><input type="text" name="price[]" id="price" class="form-control floatval" placeholder="Vase Price" value="" /></td>
																		<td><input type="text" name="vasestock[]" id="vasestock" class="form-control onlynumbers" placeholder="Vase Stock" value="" /></td>
																		<td class="mininwidth text-center">
																			<span id="newr" onClick="addmorevase();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																		</td>
																	</tr>

																</tbody>
															</table>
														</div>

													</div>
													<div class="form-group col-lg-12">
														
															<table class="table table-bordered ">
																<thead>
																	<th>Specification Name</th>
																	<th>Specification Value</th>
																	<th></th>
																</thead>
																<tbody id="sp">

																	<tr>
																		<td><input type="text" name="spec_name[]" id="spec_name" class="form-control" placeholder="Specification Name" value="" /></td>
																		<td><input type="text" name="spec_val[]" id="spec_val" class="form-control" placeholder="Specification Value" value="" /></td>
																		<td class="mininwidth text-center">
																			<span id="newr" onClick="addmorespec();" class="btn btn-info"><i class="fas fa-plus"></i></span>
																		</td>
																	</tr>

																</tbody>
															</table>
														<div class="col-6">
														<div class="form-group">
															<label class="control-label">Tax
															</label>
															<input type="text" name="tax" class="form-control" id="tax" >
														</div>
													</div>

													</div>

												</div>
											</div><div class="form-actions no-margin-bottom col-lg-12" style="text-align:center;">
											<a href="<?php echo base_url(); ?>master/products" class="btn btn-rounded btn-primary"><i class="mdi mdi-close "></i> Cancel</a>&nbsp;&nbsp;&nbsp;<button href="" class="btn btn-rounded btn-primary previous" uid="1"><i class=" fas fa-arrow-left"></i> Previous</button>
											&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-rounded btn-info" id="validate" onclick="submitfn();"><i class="mdi mdi-check"></i> Save</button></button>
										</div>
										<div id="msgbox2"></div>
										</div>
										
									</div>
								</div>
							</form>
						<?php endif; ?>
						</div>
					</div>

					<hr />
				</div>
			</div>

			<!--END PAGE CONTENT -->
		</div>

		<!--END MAIN WRAPPER -->
	</div>
	</div>
	</div>
	<!-- FOOTER -->

	<div id="footer">
		<p>&copy; <?php echo fottertitle; ?></p>
	</div>

	<!--END FOOTER -->

	<!-- GLOBAL SCRIPTS -->
	<script type="text/javascript" src="<?php echo asset_url(); ?>js/jquery.min.js"></script>
	<!--<script src="<?php echo asset_url(); ?>plugins/bootstrap/js/bootstrap.min.js"></script>-->
	<script src="<?php echo asset_url(); ?>plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	<!-- END GLOBAL SCRIPTS -->
	<script src="<?php echo asset_url(); ?>plugins/jquery.dualListbox-1.3/jquery.dualListBox-1.3.min.js"></script>
	<script src="<?php echo asset_url(); ?>plugins/jasny/js/bootstrap-fileupload.js"></script>

	<script>
		/*$('.previous').click(function(e) {
			var val = $(this).attr("uid");
			//alert(val);
			$(".collapse").removeClass("show");
			$("#collapse" + val).click();
			$("#collapse" + val).addClass("show");
		});*/
function removeimg(id) {
	var id = id;
	$.ajax({
		url :"<?= base_url().'master/removeimg';?>",
		method :"post",
		data : {
			id : id
		},
		success:function(data) {
			console.log(data);
			if(data.status ==true) {
				//location.reload();
				$("#fade"+id).fadeOut(200);

			}else {
				location.reload();
			}
		}
	});
}
		 
		$('.previous').click(function(e) {
			//alert('previous');
			var val = $(this).attr("uid");
			//alert(val);
			$(".collapse").removeClass("show in");
			$("#collapse"+val).addClass("show");
			$("#collapse"+val).click();
		});

		$('.skip').click(function(e) {

			var val = $(this).attr("uid");
			//alert('skip');
			if (validate1() == true) {
				$(".collapse").removeClass("show");
				$("#collapse" + val).click();
				$("#collapse" + val).addClass("show");
				$('html, body').animate({
					scrollTop: $("#first").offset().top
				}, 1000);
			} else {}

		});

		$('.skip1').click(function(e) {
			//alert();
			if (validate2() == true) {
				$("#third").removeClass("disable");
				$("#third").click();
				$(".allhd").addClass("disable");
				console.log($("#" + d));
				$('html, body').animate({
					scrollTop: $("#first").offset().top
				}, 1000);
			}
		});

		function submitfn() {
			if (validate1() == false) {
				$("#0").removeClass("show");
				$("#0").click();
				$("#0").addClass("show");
				return false;
			} else {
				$('form').removeAttr('onsubmit', 'return false;');
				$("#organization_validate").submit();
				//return true;
			}
		}

		var empty_string = /^\s*$/;

		function validate1() { //alert(0);
			$("#alert1").remove();
			$("#msgbox1").html("<br><br><div class='alert' id='alert1'></div>");
			$("#alert1").removeClass().addClass('alert').html('Validating....').fadeIn(1000).addClass(
				'alert-warning');

			var category = document.getElementById('category').value;
			var subcateg = document.getElementById('subcateg').value;
			subcateg = 1;
			var name = document.getElementById('name').value;
			var code = 1;
			//var material = document.getElementById('material').value;
			//var color = document.getElementById('color').value;
			//var overview = document.getElementById('overview').value;
			//var metatag = tinyMCE.get('metatag').getContent();
			//var metadesc = tinyMCE.get('metadesc').getContent();

			//alert(1);		
			var rebatestr = "";
			//category
			if (empty_string.test(category)) {
				$("#alert1").html(
					"<button type='button' class='close' data-dismiss='alert'>&times;</button>Select Category"
				).addClass('alert-danger').fadeTo(900, 1);
				return false;
			} else if (empty_string.test(subcateg)) {
				$("#alert1").html(
					"<button type='button' class='close' data-dismiss='alert'>&times;</button>Select Subcategory"
				).addClass('alert-danger').fadeTo(900, 1);
				return false;
			} else if (empty_string.test(name)) {
				$("#alert1").html(
					"<button type='button' class='close' data-dismiss='alert'>&times;</button>Enter Product Name"
				).addClass('alert-danger').fadeTo(900, 1);
				return false;
			} else if (empty_string.test(code)) {
				$("#alert1").html(
					"<button type='button' class='close' data-dismiss='alert'>&times;</button>Enter Product Code"
				).addClass('alert-danger').fadeTo(900, 1);
				return false;
			} 
			
			/*else if (empty_string.test(material)) {
				$("#alert1").html(
					"<button type='button' class='close' data-dismiss='alert'>&times;</button>Select Material"
				).addClass('alert-danger').fadeTo(900, 1);
				return false;
			} else if (empty_string.test(color)) {
				$("#alert1").html(
						"<button type='button' class='close' data-dismiss='alert'>&times;</button>Select Color")
					.addClass('alert-danger').fadeTo(900, 1);
				return false;
			} 
			
			*/
			else {
				$("#alert1").remove();
				return true;
			}

			/*else if (empty_string.test(overview)) {
			$("#alert1").html(
			"<button type='button' class='close' data-dismiss='alert'>&times;</button>Enter Overview"
			).addClass('alert-danger').fadeTo(900, 1);
			return false;
			} else if (empty_string.test(metatag)) {
			$("#alert1").html(
			"<button type='button' class='close' data-dismiss='alert'>&times;</button>Enter Meta Keywords"
			).addClass('alert-danger').fadeTo(900, 1);
			return false;
			} else if (empty_string.test(metadesc)) {
			$("#alert1").html(
			"<button type='button' class='close' data-dismiss='alert'>&times;</button>Enter Meta Description"
			).addClass('alert-danger').fadeTo(900, 1);
			return false;
			} */


		}

		function validate2() { //alert(0);
			$("#alert2").remove();
			$("#msgbox2").html("<br><br><div class='alert' id='alert2'></div>");
			$("#alert2").removeClass().addClass('alert').html('Validating....').fadeIn(1000).addClass(
				'alert-warning');

			//alert(1);		
			var rebatestr = "";
			//category
			if (!empty_string.test(rebatestr = check_size())) {
				$("#alert2").html("<button type='button' class='close' data-dismiss='alert'>&times;</button>" +
					rebatestr).addClass('alert-danger').fadeTo(900, 1);
				return false;
			} else if (!empty_string.test(rebatestr = checkduplicate_size())) {
				$("#alert2").html("<button type='button' class='close' data-dismiss='alert'>&times;</button>" +
					rebatestr).addClass('alert-danger').fadeTo(900, 1);
				return false;
			}
			//			else if(!empty_string.test(rebatestr=check_images())){
			//				$("#alert2").html("<button type='button' class='close' data-dismiss='alert'>&times;</button>"+rebatestr).addClass('alert-danger').fadeTo(900,1);
			//				return false;
			//			}
			else {
				$("#alert2").remove();
				return true;
			}
		}

		function check_size() {
			var size = document.getElementsByName('size[]');
			var mrp = document.getElementsByName('mrp[]');
			var sell_price = document.getElementsByName('sell_price[]');
			var stock = document.getElementsByName('stock[]');

			var rebatestr = "";
			for (var i = 0; i < size.length; i++) {
				if (empty_string.test(size[i].value)) {
					rebatestr = "You have missed somewhere to Select Size";
					break;
				} else if (empty_string.test(mrp[i].value)) {
					rebatestr = "You have missed somewhere to enter MRP";
					break;
				} else if (empty_string.test(sell_price[i].value)) {
					rebatestr = "You have missed somewhere to enter Selling Price";
					break;
				} else if (empty_string.test(stock[i].value)) {
					rebatestr = "You have missed somewhere to enter Stock";
					break;
				}
			}
			return rebatestr;
		}

		function checkduplicate_size() {
			var size = document.getElementsByName('size[]');

			var rebatestr = "";
			for (var i = 0; i < size.length; i++) {
				for (var j = 0; j < size.length; j++) {
					if (i != j && size[i].value == size[j].value) { // && prod[i].value == 0
						rebatestr = "Product Sizes entered with duplicate values";
						break;
					}
				}
			}
			return rebatestr;
		}


		$(document).ready(function() {
			$.configureBoxes();

			$(".remgalimage").click(function() {

				var val = $(this).attr('uid');
				$("#gimgstat" + val).val(0);
			});

			$('a[data-toggle="collapse"]').click(function(e) {
				if ($(this).hasClass("disable")) {
					e.stopPropagation();
				}
			});




			$('body').on('keypress', ".floatval", function(event) {
				var charCode = (event.which) ? event.which : event.keyCode
				if (charCode == 8 || charCode == 9) {

				} else if ((charCode != 46 || $(this).val().indexOf('.') != -1) && (charCode < 48 ||
						charCode > 57)) {
					event.preventDefault();
				}
			});

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


			function check_images() {
				var orderno = document.getElementsByName('orderno[]');
				var galimag = document.getElementsByName('galimag[]');
				var galimag2 = document.getElementsByName('galimag2[]');
				var gimgstat = document.getElementsByName('gimgstat[]');

				var rebatestr = "";
				for (var i = 0; i < orderno.length; i++) {
					if (empty_string.test(orderno[i].value)) {
						rebatestr = "You have missed somewhere to enter Product Images Order No.";
						break;
					} else if ((empty_string.test(galimag[i].value) && gimgstat[i].value == "0") || (empty_string
							.test(galimag2[i].value) && gimgstat[i].value == "0")) {
						rebatestr = "You have missed somewhere to select Product Image";
						break;
					}
				}
				return rebatestr;
			}








			function validate3() { //alert(0);
				$("#alert3").remove();
				$("#msgbox3").html("<br><br><div class='alert' id='alert3'></div>");
				$("#alert3").removeClass().addClass('alert').html('Validating....').fadeIn(1000).addClass(
					'alert-warning');
				var len = document.getElementById("box2View").length;
				var vase = $('#vasey').is(':checked');
				//alert(1);		
				var rebatestr = "";
				//category
				if (vase && len == 0) {
					$("#alert3").html(
						"<button type='button' class='close' data-dismiss='alert'>&times;</button>Select Planters to be applied"
					).addClass('alert-danger').fadeTo(900, 1);
					return false;
				} else {
					$("#alert3").html(
						"<button type='button' class='close' data-dismiss='alert'>&times;</button>Please wait..."
					).addClass('alert-success').fadeTo(900, 1);
					return true;
				}
			}


			function check_vase() {
				var vase = $('#vasey').is(':checked');
				var vasename = document.getElementsByName('vasename[]');
				var vaseimag = document.getElementsByName('vaseimag[]');
				var vimgstat = document.getElementsByName('vimgstat[]');
				var price = document.getElementsByName('price[]');
				var vasestock = document.getElementsByName('vasestock[]');

				var rebatestr = "";
				if (vase) {
					for (var i = 0; i < vasename.length; i++) {
						if (empty_string.test(vasename[i].value)) {
							rebatestr = "You have missed somewhere to enter Vase Name";
							break;
						} else if (empty_string.test(vaseimag[i].value) && vimgstat[i].value == "0") {
							rebatestr = "You have missed somewhere to Select Vase Image";
							break;
						} else if (empty_string.test(price[i].value)) {
							rebatestr = "You have missed somewhere to enter Vase Price";
							break;
						} else if (empty_string.test(vasestock[i].value)) {
							rebatestr = "You have missed somewhere to enter Vase Stock";
							break;
						}
					}
				}
				return rebatestr;
			}

			$("#validate").click(function() {
				if (validate1() == false) {
					$("#first").removeClass("disable");
					$("#first").click();
					$(".allhd").addClass("disable");
					return false;
				} else if (validate2() == false) {
					$("#second").removeClass("disable");
					$("#second").click();
					$(".allhd").addClass("disable");
					return false;
				} else if (validate3() == false) {
					//$("#third").removeClass("disable");
					//$("#third").click();
					//$(".allhd").addClass("disable");
					return false;
				} else {
					$("#organization_validate").submit();
					//return true;
				}
			});

		});

		function addmore() {
			var x = Math.floor((Math.random() * 10000) + 1);
			var row = "<tr id='r_" + x +
				"' class='removeall'><td><input type='hidden' name='hsize[]' value='0'><select name='size[]' id='size" + x +
				"'  class='form-control' >" + $('#size').html() + "</select></td>";
			row +=
				"<td><input type='text' name='mrp[]' id='mrp' class='form-control floatval' placeholder='MRP' value='' /></td>";
			row +=
				"<td><input type='text' name='sell_price[]' id='sell_price' class='form-control floatval' placeholder='Selling Price' value='' /></td>";
			row +=
				"<td><input type='text' name='sel_dollar[]' id='sel_dollar' class='form-control floatval' placeholder='Selling Price' value='' /></td>";
		
			row +=
				"<td><input type='text' name='stock[]' id='stock' class='form-control floatval' placeholder='Stock' value='' /></td>";
			
			row +=
				"<td><input type='text' name='minimum_buy[]' id='minimum_buy' class='form-control floatval' placeholder='Minimum Buy' value='' /></td>";
			row +='<td><input type="file" name="proimages[]" class="form-control" /></td>';
			row += "<td class='text-center'><span class='btn btn-primary' onclick='remove123(" + x +
				")'><i class='fas fa-minus'></i></span></td></tr>";
			$('#p').append(row);
			$('#size' + x + ' option[value="0"]').remove();
			$('#size' + x).val('');
		}

		function remove123(trid) {
			$("#r_" + trid).fadeOut(500, function() {
				$("#r_" + trid).remove();
			});
		}

		function addmoreimag() {
			var x = Math.floor((Math.random() * 10000) + 1);
			var row = "<tr id='r_" + x +
				"'><td><input type='text' name='orderno[]'  id='orderno' class='form-control onlynumbers'  placeholder='Order No'  value='1'/></td>";
			row += "<td><div class='fileupload fileupload-new' data-provides='fileupload'>";
			row += "<div class='fileupload-preview thumbnail' style='width: 150px; height: 150px;'></div>";
			row += "<div>";
			row +=
				"<span class='btn btn-file btn-info'><span class='fileupload-new'>Select image</span><span class='fileupload-exists'>Change</span><input type='file' name='galthumb[]' id='galimag' /><input type='hidden' name='gimgid[]' value='0' /></span>";
			row +=
				"  <a href='#' class='btn btn-primary fileupload-exists' data-dismiss='fileupload'>Remove</a><input type='hidden'  name='gimgstat[]' value='0'>";
			row += "</div>";
			row += "</div></td>";
			row += "<td><div class='fileupload fileupload-new' data-provides='fileupload'>";
			row += "<div class='fileupload-preview thumbnail' style='width: 150px; height: 150px;'></div>";
			row += "<div>";
			row +=
				"<span class='btn btn-file btn-info'><span class='fileupload-new'>Select image</span><span class='fileupload-exists'>Change</span><input type='file' name='galsmall[]' id='galimag' /><input type='hidden' name='gimgid[]' value='0' /></span>";
			row +=
				"  <a href='#' class='btn btn-primary fileupload-exists' data-dismiss='fileupload'>Remove</a><input type='hidden'  name='gimgstat[]' value='0'>";
			row += "</div>";
			row += "</div></td>";
			row += "<td><div class='fileupload fileupload-new' data-provides='fileupload'>";
			row += "<div class='fileupload-preview thumbnail' style='width: 150px; height: 150px;'></div>";
			row += "<div>";
			row +=
				"<span class='btn btn-file btn-info'><span class='fileupload-new'>Select image</span><span class='fileupload-exists'>Change</span><input type='file' name='galsmall[]' id='galimag' /><input type='hidden' name='gimgid[]' value='0' /></span>";
			row +=
				"  <a href='#' class='btn btn-primary fileupload-exists' data-dismiss='fileupload'>Remove</a><input type='hidden'  name='gimgstat[]' value='0'>";
			row += "</div>";
			row += "</div></td>";
			row += "<td><div class='fileupload fileupload-new' data-provides='fileupload'>";
			row += "<div class='fileupload-preview thumbnail' style='width: 150px; height: 150px;'></div>";
			row += "<div>";
			row +=
				"<span class='btn btn-file btn-info'><span class='fileupload-new'>Select image</span><span class='fileupload-exists'>Change</span><input type='file' name='galmedium[]' id='galimag' /></span>";
			row +=
				"  <a href='#' class='btn btn-primary fileupload-exists' data-dismiss='fileupload'>Remove</a><input type='hidden'  name='gimgstat[]' value='0'>";
			row += "</div>";
			row += "</div></td>";
			
			row += "<td class='text-center'><span class='btn btn-primary' onclick='remove123(" + x +
				")'><i class='fas fa-minus'></i></span></td></tr>";
			$('#i').append(row);
		}

		function addmorevase() {
			var x = Math.floor((Math.random() * 10000) + 1);
			var row = "<tr id='r_" + x +
				"'><td><input type='text' name='vasename[]'  id='vasename' class='form-control'  placeholder='Vase Name'  value=''/></td>";
			row += "<td><div class='fileupload fileupload-new' data-provides='fileupload'>";
			row += "<div class='fileupload-preview thumbnail' style='width: 200px; height: 150px;'></div>";
			row += "<div>";
			row +=
				"<span class='btn btn-file btn-info'><span class='fileupload-new'>Select image</span><span class='fileupload-exists'>Change</span><input type='file' name='vaseimag[]' id='vaseimag' /><input type='hidden' name='vimgid[]' value='0' /></span>";
			row +=
				"  <a href='#' class='btn btn-primary fileupload-exists' data-dismiss='fileupload'>Remove</a><input type='hidden'  name='vimgstat[]' value='0'>";
			row += "</div>";
			row += "</div></td>";
			row +=
				"<td><input type='text' name='price[]'  id='price' class='form-control floatval'  placeholder='Vase Price'  value=''/></td>";
			row +=
				"<td><input type='text' name='vasestock[]'  id='vasestock' class='form-control onlynumbers'  placeholder='Vase Stock'  value=''/></td>";
			row += "<td class='text-center'><span class='btn btn-primary' onclick='remove123(" + x +
				")'><i class='fas fa-minus'></i></span></td></tr>";
			$('#v').append(row);
		}

		function addmorespec() {
			var x = Math.floor((Math.random() * 10000) + 1);
			var row = "<tr id='r_" + x + "'>";
			row +=
				"<td><input type='text' name='spec_name[]' id='spec_name' class='form-control' placeholder='Specification Name' value='' /></td>";
			row +=
				"<td><input type='text' name='spec_val[]' id='spec_val' class='form-control' placeholder='Specification Value' value='' /></td>";
			row += "<td class='text-center'><span class='btn btn-primary' onclick='remove123(" + x +
				")'><i class='fas fa-minus'></i></span></td></tr>";
			$('#sp').append(row);
		}


		function getsubcateg(id) {
			$.post('<?php echo base_url(); ?>master/getsubcat', {
				cid: id
			}, function(data) {
				$('#subcateg').html('<option value="">--Select--</option>' + data);
			});
		}
		function getsubsubcateg(id) {
			
				$.post('<?php echo base_url(); ?>master/getsubsubcat', {
				subid: id
				}, function(data) {
					$('#sub_sub_id').html('<option value="">--Select--</option>' + data);
				});
			
		}

		function hidesize(val) {
			$("#newsize").show();
			if (parseInt(val) == 0) {
				$("#newsize").hide();
				$(".removeall").remove();
			}
		}
	</script>
<script src="https://cdn.tiny.cloud/1/a6tj60xi1k10z1c7trmg4bk6mp3dzpe9eoyi37anyzfpllhc/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  	<script>
		$(function() {
	  
			tinymce.init({
				selector: '#mtdesc',
			  plugins: 'media',

				menubar: '',
				toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap | fullscreen  preview ',
				height: 300,
				image_caption: true,
				quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
				noneditable_noneditable_class: "mceNonEditable",
				toolbar_mode: 'sliding',
				contextmenu: "table",
			});
		});
		$(function() {
	  
			tinymce.init({
				selector: '#overview',
				plugins: 'media print preview paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen table charmap hr toc insertdatetime advlist lists wordcount textpattern noneditable help charmap quickbars ',
				menubar: '',
				toolbar: 'media undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap | fullscreen  preview ',
				height: 300,
				image_caption: true,
				quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
				noneditable_noneditable_class: "mceNonEditable",
				toolbar_mode: 'sliding',
				contextmenu: "table",
			});
		});
		$(function() {
	  
			tinymce.init({
				selector: '#mttag',
				plugins: 'print preview paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen table charmap hr toc insertdatetime advlist lists wordcount textpattern noneditable help charmap quickbars ',
				menubar: '',
				toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap | fullscreen  preview ',
				height: 300,
				image_caption: true,
				quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
				noneditable_noneditable_class: "mceNonEditable",
				toolbar_mode: 'sliding',
				contextmenu: "table",
			});
		});

			$(function() {
	  
			tinymce.init({
				selector: '#howtouse',
				plugins: 'media print preview paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen table charmap hr toc insertdatetime advlist lists wordcount textpattern noneditable help charmap quickbars ',
				menubar: '',
				toolbar: 'media undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap | fullscreen  preview ',
				height: 300,
				image_caption: true,
				quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
				noneditable_noneditable_class: "mceNonEditable",
				toolbar_mode: 'sliding',
				contextmenu: "table",
				audio_template_callback: function(data) {
   return '<audio controls>' + '\n<source src="' + data.source + '"' + (data.sourcemime ? ' type="' + data.sourcemime + '"' : '') + ' />\n' + (data.altsource ? '<source src="' + data.altsource + '"' + (data.altsourcemime ? ' type="' + data.altsourcemime + '"' : '') + ' />\n' : '') + '</audio>';
 }
			});
		});
</script>


	<!-- <script src="<?php echo asset_url(); ?>libs/bootstrap/dist/js/bootstrap.min.js"></script> -->
	<!-- apps -->
	<script src="<?php echo asset_url(); ?>dist/js/app.min.js"></script>
	<script src="<?php echo asset_url(); ?>dist/js/app.init.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="<?php echo asset_url(); ?>libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<!--Wave Effects -->
	<script src="<?php echo asset_url(); ?>dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="<?php echo asset_url(); ?>dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="<?php echo asset_url(); ?>dist/js/custom.min.js"></script>
	<!--This page JavaScript -->

</body>
<!-- END BODY-->

</html>