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
    <!-- template styles -->
    <link rel="stylesheet" href="<?php echo asset_url(); ?>css/main.css">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<![endif]-->
		<?php echo $common; ?>
		<style>
			.fullw{
				width:100%;
			}
            .csh-option {
                cursor: pointer!important;
            }
		</style>
	</head>
	<body class="bg-dark1">
		<?php
				$tax_amts=[];$arss =[];
				foreach($this->cart->contents() as $value) {
					$productTax = $this->home_db->getRecords('products',['id'=>$value['id']],'tax');
                    if(count($productTax)) {
                        $tax_amts[] = (int)$productTax[0]->tax / 100 * $value['subtotal'];
                    $tass = (int)$productTax[0]->tax / 100 * (int)$value['subtotal'];
                    $arss[] = (int)$value['subtotal']+$tass;
                    }
					
				}
				//echo "<pre>";print_r($tax_amts);
				//echo array_sum($tax_amts);
				$totals = array_sum($arss);
			 $discountAmount ="";
                                if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                    $discountAmount .= $this->session->userdata('discount')/100*$totals;

                                }
		?>
		<?php echo $header;?>
	<div class="page-wrapper">
        <div class="stricky-header  main-menu main-menu__two">
            <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
        </div><!-- /.stricky-header -->
        <section class="page-header">
            <div class="page-header__bg"
                style="background-image: url(<?php echo asset_url(); ?>images/backgrounds/page-header-bg-1-1.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <ul class="thm-breadcrumb list-unstyled">
                    
                    <li><span>CHECKOUT</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details pt-5 pb-5 pl-2 pr-2">
            <div class="container">
                 
                <div class="row">
                    <div style="width: 100%"><?php if($this->session->flashdata('message')) {
                        echo $this->session->flashdata('message');
                    }else {

                    }
                    ?></div>
                	<form name="formname" action="<?= base_url().'cart/placeorder?type=razor';?>" id="formname" class="row" method="post">
                    <div class="col-md-8">
                       
                        <h2>Address</h2>
                        <div  class="fullw">
                            <div class="card">
                               
                                <h5 class="mb-0 heading-dash">
                                  
                                    <i class="fas fa-money-bill-wave"></i>  Billing Address
                                  
                                </h5>
                              
                           
                              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body row">
                                 
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
										// if(is_array($getdet)){        		
										// 	$shipname=$getdet[0]->sname;
										// 	$shipphone=$getdet[0]->sphone;
										// 	$shipaddress1=$getdet[0]->saddr1;
										// 	$shipaddress2=$getdet[0]->saddr2;
										// 	$shipcountry=$getdet[0]->scountry;
										// 	$shiptown=$getdet[0]->scity_id;
										// 	$shipzip = $getdet[0]->spincode;
										// 	$landmark = $getdet[0]->landmark;
										// }
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
                                        <div class="form-group col-md-6">
                                            <label for="">Name</label>
                                            <input type="text" class="form-control" placeholder="Name" name="name" id="name" value="<?php echo $name?>"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Email</label>
                                            <input type="email" class="form-control" placeholder="Email" name="email" id="email" value="<?php echo $email?>"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Address Line 1</label>
                                            <input type="text" class="form-control" laceholder="Address Line 1" name="address1" id="address1" value="<?php echo $address1?>" maxlength="100" required/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Address Line 2</label>
                                            <input type="text" class="form-control" placeholder="Address Line 2" name="address2"id="address2" value="<?php echo $address2?>"maxlength="100" required/>
                                        </div>
                                        <div class="form-group col-md-6" >
                                            <label for="">State</label>
                                            <select name="state" id="state" class="form-control" onchange="select_states(this.value)">
                                                <option value="">-State-</option>
                                                <?php $states = $this->home_db->getcontent1('states','','','0','name','asc');?>
                                                <?php if(is_array($states)){
                                                foreach ($states as $s){?>
                                                <option value="<?php echo $s->id?>" <?php if($state == $s->id){?>selected="selected" <?php }?>><?php echo $s->name?></option>
                                                <?php }}?>
                                                
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6" >
                                        	<label for="">State/City</label>
                                       <select name="city" id="city" class="form-control" required>
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
                                        <div class="form-group col-md-6">
                                            <label for="">Pincode</label>
                                            <input type="text" class="form-control" name="pincode" id="pincode" value="<?php echo $zip?>" maxlength="6" class="onlynumbers" required/>
                                        </div>                                        
                                        <div class="form-group col-md-6">
                                            <label for="">Phone</label>
                                            <input type="text" class="form-control" placeholder="Phone" name="phone" id="phone" value="<?php echo $phone?>" maxlength="10" class="onlynumbers" required/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Shipping Details</label>
                                            <a href="javascript:void(0);" class="form-check" id="shipping">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
                                                <label class="form-check-label" for="exampleCheck1" style="cursor: pointer">This is also my shipping address</label>
                                              </a>

                                        </div>
                                         
                                        <h5 class="heading-dash mb-4 mt-4"><i class="fas fa-truck"></i> Shipping Address</h5>
                                    
                                        <div class="form-group col-md-6">
                                            <label for="">Name</label>
                                            <input type="text" class="form-control" placeholder="Name" name="shipname" id="shipname" value="<?php echo $shipname?>" maxlength="50"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Email</label>
                                            <input type="email" class="form-control" placeholder="Email" name="email" id="email" value="<?php echo $email?>"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Address Line 1</label>
                                            <input class="form-control" type="text" placeholder="Address Line 1" name="shipaddress1" id="shipaddress1" value="<?php echo $shipaddress1?>" maxlength="100"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Address Line 2</label>
                                            <input class="form-control" type="text" placeholder="Address Line 2" name="shipaddress2" id="shipaddress2" value="<?php echo $shipaddress2?>" maxlength="100"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                           <label class="control-label">Select State</label>
                                            <select name="shipstate" id="shipstate" class="form-control" onchange="selectstates(this.value)">
                                                <option value="">-State-</option>
                                                <?php $states = $this->home_db->getcontent1('states','','','0','name','asc');?>
                                                <?php if(is_array($states)){
                                                foreach ($states as $s){?>
                                                <option value="<?php echo $s->id?>"><?php echo $s->name?></option>
                                                <?php }}?>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">State/City</label>
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
                                        <div class="form-group col-md-6">
                                            <label for="">Pincode</label>
                                            <input type="text" class="form-control" placeholder="Pincode" name="shippincode"    id="shippincode" class="onlynumbers" value="<?php echo $shipzip?>" maxlength="6"/>
                                            <p id="pmsgbox" style="color:green">
                                               
                                            </p>
                                        </div>                                        
                                        <div class="form-group col-md-6">
                                            <label for="">Phone</label>
                                            <input class="form-control" type="text" placeholder="Phone" class="onlynumbers" name="shipphone" id="shipphone" value="<?php echo $shipphone?>" maxlength="10"/>
                                        </div>
                                    <!--     <div class="form-group col-md-12">
                                            <button class="btn btn-warning back ">Back </button>
                                        </div> -->
                                   
                                </div>
                              </div>
                            </div>
                           
                            
                          </div>
                         
                        
                    </div>
                    <div class="col-md-4 sticky-top mb-2">
                        <h2>Payment Option</h2>


                        <div class="crt-t p-2 mb-3">
                            
                             <table class="table">
                            <tr>
                                <td>
                                    Item <?php echo $this->cart->total_items();?>
                                </td>
                                <td align="right"><i class="fa fa-rupee-sign" style="margin-right:6px"></i>
                                    <?php  echo $this->cart->total(); ?>
                                </td>
                            </tr>
                          <?php if(empty($this->session->userdata('taxamountlist')) && $this->session->userdata('taxamountlist') ==0) {

                          }else {
                                ?>
                                   <tr>
                                <td>Tax</td>
                                <td align="right"><i class="fa fa-rupee-sign" style="margin-right:6px"></i><?php echo  $this->session->userdata('taxamountlist'); ?></td>
                            </tr>
                                <?php
                          }
                          ?>
                                  

                               <tr>
                                <td>Delivery Charges</td>
                                <td align="right"><i class="fa fa-rupee-sign"></i> <span id="dcharges"><?php if($this->session->userdata('charges')) {echo $this->session->userdata('charges'); }else {
                                   
                                }?></span></td>
                            </tr>
                            
 <!--                    <tr>
    <td>Shipping Charges</td>
    <td align="right"><i class="fa fa-rupee-sign" style="margin-right:6px"></i>0</td>
