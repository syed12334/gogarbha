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
	</head>
	<body>
		<?php echo $header;?>
		<div class="breadbg">
			<div class="container">
				<div class="row">
					<ul class="breadcrumb">
						<li><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i></a></li>
						<li><a href="javascript:void(0);" onclick="document.location.href='<?php echo base_url()?>cart/cart_summary'">Shopping Cart</a></li>
						<li>Checkout</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- <PAGE CONTENT> ================================= -->
		<div class="page_content acpage">
			<div class="container">
				<h1>Checkout</h1>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a>Address b2c</a>
							</h4>
						</div>
					<!--	<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">-->
						
						<div id="collapse0" class="panel-collapse collapse in show" aria-labelledby="headingOne" data-parent="#accordion" id="0" role="tabpanel">
							<div class="panel-body">
								<form name="formname" id="formname" method="post" action="payment" >
									<?php echo $this->session->flashdata('message');?>
									<?php 
									$name= $email = $phone = $address1 = $address2 = $country = $town = $state = $zip = '';
									$shipname= $shipphone = $shipaddress1 = $shipaddress2 = $shipcountry = $shiptown = $shipstate = $shipzip = $landmark = '';
									?>
									<?php if(is_array($UserDetail)){
										$det = $UserDetail;
										$id = $det[0]->id;
										$name=$det[0]->name;
										$email=$det[0]->emailid;
										$phone=$det[0]->phone;
										$address1=$det[0]->address1;
										$address2=$det[0]->address2;
										$country=$det[0]->country;
										$town=$det[0]->town;
										$zip = $det[0]->zip;
										$getdet = $this->home_db->getbilldetails($id);
										if(is_array($getdet)){        		
											$shipname=$getdet[0]->sname;
											$shipphone=$getdet[0]->sphone;
											$shipaddress1=$getdet[0]->saddr1;
											$shipaddress2=$getdet[0]->saddr2;
											$shipcountry=$getdet[0]->scountry;
											$shiptown=$getdet[0]->scity_id;
											$shipzip = $getdet[0]->spincode;
											$landmark = $getdet[0]->landmark;
										}
									}
									if($this->session->userdata('pincode')){
										$shipzip = $this->session->userdata('pincode');
									}
									$bill = $this->session->userdata('billing');
									if(is_array($bill)){
										$name=$bill['name'];
										$email=$bill['email'];
										$phone=$bill['phone'];
										$address1=$bill['address1'];
										$address2=$bill['address2'];
										$town=$bill['city'];
										$zip = $bill['pincode'];
										$shipname=$bill['shipname'];
										$shipphone=$bill['shipphone'];
										$shipaddress1=$bill['shipaddress1'];
										$shipaddress2=$bill['shipaddress2'];
										$shiptown=$bill['shipcity'];
										$shipzip = $bill['shippincode'];
										$landmark = $bill['landmark'];
									}?>
									<div class="col-lg-5 col-md-5 col-sm-5 form">
										<div class="heading text-center">
											<h6><span>Billing Address</span></h6>
										</div>
										<div class="form-group required">
											<label class="control-label">Name</label>
											<input class="form-control" type="text" placeholder="Name" name="name" id="name" value="<?php echo $name?>" maxlength="50">
										</div>
										<div class="form-group required">
											<label class="control-label">Email</label>
											<input class="form-control" type="text" placeholder="Email" name="email" id="email" value="<?php echo $email?>">
										</div>
										<div class="form-group required">
											<label class="control-label">Address Line 1</label>
											<input class="form-control" type="text" placeholder="Address Line 1" name="address1" id="address1" value="<?php echo $address1?>" maxlength="100">
										</div>
										<div class="form-group required">
											<label class="control-label">Address Line 2</label>
											<input class="form-control" type="text" placeholder="Address Line 2" name="address2"id="address2" value="<?php echo $address2?>"maxlength="100">
										</div>
										<div class="form-group required" >
											<label class="control-label">Select City/State</label>
											<select name="city" id="city" class="form-control">
												<option value="">-City/State-</option>
												<?php $states = $this->home_db->getcontent1('states','','','0','name','asc');?>
												<?php if(is_array($states)){
												foreach ($states as $s){
												$cities = $this->home_db->getcontent1('cities','state_id',$s->id,'0','name','asc');
												if(is_array($cities)){
												}?>
												<optgroup label="-<?php echo $s->name?>-"></optgroup>
												<?php 
												foreach ($cities as $c){?>
												<option value="<?php echo $c->id?>"
												<?php if($town == $c->id){?>selected="selected" <?php }?>>
												<?php echo $c->name?></option>
												<?php }}?>
												<?php }?>
											</select>
										</div>
										<div class="form-group required" >
											<label class="control-label">Pincode</label>
											<input class="form-control" type="text" placeholder="Pincode" name="pincode" id="pincode" value="<?php echo $zip?>" maxlength="6" class="onlynumbers">
										</div>
										<div class="form-group required">
											<label class="control-label">Phone</label>
											<div class="ph">
												<input class="form-control" type="text" placeholder="Phone" name="phone" id="phone" value="<?php echo $phone?>" maxlength="10" class="onlynumbers">
											</div>
										</div>
										<div class="field form-group">
											<a href="javascript:void(0);" class="btn btn-primary same " id="shipping">This also my shipping address
												<div class="indicate_box">
													<span class="indicate active" id="icon"> <i class="icon icon-done_green"></i></span>
												</div>
											</a>
										</div>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-5 form  col-lg-offset-2 col-md-offset-2 col-sm-offset-2">
										<div class="heading text-center">
											<h6><span>Shipping Address</span></h6>
										</div>
										<div class="form-group required">
											<label class="control-label">Name</label>
											<input class="form-control" type="text" placeholder="Name" name="shipname" id="shipname" value="<?php echo $shipname?>" maxlength="50">
										</div>
										<div class="form-group required">
											<label class="control-label">Address Line 1</label>
											<input class="form-control" type="text" placeholder="Address Line 1" name="shipaddress1" id="shipaddress1" value="<?php echo $shipaddress1?>" maxlength="100">
										</div>
										<div class="form-group required">
											<label class="control-label">Address Line 2</label>
											<input class="form-control" type="text" placeholder="Address Line 2" name="shipaddress2" id="shipaddress2" value="<?php echo $shipaddress2?>" maxlength="100">
										</div>
										<div class="form-group required" >
											<label class="control-label">City/State</label>
											<select name="shipcity" id="shipcity" class="form-control">
												<option value="">-City/State-</option>
												<?php $states = $this->home_db->getcontent1('states','','','0','name','asc');?>
												<?php if(is_array($states)){
												foreach ($states as $s){
												$cities = $this->home_db->getcontent1('cities','state_id',$s->id,'0','name','asc');
												if(is_array($cities)){
												}?>
												<optgroup label="-<?php echo $s->name?>-"></optgroup>
												<?php 
												foreach ($cities as $c){?>
												<option value="<?php echo $c->id?>"
												<?php if($shiptown == $c->id){?>selected="selected" <?php }?>>
												<?php echo $c->name?></option>
												<?php }}?>
												<?php }?>
											</select>
										</div>
										<div class="form-group required" >
											<label class="control-label">Pincode</label>
											<input class="form-control" type="text" placeholder="Pincode" name="shippincode"	id="shippincode" class="onlynumbers" value="<?php echo $shipzip?>" maxlength="6">
											<p id="pmsgbox" style="color:green">
												<?php if($this->session->userdata('pincode')){
												if(floatval($this->session->userdata('charges')) > 0){
												echo 'Delivery Available with charges <i class="icon_rs_gray"></i>'.$this->session->userdata('charges');
												}else{echo 'Delivery Available - Free Delivery';}}?>
											</p>
										</div>
										<div class="form-group required">
											<label class="control-label">Landmark</label>
											<input class="form-control" type="text" placeholder="Landmark" name="landmark" id="landmark" value="<?php echo $landmark?>">
										</div>
										<div class="form-group required">
											<label class="control-label">Phone</label>
											<div class="ph">
												<input class="form-control" type="text" placeholder="Phone" class="onlynumbers" name="shipphone" id="shipphone" value="<?php echo $shipphone?>" maxlength="10">
											</div>
										</div>
									</div>
								
								<div id="msgbox1" class="col-md-12"></div>
								<div class="buttons col-md-12">
									<div class="pull-right">
										<!--<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" 	aria-expanded="false" aria-controls="collapseTwo" class="btn btn-primary skip1" id="nextstep"> Next Step</a>-->
										
										<button type="button" id="next1" class="btn btn-primary skip" uid="1"><i class="mdi mdi-check"></i> Next Step</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default" id="thirdh">
						<div class="panel-heading" role="tab" id="heading1">
							<h4 class="panel-title">
								<a  id="1">  Confirm Order </a>
							</h4>
						</div>
						<!--<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">-->
						<div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1" data-parent="#accordion">
							<div class="panel-body">
								<?php $bill = $this->session->userdata('billing');?>
								<div class="row">
									<div class="col-md-6">
										<h3>Billing Address</h3>
										<address id="billdiv">
											
										</address>
									</div>
									<div class="col-md-6">
										<h3>Shipping Address</h3>
										<address id="shipdiv">
											
										</address>
									</div>
								</div>
								<?php echo $this->session->flashdata('message');?>
								<div class="item_summary_table" id="loaddata">
									<?php foreach ($this->cart->contents() as $items){
									$options = $this->cart->product_options($items['rowid']);
									$type = $options['categ'];
									?>
									<div class="allcart" id="loaddata">
										<div class="cart-img sree">
											<a href="<?php echo $items['plink'];?>">
												<img src="<?php echo $items['image'];?>" class="img-thumbnail" width="110">
											</a>
										</div>
										<div class="cart-des">
											<a class="cart-des-name" href="<?php echo $items['plink'];?>"><?php echo $items['name'];?><?php if($items['sizeid'] != '0' && $items['sizeid'] != ''){echo '('.$items['sname'].')';}?></a>
											<div><?php echo $items['pcode']?></div>
											<div class="price"><i class="fas fa-rupee-sign"></i>
												<?php echo $this->home_db->getnumberformat($items['price']*$items['qty']);?>
											</div>
											<div class="input-group btn-block" style="max-width: 200px;">
												<input type="text" value="<?php echo $items['qty'];?>" class="qty onlynumbers form-control" name="qty<?php echo $items['rowid'];?>" id="qty<?php echo $items['rowid'];?>" uid="<?php echo $items['rowid'];?>" maxlength="3">
											</div>
										</div>
										<button type="button" data-toggle="tooltip" title="" class="pull-right cart-re" onclick="remove_row('<?php echo $items['rowid'];?>');"><i class="fa fa-trash-o"></i></button>
									</div>
									<?php }?>
									<div class="row">
									<?php /* ?>
										<div class="col-lg-8 col-xs-12 col-md-6">
											<div class="gift_coupon" id="gift_voucherid">
												<?php if(!$this->session->userdata('coupon')){?>
												<h1>Use Coupon Code</h1>
												<!--<div class="input-group">
												  <form method="post">
													<input type="text" placeholder="Enter your gift coupon" name="coupon" id="coupon" class="form-control">
													<span class="input-group-btn">
														<input type="button" class="btn btn-primary giftcoupon" value="update">
													</span>
													</form>
												</div>-->
												 <div class="input-group">
													<input type="text" placeholder="Enter your gift coupon" name="coupon" id="coupon"
														class="form-control">
													<span class="input-group-btn">
														<input type="submit" class="btn btn-primary giftcoupon" value="update">
													</span>
												</div>
												
												
												<?php }
												else{?>
												<p class="have gift_couponadded">1 gift coupon added <span class="removecoupon icon icon-pencil" title="Edit"></span><br>
												<?php if(floatval($this->cart->total()) > 0){?><span>You
												have saved <i class="icon_rs_green"></i>
												<?php echo $this->session->userdata('discount_amt');?>
												</span><?php }?>
												</p>
												<?php }
												?>
											</div>
											
											<div id="gmsgbox"></div>
										</div><php */ ?>
										<div class="col-lg-4 col-xs-12 col-sm-12 col-md-6">
											<table class=" table table-bordered">
												<?php if($this->session->userdata('coupon') && floatval($this->cart->total()) > 0){?>
												<tr>
													<td class="text-right"> Saved </td>
													<td class="text-right"><i class="fas fa-rupee-sign"></i>-<?php echo $this->session->userdata('discount_amt');?> </td>
												</tr>
												<?php }?>
												<?php $charges = 0;?>
												<?php if($this->session->userdata('pincode')){
												if(floatval($this->session->userdata('charges')) > 0  && floatval($this->cart->total()) > 0){
												$charges = $this->session->userdata('charges');
												?>
												<tr>
													<td class="text-right"> Delivery Charges </td>
													<td class="text-right"><i class="fas fa-rupee-sign"></i>
														<?php echo $charges;?>
													</td>
												</tr>
												<?php }}?>
												<tr>
													<td class="text-right">Total Payable Amount </td>
													<td class="text-right"><i class="fas fa-rupee-sign"></i>
														<?php echo $this->home_db->getcarttotal($this->session->userdata('discount'),$this->cart->total(),$charges);?>
													</td>
													<p class="tax">(Incl.tax)</p>
												</tr>
											</table>
										</div>
									</div>
								</div>
								<div id="gmsgbox"></div>
								<div class="buttons">
									<div class="pull-right">
										<a class="btn btn-primary back" type="button"  uid="0">Back</a>
										<!---<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="btn btn-primary"> Next Step</a>-->
										<button type="button" id="next1" class="btn btn-primary skip" uid="2"><i class="mdi mdi-check"></i> Next Step</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="heading2">
							<h4 class="panel-title">
								<a >Payment</a>
								
							</h4>
						</div>
						
						
						
						
						<div id="collapse2" class="panel-collapse  collapse"  role="tabpanel"aria-labelledby="heading2" data-parent="#accordion" id="2">
							<div class="panel-body payoptions">
								<div class="pay_option">
									
										<label class="payu" for="payu"> <input type="radio" name="cash_option" id="payu" checked style="display:none">
										<img src="<?php echo asset_url();?>images/payu.png"></label>
										<!--<label class="cash_on" for="cash"> <input type="radio" name="cash_option" id="cash" >
										<img src="<?php echo asset_url();?>images/cash_delivery.png">
										Cash on deliery</label>-->
									
								</div>
								
								<div id="pmsg"></div>
								<a class="btn btn-primary back" type="button" uid="1">Back</a>
								<button type="button" class="btn btn-primary paybtn" id="validate" >Proceed to Payment </button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<!-- END </ PAGE CONTENT>  -->
		<?php echo $footer;?>
		</body>
		<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
		<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
		<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
		<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
		<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
		<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
		<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>
		<script src="<?php echo asset_url();?>js/jquery-1.7.1.js" type="text/javascript"></script>
		<?php echo $jsFile;?>
		<script type="text/javascript">
		  $('.skip').click(function(e) {
				var val = $(this).attr("uid");
                var str = $("#formname").serialize();
				if (validate1() == true) {
					$(".collapse").removeClass("show in");
					$("#collapse" + val).click();
					$("#collapse"+val).addClass("show in");
					/*$.post("<?php echo base_url()?>cart/billingdetails", str, function(data) {
						$('html, body').animate({ scrollTop: $("#collapse1").offset().top }, 1000);
					});*/
					
					
					$("#shipdiv").html($("#shipname").val()+',<br/>'+$("#shipphone").val()+',<br/>'+$("#shipaddress1").val()+',<br/>'+$("#shipaddress2").val()+',<br/>'+$("#shipcity option:selected").html()+',<br/>'+$("#shippincode").val());
					
					$("#billdiv").html($("#name").val()+',<br/>'+$("#phone").val()+',<br/>'+$("#address1").val()+',<br/>'+$("#address2").val()+',<br/>'+$("#city option:selected").html()+',<br/>'+$("#pincode").val());
					
					
				}
		 });
		 
		$('.back').click(function(e) {
			//alert('back');
			var val = $(this).attr("uid");
			//alert(val);
			$(".collapse").removeClass("show in");
			$("#collapse"+val).addClass("show");
			$("#collapse"+val).click();
			$('html, body').animate({ scrollTop: $("#collapse"+val).offset().top }, 1000);
		});
		
		$("#validate").click(function() {
            if (validate1() == false) {
                $("#collapse0").removeClass("show in");
                $("#collapse0").click();
                
                return false;
            } else if (validate2() == false) {
                $("#collapse1").removeClass("show");
                $("#collapse1").click();
                return false;
            } else if (validate3() == false) {
				$("#collapse2").removeClass("show");
                $("#collapse2").click();
                //$("#third").removeClass("disable");
                //$("#third").click();
                //$(".allhd").addClass("disable");
                return false;
            } else {
                $("#formname").submit();
                //return true;
            }
        });
		$(document).ready(function() {
			$('#shipping').click(function() {
				$("#msgbox1").html('');
				if ($("#icon").hasClass('active')) {
				$("#icon").removeClass('active');
				$("#shipname").val('');
				$("#shipphone").val('');
				$("#shipaddress1").val('');
				$("#shipaddress2").val('');
				$("#shipcity").val('');
				$("#shippincode").val('');
				$("#shippincode").removeClass("red_border");
				$("#pmsgbox").html('');
			} else {
				$("#icon").addClass('active');
				$("#shipname").val($("#name").val());
				$("#shipphone").val($("#phone").val());
				$("#shipaddress1").val($("#address1").val());
				$("#shipaddress2").val($("#address2").val());
				$("#shipcity").val($("#city").val());
				$("#shippincode").val($("#pincode").val());
				if ($("#pincode").val() != '') {
				isvalidpincode($("#pincode").val());
				}
			}
		});

		$("body").on("blur", "#shippincode", function(e) {
		$('.myloader').fadeIn();
		var shipzip = $("#shippincode").val();
		if (shipzip != '') {
		isvalidpincode(shipzip);
		$('.myloader').fadeOut();
		}
		});
		});
		
		
		function validate2()
		{
			return true;
		}
		function validate3()
		{
		     if($("#payu").is(":checked")){
				$("#pmsg").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>');
				document.location.href='<?php echo base_url()?>cart/placeorderb2c?type=payu';
			}
			else if($("#cash").is(":checked")){
				$("#pmsg").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>');
				document.location.href='<?php echo base_url()?>cart/placeorderb2c?type=cod';
			}
			else{
				$("#pmsg").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Select Payment Method.</div>');
				return false;
			}
			$("#pmsg").html('');
				
			return true;
		}
		
		
	
		
		function validate1() {
				var name = $("#name").val();
				var phone = $("#phone").val();
				var address1 = $("#address1").val();
				var town = $("#city").val();
				var zip = $("#pincode").val();
				var email = $("#email").val();
				var shipname = $("#shipname").val();
				var shipphone = $("#shipphone").val();
				var shipaddress1 = $("#shipaddress1").val();
				var shiptown = $("#shipcity").val();
				var shipzip = $("#shippincode").val();
				var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				//alert(name);
				$("#msgbox1").html(
				'<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>'
				);
				if ($.trim(name) == "") {
				$("#msgbox1").html(
				'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Name.</div>'
				);
				return false;
				} else if ($.trim(email) == "") {
				$("#msgbox1").html(
				'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Email ID.</div>'
				);
				return false;
				} else if (!emailReg.test(email)) {
				$("#msgbox1").html(
				'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Valid Email ID.</div>'
				);
				return false;
				} else if ($.trim(address1) == "") {
				$("#msgbox1").html(
				'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Address Line 1.</div>'
				);
				return false;
				} else if ($.trim(town) == "") {
				$("#msgbox1").html(
				'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Select City/State.</div>'
				);
				return false;
				} else if ($.trim(zip) == "") {
				$("#msgbox1").html(
				'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Pincode.</div>'
				);
				return false;
				} else if ($.trim(phone) == "") {
				   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Phone No.</div>');
				   return false;
				} else if ($.trim(shipname) == "") {
				   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Name.</div>');
				   return false;
				} else if ($.trim(shipaddress1) == "") {
				   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Address Line 1.</div>');
				   return false;
				} else if ($.trim(shiptown) == "") {
				   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Select City/State.</div>');
				   return false;
				} else if ($.trim(shipzip) == "") {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Pincode.</div>');
				    return false;
				} else if (isvalidpincode(shipzip) == "") {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Sorry Service is not available for entered Pincode.</div>');
					return false;
				} else if ($.trim(shipphone) == "") {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Phone No.</div>');
					return false;
				}
				
				$("#msgbox1").html('');
				
				return true;
				
		}
		
		function isvalidpincode(pincode) {
			$("#shippincode").removeClass("red_border");
			$("#pmsgbox").html('');
			var strURL = "<?php echo base_url()?>home/checkpincode";
			if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
			  req = new XMLHttpRequest();
			} else { // code for IE6, IE5
			  req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			var param = "pin=" + pincode;
			req.open("POST", strURL, false); //third parameter is set to false here
			req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			req.send(param);
			data = req.responseText;
			if (data != '') {
			   var del = ' - Free Delivery';
			if (parseFloat(data) > 0) {
			   del = " with charges <i class='icon_rs_green'></i>" + data;
			}
			  $("#pmsgbox").html('Delivery Available' + del).css('color', 'green');
			} else {
			   $("#shippincode").addClass("red_border");
			   $("#pmsgbox").html('Sorry Service is not available for entered Pincode.').css('color', 'red');
			}
			return req.responseText;
		}
		</script>
		<script type="text/javascript">
		$(document).ready(function() {
		$(".paybtn").click(function() {
			if ($("#payu").is(":checked")) {
			$("#gmsgbox").html(
			'<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>'
			);
			document.location.href = '<?php echo base_url()?>cart/placeorderb2c?type=payu';
			} else if ($("#cash").is(":checked")) {
			$("#gmsgbox").html(
			'<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>'
			);
			document.location.href = '<?php echo base_url()?>cart/placeorderb2c?type=cod';
			} else {
			$("#gmsgbox").html(
			'<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Select Payment Method.</div>'
			);
			}
			});

		});
		</script>
</html>