</tr>   -->     
                          

                           
                              <?php
                                        $discountAmount = "";
                                       // echo $this->session->userdata('coupon');
                                     (int)$this->session->userdata('totaltaxamount');
                                        if ($this->session->userdata('coupon') && floatval($this->cart->total()) > 0) {
                                            $discountAmount .= $this->session->userdata('discount') / 100 * $this->cart->total();
                                            ?>
                                             <tr>
                                <td>Coupon Applied</td>
                                <td align="right"><?php echo $this->session->userdata('discount')."%";?> Discount</td>
                            </tr>
                                                                        <tr>
                                                <td> Discount Price <br /></td>
                                                <td align="right">
                                                -    <i class="fa fa-rupee-sign"></i> 
                                                    <?php echo $discountAmount ?> </td>
                                            </tr>
                                            <?php

                                        }else {

                                        }

                                        ?>
                           
                            <tr>
                                <td>Total Amount</td>
                                <td align="right"><i class="fa fa-rupee-sign"></i> <span id="totalamountPaid"><?php echo  (int)$this->cart->total()+(int)$this->session->userdata('taxamountlist')-(int)$discountAmount+(int)$this->session->userdata('charges')?></span></td>
                            </tr>
                        </table>
                            <div class="card">
                                <label class="card-body csh-option"> <input type="radio" name="type" id="type" value="razor" /><img src="<?php echo asset_url(); ?>images/icons/razor.svg" alt=""> Razorpay</label>
 
                            </div>

                            <div class="card">
                                 

                                <label class="card-body csh-option"><input type="radio" name="type" id="type" value="cod" /> <img src="<?php echo asset_url(); ?>images/icons/COD.svg" alt=""> Cash on Delivery</label>
                            </div>
                         
                         
                    </div>

                    <button type="submit"class="btn btnsubmit btn-info btn-block" id="paydisable"  onclick="submitForm()">Pay Now</button>
                    </div>
                       </form>
                </div>
 
            </div><!-- /.container -->
        </section><!-- /.service-details -->
		<!-- END </ PAGE CONTENT>  -->
		<?php echo $footer;?>
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
		<?php echo $jsFile;?>
		<script type="text/javascript">
                    function select_states(val)
       {
            var base_url="<?php echo base_url();?>";
            $.ajax({
                type:"POST",
                url:base_url+"cart/select_states",
                data:'state='+val,
                success: function(data)
                {
                    $("#city").html(data);
                }
            });
       }
       function selectstates(val)
       {
            var base_url="<?php echo base_url();?>";
            $.ajax({
                type:"POST",
                url:base_url+"cart/selectstates",
                data:'shipstate='+val,
                success: function(data)
                {
                    $("#shipcity").html(data);
                }
            });
       }
		  $('.skip').click(function(e) {
				var val = $(this).attr("uid");
                var str = $("#formname").serialize();
                //console.log(str);
				if (validate1() == true) {
					$(".collapse").removeClass("show in");
					$("#collapse" + val).click();
					$("#collapse"+val).addClass("show in");
					$.post("<?php echo base_url()?>cart/billingdetails", str, function(data) {
						$('html, body').animate({ scrollTop: $("#collapse1").offset().top }, 1000);
					});
					
					
					$("#shipdiv").html($("#shipname").val()+',<br/>'+$("#shipphone").val()+',<br/>'+$("#shipaddress1").val()+',<br/>'+$("#shipaddress2").val()+',<br/>'+$("#shipcity option:selected").html()+',<br/>'+$("#shippincode").val());
					
					$("#billdiv").html($("#name").val()+',<br/>'+$("#phone").val()+',<br/>'+$("#address1").val()+',<br/>'+$("#address2").val()+',<br/>'+$("#city option:selected").html()+',<br/>'+$("#pincode").val()+',<br />'+$("#city").val());
					
					
				}
		 });
		 
	
		
		
		$(document).ready(function() {
			$('#shipping').click(function() {
				$("#msgbox1").html('');
                var state = $("#state").val();
				var city = $("#city").val();
				var pincode = $("#pincode").val();
				
				var cityid = "";
				$.ajax({
					url :"<?= base_url()."home/cityId"; ?>",
					type :"post",
					data:{state:state,city:city,pincode:pincode},
					dataType:"json",
					success:function(data) {
						console.log(data);
					}
				});
				$("#icon").addClass('active');
				$("#shipname").val($("#name").val());
				$("#shipphone").val($("#phone").val());
				$("#shipaddress1").val($("#address1").val());
				$("#shipaddress2").val($("#address2").val());
                $("#shipstate").val($("#state").val());
				$("#shipcity").val($("#city").val());
				$("#shippincode").val($("#pincode").val());
				if ($("#pincode").val() != '' && $("#city").val() !="") {
			         isvalidpincode($("#pincode").val(),$("#city").val());
				}
			//}
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
				document.location.href='<?php echo base_url()?>cart/placeorder?type=razor';
			}
			else if($("#cash").is(":checked")){
				$("#pmsg").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>');
				document.location.href='<?php echo base_url()?>cart/placeorder?type=cod';
			}
			else{
				$("#pmsg").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Select Payment Method.</div>');
				return false;
			}
			$("#pmsg").html('');
				
			return true;
		}
		
		
	
		
	
        function submitForm() {
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
                var checked = $("#exampleCheck1").val();
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
                   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Shipping name.</div>');
                   return false;
                } else if ($.trim(shipaddress1) == "") {
                   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Shipping Address Line 1.</div>');
                   return false;
                } else if ($.trim(shiptown) == "") {
                   $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Shipping Select City/State.</div>');
                   return false;
                } else if ($.trim(shipzip) == "") {
                    $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please  Enter Shipping Pincode.</div>');
                    return false;
                } else if (isvalidpincode(shipzip) == "") {
                    $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Sorry Service is not available for entered Pincode.</div>');
                    return false;
                } else if ($.trim(shipphone) == "") {
                    $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Shipping Phone No.</div>');
                    return false;
                }else if ($.trim(checked) == "") {
                    $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please check the required fileds.</div>');
                    return false;
                }
                
                $("#msgbox1").html('');
                
                return true;
        }
		
		function isvalidpincode(pincode,citys) {
			
			$("#shippincode").removeClass("red_border");
			$("#pmsgbox").html('');
			var strURL = "<?php echo base_url()?>home/checkpincode";
			if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
			  req = new XMLHttpRequest();
			} else { // code for IE6, IE5
			  req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			var param = "pin=" + pincode+"&cit="+citys;
			req.open("POST", strURL, false); //third parameter is set to false here
			req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			req.send(param);
			data = req.responseText;
			if (data != '') {
			   var del = ' ';
				if (data > 0) {
				    $("#pmsgbox").html( "Delivery Available - with charges <i class='icon_rs_green'></i>" + data).css('color', 'green');
				}
			 
              var zerodata = "";
              if(data ==-1) {
                $("#dcharges").html(0);
                zerodata +=0;
                 $("#pmsgbox").html( "Delivery not Available for pincode " +pincode).css('color', 'red');
              }else {
                $("#dcharges").html(data);
                zerodata +=data;
              }
              
			  $("#resd").html(data);
			  var totalAmount = '<?php $ars = []; foreach ($this->cart->contents() as $items){
												 	$productTax = $this->home_db->getRecords('products',['id'=>$items['pid']],'tax'); 
													if(empty((int)$productTax[0]->tax) && $productTax[0]->tax=="") {
	
													}else {
														$tax_amt = (int)$productTax[0]->tax / 100 * $items["subtotal"];
														$ars[] = $tax_amt;
													}
												}
			    								echo (int)array_sum($ars)+(int)$this->cart->total()-(int)$discountAmount; ?>';

                                              var total = parseFloat(totalAmount) + parseFloat(zerodata);
                                                $("#totalamountPaid").html(total);
			  								
			  //console.log(total);
             
			} 
			if(data ==-1) {
				
				$(".item_summary_table").hide();
				$(".hideBtn").css("visibility","hidden");
               
               
			}else {
				$(".item_summary_table").show();
				$(".hideBtn").css("visibility","visible");
			}
			return req.responseText;
		}
		</script>
		<script type="text/javascript">
		$(document).ready(function() {
		$(".paybtns").click(function() {
			
			$("#gmsgbox").html(
			'<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait redirecting...</div>'
			
			);
			document.location.href = '<?php echo base_url()?>cart/placeorder?type=razor';
		
			});

		});
		</script>
</html>