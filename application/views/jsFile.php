<script src="<?php echo asset_url()?>js/jquery.mousewheel.min.js"></script>

<!-- <script>!window.jQuery && document.write(unescape('%3Cscript src="<?php echo asset_url()?>js/jquery-1.7.2.min.js"%3E%3C/script%3E'))</script>
<script>!window.jQuery.ui && document.write(unescape('%3Cscript src="<?php echo asset_url()?>js/jquery-ui-1.8.21.custom.min.js"%3E%3C/script%3E'))</script> -->
<script>


// Fetch the user profile data from facebook
function getFbUserData(){
    FB.api('/me', {locale: 'en_US', fields: 'id,first_name,last_name,email,link,gender,locale,picture'},
    function (response) {
       
       var userInfo = "https://graph.facebook.com/"+response.id+"/picture" ;
       var person = {
					fname: response.first_name,
					lname:response.last_name,
					email:response.email,
					profile:userInfo,
				}
 //console.log('_______'+person)
	   $.ajax({
			url: '<?php echo base_url();?>home/facebook_login',
			type: 'post',
			dataType: 'json',
			success: function (data) 
			{
				if(data==1)
				{
					location.reload();
				}
				else
				{
					document.location.href="<?php echo base_url();?>register";
					
				}
			},
			data: person
		});
	
	
	
	});
}
</script>

<script type="text/javascript">
function IsEmail(email) {
  var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if(!regex.test(email)) {
    return false;
  }else{
    return true;
  }
}
    $(document).ready(function() {
            $("#subscribe").on("click",function(e) {
                e.preventDefault();
                var email = $("#email").val();
                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                if(email =="") {
                    $("#serror").html('<div class="alert alert-danger">Email is required</div>');
                    return false;
                }

               
               if(IsEmail(email)==false){
          $("#serror").html('<div class="alert alert-danger">Enter valid email</div>');
                    return false;
        }
                	$.ajax({
                		url :"<?= base_url().'home/subscribenewsletter' ?>",
                		method :"post",
                		data :{
                			email :email
                		},
                		dataType:"json",
                		success:function(data) {
                			console.log(data);
                			if(data.status=='success') {
                				$("#serror").html('<div class="alert alert-success">'+data.pdata+'</div>');
                			}else if(data.status =='failure') {
                				$("#serror").html('<div class="alert alert-danger">'+data.pdata+'</div>');
                			}
                		}
                	});
              
            });
    });
    
    function getPrice(user_type,price_type)
	{
		//alert(user_type);
		//alert(price_type);
		$.post("<?php echo base_url();?>home/Setsession",{user_type:user_type,price_type:price_type},function(data){
			//alert(data);
			if(data ==1)
			{
				$('.price-new').css('display','none');
				if(price_type == 1)
				{
				   var currency = 'INR';
				   $('.inr-new').show();
				   $('.usd-new').css('display','none');
				}
				if(price_type == 2)
				{
				   var currency = 'USD';
				   $('.usd-new').show();
				   $('.inr-new').css('display','none');
				}
				$('.currencyid').html('Currency Type ('+currency+')');
			}
			
		});
		
		
	}
	$(document).ready(function(){
       // getPrice(user_type,price_type);
		$('.list_btn').click(function(e){
			e.preventDefault();
			$('.main_nav').slideToggle();
		});

		//$('body').on('mouseover',".product_box .cart_btn", function(){
		$('.product_box .cart_btn').hover(function(){
			$(this).find('.text').show().stop().animate({top:'-11px'}, 300);
		}, function(){
			$(this).find('.text').hide().stop().animate({top:'50%'}, 300);
		});

		//$('body').on('mouseover',".product_box", function(){
		$('.product_box').hover(function(){
			$(this).find('.btns').stop().animate({right:0});
		}, function(){
			$(this).find('.btns').stop().animate({right:'-40'});
		});
		
		$('.main_nav a').click(function(){
			$('.main_nav').slideDown();
		});

		$('#pincode').keypress(function(e){
		if (e.keyCode == 13) {	        
			$("#pinbtn").click();
	    }
		});

		$('body').on('keypress',"#coupon", function(e){
			if (e.keyCode == 13) {	        
				$(".giftcoupon").click();
		    }
		});

		$('body').on('keypress',"#femail", function(e){
			if (e.keyCode == 13) {	        
				forgotpass();
		    }
		});


		$('body').on('keypress',"#lemail, #password", function(e){
			if (e.keyCode == 13) {	        
				login();
		    }
		});

		$('body').on('keypress',"#remail, #rpassword, #rname, #rconfpassword", function(e){
			if (e.keyCode == 13) {	        
				register();
		    }
		});


		$('body').on('click',".awishlist", function(){
			$(this).addClass('active');
			 
			$('.myloader').fadeIn();
			var val_id = $(this).attr('wid');
			var categ = $(this).attr('categ');
			
			
			$.post("<?php echo base_url();?>home/CheckSession",{url:window.location.href,val_id:val_id,categ:categ},function(data){
				if(data == 1 )
				{
					//alert(data);
					$.post("<?php echo base_url();?>home/addwish",{val_id:val_id,categ:categ},function(data){
						$('.myloader').fadeOut();
						if(data == 1)
						{

							$.post("<?php echo base_url();?>home/loadwishlist",function(data){
								$("#wish_popup_wr").attr('align','');
								$("#wish_popup_wr").html(data);
								//$("#wish_popup_wr").mCustomScrollbar();
								$('.view_btn').animate({right:0}, 600);
							});
							
							
							$("#w"+val_id).removeClass('awishlist');
							$("#w"+val_id).addClass('active');
							$("#w"+val_id).attr("title","");
							$("#icon"+val_id).removeClass('icon-like_green');
							
							if($("#icon"+val_id).hasClass( "addto_wish"+val_id ) == false){
								$("#icon"+val_id).addClass('icon-like_green');
							}
							else{
								$("#icon"+val_id).addClass('icon-like_green');
							}

							$(".cart_btn_header").click();
							$("#carttab2").click();
						}
						else if(data == 0)
						{
							window.location.href="<?= base_url().'login';?>";
						}
						
					});
				}
				else
				{
					$('.myloader').fadeOut();
					$('.get_login_popup').click();
					window.location.href="<?= base_url().'login';?>";
				}	
		  });
		});


		$('.get_password').click(function(e){
			e.preventDefault();
			$('.forgot_form').animate({left:0}, 300);
		});
		
		$('.get_register').click(function(e){
			e.preventDefault();
			$('.register_form').animate({left:0}, 300);
		});
		
		$('.get_login').click(function(e){
			e.preventDefault();
			$('.register_form').animate({left:'100%'}, 500);
			$('.forgot_form').animate({left:'100%'}, 500);
		});
		
		$('.close_login').click(function(){
			$('.login_popup_wr').animate({right:'-100%'}, 400);
		});

		$('.get_login_popup').click(function(e){
			e.preventDefault();
			$('.login_popup_wr').animate({right:0}, 400);
		});

		$('.get_register_popup').click(function(e){
			e.preventDefault();
			$('.login_popup_wr').animate({right:0}, 400);
			$('.get_register').click();
		});
		
		$('body').on('click',".close", function(evt){
			$('.cart_popup_wr').animate({right:'-100%'}, 400);
			$('.cart_popup').animate({right:'-100%'}, 300);
			$('.view_btn').animate({right:'-130%'}, 300);
			$('body').removeClass('cart_shown');
			$(this).parent(".alert").remove();
		});

		$('body').on('click',".cart_btn_header", function(e){
			e.preventDefault();
			$('.cart_popup_wr').animate({right:0}, 300);
			$('.cart_popup').animate({right:0}, 600);
			$('.view_btn').animate({right:0}, 600);
			
			$('body').addClass('cart_shown');
		});


		$("body").on("keypress", ".qty", function(e){
			var charCode = (evt.which) ? evt.which : event.keyCode
        			if($.trim($(this).val()) == "" && (charCode == 48 || charCode == 8)){
                		$(this).val(1);
                	}
        	 
        		    if (charCode > 31 && (charCode < 48 || charCode > 57))
        		        return false;
        		    return true;
		});

        $("body").on("keyup", ".qty", function(e){
        	var charCode = (evt.which) ? evt.which : event.keyCode
                	//alert($('#qty').val());
        	if($.trim($(this).val()) == "" && (charCode == 48 || charCode == 8)){
        		$(this).val(1);
        	}
        	else if(parseInt($(this).val()) == 0){
        		$(this).val(1);
        	}
		});

      
	  
	   <?php 
		if(!is_array($UserDetail)){
		?>
		var qurl = '<?php echo base_url();?>cart/updateCart';
		var url = "<?php echo base_url();?>cart/loadsummary";
		<?php }else{?>
		var qurl = '<?php echo base_url();?>cart/updateCartProd';
		var url = "<?php echo base_url();?>cart/loadb2bsummary";
		<?php }?>
        $("body").on("change", ".qty", function(){
        	$('.myloader').fadeIn();
        	var atr=$(this).attr('uid');
        	var qty = $(this).val();
        	if(parseInt(qty) <= 0){
        		qty = 1;
        	}
			$.post(qurl,{rowid:atr,qty:qty},function(data) {
				//alert(data);
				
				$.post(url,function(data1){
					$('.myloader').fadeOut();
					$("#loaddata").html(data1);
					$("#gmsgbox").html(data);
				});
			});	
		});
		
		
		function updateCart()
		{
			$('.myloader').fadeIn();
        	var atr=$(this).attr('uid');
        	var qty = $(this).val();
        	if(parseInt(qty) <= 0){
        		qty = 1;
        	}
			$.post('<?php echo base_url();?>cart/updateCart',{rowid:atr,qty:qty},function(data) {
				//alert(data);
				
				$.post("<?php echo base_url();?>cart/loadsummary",function(data1){
					$('.myloader').fadeOut();
					$("#loaddata").html(data1);
					$("#gmsgbox").html(data);
				});
			});	
		}
		
		
        <?php 
		if(!is_array($UserDetail)){
		?>
		var url = "<?php echo base_url();?>cart/loadsummary";
		<?php }else{?>
		var url = "<?php echo base_url();?>cart/loadb2bsummary";
		<?php }?>
		$("body").on("click", ".giftcoupon", function(e){
			//location.reload();
			$('.myloader').fadeIn();
			var coupon = document.getElementById('coupon');
			$("#gmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
			if($.trim(coupon) == ""){
				$("#gmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Coupon Code.</div>');
			}
			else{
				//alert($("#coupon").val());
				$.post("<?php echo base_url();?>cart/checkcoupon",{coupon:$("#coupon").val()},function(data){
					//alert(data);
					
					var spt = data.split('~');
					if(parseInt(spt[0]) == 0){
						//location.reload();
						//$("#gift_voucherid").html(spt[1]);
						//$('#current_total').html(spt[2]);
						$.post("<?php echo base_url()?>cart/cart_total", function(data){
							$("#carttot").html('<i class=" icon_rs_gray"></i> '+data);
						});
						
						
						$.post(url,function(data){
							
							$('.myloader').fadeOut();
							$("#loaddata").html(data);
						});
						$("#gmsgbox").html('');
					}
					else{
						$('.myloader').fadeOut();
						$("#couponerror").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Coupon Code.</div>');
					}
				});
			}
		});

        <?php 
		if(!is_array($UserDetail)){
		?>
		var rurl = "<?php echo base_url();?>cart/loadsummary";
		<?php }else{?>
		var rurl = "<?php echo base_url();?>cart/loadb2bsummary";
		<?php }?>
		$("body").on("click", ".removecoupon", function(e){
			$('.myloader').fadeIn();
			$('.gift_coupon_added').remove();
			$.post("<?php echo base_url();?>cart/removecoupon",function(data){				
				$.post("<?php echo base_url()?>cart/cart_total", function(data){
					$("#carttot").html('<i class=" icon_rs_gray"></i> '+data);
				}); 
				$.post(rurl,function(data){
					$('.myloader').fadeOut();
					$("#loaddata").html(data);
				});
			});
		});
		
		
		// Tap Content
		$(function(e) {
			$('.cart_tabcontent').hide().filter(':first').show();
			$('#cart_tabs li[data-tabs]').on('click', function () {
				$('#cart_tabs li[data-tabs]').removeClass('active');
				$('.cart_tabcontent').hide();
				var tab = $(this).data('tabs');
				$(this).addClass('active');
				$('#' + tab).fadeIn().show();
			});
		});
		
		//$(".items_wr").mCustomScrollbar();

		

		$('body').on('keypress',".onlynumbers", function(evt){
    		var charCode = (evt.which) ? evt.which : event.keyCode

   				 if(charCode==8)//back space
   					return true;
   				 if (charCode < 48 || charCode > 57)//0-9
   				 {
   					return false;
   				 }

   				 return true;
		});

    	$('body').on('keypress',".floatval", function(event){
    		var charCode = (event.which) ? event.which : event.keyCode
           		 if(charCode ==8 || charCode ==9){

           		 }
           		 else if ((charCode != 46 || $(this).val().indexOf('.') != -1) && (charCode < 48 || charCode > 57)) {
           		    event.preventDefault();
           		  }
		});


		$('#newslttr').click(function(){
            var url = "<?php echo base_url()?>"+"home/newslettersub";
            var nEmail = $("#newltrsemail").val();
            var emailReg =/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            if(nEmail.trim() == ""){

                $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Email ID</div>');

            } else if(!emailReg.test(nEmail)){

                $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Valid Email ID</div>');

            } else{
                $("#emailmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
                $.post(url,{mail: nEmail},function(data,status){

                        if(data.trim() == "0"){

                            $("#newltrsemail").attr('value',"");

                            $("#emailmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Thanks For Subscribing</div>').fadeOut(5000);
                            $("#emailmsgbox").fadeOut(10000);

                        }else if(data.trim() == "1")
                        {

                            $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>This Email Is Already Registered</div>');
                        } else{
                            
                            $("#emailmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Something Went Wrong..!! Please Try Again Later</div>');
                        }





                    });
            }
		});
	});


<?php if(!is_array($UserDetail)){?>
	function remove_row(id){
		$('.myloader').fadeIn();
		$.post("<?php echo base_url();?>cart/removeitem", {id: id}, function(data){
			//location.reload();
			$("."+id).remove();
			if(data == "0"){
				$("#cart_popup_wr").attr('align','center');
				$('#cart_popup_wr').html('<div class="alert alert-danger alert-dismissable" style="width: 80%;">No items in your Cart!</div>');
				$(".cartcnt").html(0);


				<?php 
						if($this->uri->segment(2) == 'payment'){?>
						
							document.location.href = '<?php echo base_url();?>';
						
						<?php }
						?>
			}
			$("#current_total").html(data);
			$("#carttot").html('<i class=" icon_rs_gray"></i> '+data);
			$.post("<?php echo base_url();?>cart/loadsummary",function(data){
				//location.reload();
				$('.myloader').fadeOut();
				$("#loaddata").html(data);
			});
			$.post("<?php echo base_url()?>cart/countcart", function(data){
				//location.reload();
				$("#cart_popup_wr").attr('align','');
				if(parseInt(data)<=0){
					$("#cart_popup_wr").attr('align','center');
				}
				$(".cartcnt").html(data);
			});
		});
		
	}
<?php }else{?>

function remove_row(id){
		$('.myloader').fadeIn();
		$.post("<?php echo base_url();?>cart/removeCartitem", {id: id}, function(data){
			//location.reload();
			$("."+id).remove();
			if(data == "0"){
				$("#cart_popup_wr").attr('align','center');
				$('#cart_popup_wr').html('<div class="alert alert-danger alert-dismissable" style="width: 80%;">No items in your Cart!</div>');
				$(".cartcnt").html(0);


				<?php 
						if($this->uri->segment(2) == 'payment'){?>
						
							document.location.href = '<?php echo base_url();?>';
						
						<?php }
						?>
			}
			$("#current_total").html(data);
			$("#carttot").html('<i class=" icon_rs_gray"></i> '+data);
			$.post("<?php echo base_url();?>cart/loadb2bsummary",function(data){
				//location.reload();
				$('.myloader').fadeOut();
				$("#loaddata").html(data);
			});
			$.post("<?php echo base_url()?>cart/countcart", function(data){
				//location.reload();
				$("#cart_popup_wr").attr('align','');
				if(parseInt(data)<=0){
					$("#cart_popup_wr").attr('align','center');
				}
				$(".cartcnt").html(data);
			});
		});
		
	}

<?php }?>

	function remove_wish(id){
		$('.myloader').fadeIn();
		$(".remove"+id).remove();
		$.post("<?php echo base_url();?>home/removewishlist", {id: id}, function(data){					
			
			$('.myloader').fadeOut();
			if(data == "0"){
				$("#wish_popup_wr").attr('align','center');
				$('#wish_popup_wr').html('<div class="alert alert-danger alert-dismissable" style="width: 80%;">No Wishlist Found!</div>');	

				$("#maincontainer").html('<div align="center" class="no-item"><img src="<?php echo asset_url();?>images/noitem.svg"/><h3>No items in your Wishlist!</h3></div></div>');			
			}
			else{
				$.post("<?php echo base_url();?>home/loadwishlist",function(data){
					$("#wish_popup_wr").attr('align','');
					$("#wish_popup_wr").html(data);
					$('.view_btn').animate({right:0}, 600);
				});

				$.post("<?php echo base_url();?>my_account/wishlistcount",function(data){
					$("#wishcount").html(data+' items in your wishlist');
					//$(".items_wr").mCustomScrollbar();
				});
			}
			location.reload();
			$(".addto_wish"+id).html('<i class="icon icon-like_green"></i> Add to Wishlist');
			$("#w"+id).removeClass('added');
			$("#w"+id).addClass('awishlist');
		
			$("#icon"+id).removeClass('icon-like_green');
			
			if($("#icon"+id).hasClass( "addto_wish"+id ) == false){
				$("#icon"+id).addClass('icon-like_green');
			}
			else{
				$("#icon"+id).addClass('icon-like_green');
			}
			
			
		});
		
	}

function prosize(pid,psid,sid,purl) {
	$(this).addClass('active');
	$.ajax({
			url : "<?= base_url().'home/productsizeview';?>",
			type:"post",
			data:{
				pid :pid,
				psid : psid,
				sid:sid,
				purl :purl
			},
			dataType:"html",
			success:function(data) {
				$("#prosizeappend").html(data);
			}
	});
}
	function add_cart(val,hid){
		//$('.myloader').fadeIn();
		
		$.post("<?php echo base_url()?>cart/addtocart",{type:val, hid:hid}, function(data){
			$('.myloader').fadeOut();
			if(data != "0" && data != "-1"){
				$("#cart_popup_wr").html(data);
				//location.reload();
				$.post("<?php echo base_url()?>cart/countcart", function(data){
					$("#cart_popup_wr").attr('align','');
					if(parseInt(data)<=0){
						$("#cart_popup_wr").attr('align','center');
					}
					$(".cartcnt").html(data);
				}); 
				$.post("<?php echo base_url()?>cart/cart_total", function(data){
					$("#carttot").html('<i class=" icon_rs_gray"></i> '+data);
				}); 
				$(".cart_btn_header").click();
				$("#carttab1").click();
				//$(".items_wr").mCustomScrollbar();
				$(".toast").toast('show');
				$("#showToast").text('ADDED TO CART');			
			}
			
		});
		
	}

	function login(){
		var email = $("#lemail").val();
		var password = $("#password").val();
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;  
		
		$("#lmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
		if($.trim(email) == ""){
			$("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
		}
		else if(!emailReg.test(email)){
			$("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
		}
		else if($.trim(password) == ""){
			$("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Password.</div>');			
		}
		else{
			 $.post('<?php echo base_url();?>home/checklogin',{email:email,password:password},function(data) {			        	 
		                
		                if(data != "2")
		                {
		                    $("#lmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Login successful. Redirecting...</div>');
		                    document.location.href="<?php echo base_url().$this->session->userdata('rurl');?>";
		                    
		                }
		                else{
		                	$("#lmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Credentials.</div>');
		                }
		     });
		}
	}

	function register(){
		var email = $("#remail").val();
		var name = $("#rname").val();
		var phone = $("#phone").val();
		var confpassword = $("#rconfpassword").val();
		var password = $("#rpassword").val();
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;  
		
		$("#rmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
		if($.trim(name) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Name.</div>');
			return false;
		}
		
		else if($.trim(email) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
			return false;
		}
		else if(!emailReg.test(email)){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
			return false;
		}
		else if($.trim(phone) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Phone Number.</div>');
			return false;
		}
		else if(phone.length <10) {
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Phone Number Should be 10 digits.</div>');
			return false;
		}
		
		else if($.trim(password) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Password.</div>');return false;			
		}
		else if($.trim(password).length < 6){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Password must contain atleast 6 characters.</div>');
            return false;			
		}
		else if(password != confpassword){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Password and Confirm Password doesnot match.</div>');
           return false;			
		}
		else{
			$.ajax({
				url :"<?php echo base_url();?>Home/register",
				type :"post",
				data :{
					email:email,
					password:password,
					name:name,
					phone:phone
				},
				success:function(data) {
					if(data == "0")
		                {
		                    $("#rmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Thank You for registering with Gogarbha !</div>');
							
							setTimeout(function(){ document.location.href="<?=base_url()?>login"; },2000);
		                   
		                    
		                }
		                else{
		                	$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Email or Phone Number Already Exists Choose Another.</div>');
		                }
				}
			});
			
		}
	}
	
	function wholesaler_register(){
		var name = $("#name").val();
		var company_name = $("#company_name").val();
		var address = $("#address").val();
		var email = $("#email").val();
		var phone = $("#phone").val();
		var confpassword = $("#rconfpassword").val();
		var password = $("#rpassword").val();
		var doc = $("#doc").val();
		var pan_no = $("#pan_no").val();
		var gst = $("#gst").val();
		var country = $("#country").val();
		
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;  
		
		
		//alert(fname);
		$("#rmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
		if($.trim(name) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Name.</div>');
			return false;
		}
		if($.trim(company_name) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Company Name.</div>');
			return false;
		}
		if($.trim(address) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Company Address.</div>');
			return false;
		}
		else if($.trim(email) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
			return false;
		}
		else if(!emailReg.test(email)){
		 $("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
			return false;
		}
		if($.trim(phone) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Phone Number.</div>');
			return false;
		}
		if($.trim(doc) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Upload Document.</div>');
			return false;
		}
		if($.trim(pan_no) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter PAN Number.</div>');
			return false;
		}
		if($.trim(gst) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter GST Number.</div>');
			return false;
		}
		if($.trim(country) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Country Name.</div>');
			return false;
		}
		else if($.trim(password) == ""){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Password.</div>');return false;			
		}
		else if($.trim(password).length < 6){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Password must contain atleast 6 characters.</div>');
            return false;			
		}
		else if(password != confpassword){
			$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Password and Confirm Password doesnot match.</div>');	
           return false;			
		}
		
		$('#whform').submit();
		/*else{
			 $.post('<?php echo base_url();?>home/wholesaler_register',{name:name,company_name:company_name,address:address,email:email,phone:phone,pan_no:pan_no,gst:gst,country:country,password:password},function(data) {			        	 
			if(data == "0")
			{
				$("#rmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Thank You for registeration Noviley confirmation your email id!</div>');
				
				
				setTimeout(function(){ document.location.href="<?=base_url()?>home"; }, 3000);
				
				
			}
			else{
				$("#rmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Already registered.</div>');
			}
		     });
		}*/
		return true;	
	}

	function forgotpass(){
		var email = $("#femail").val();
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;  
		
		$("#fmsgbox").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
		if($.trim(email) == ""){
			$("#fmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Email ID.</div>');
		}
		else if(!emailReg.test(email)){
			$("#fmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Valid Email ID.</div>');
		}
		else{
			 $.post('<?php echo base_url();?>home/forgotPass',{email:email},function(data) {			        	 
		                
					if(parseInt(data) == 1)
					{
	                    $("#fmsgbox").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Invalid Email ID.</div>');
	                    
	                }
	                else{
	                	$("#fmsgbox").html('<div class="alert alert-success alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Check your Email for the credentials.</div>');
	                	$("#femail").val('');
	                }
		     });
		}
	}

	

</script>

<!-- <script src="//code.jquery.com/jquery-1.9.1.js"></script>-->
<link rel="stylesheet" href="<?php echo asset_url()?>css/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script> 
<script type="text/javascript">

//$ = jQuery.noConflict();

function monkeyPatchAutocomplete() {
	 
    var oldFn = $.ui.autocomplete.prototype._renderItem;

    $.ui.autocomplete.prototype._renderItem = function( ul, item) {

        var t = String(item.value).replace(
          new RegExp(this.term, "gi"),
          "<b>$&</b>");

        return $( "<li></li>" )
            .data( "item.autocomplete", item )
            .append( "<a>" + t + " </a>" )
            .appendTo( ul );
    };
}

$(document).ready(function(){

	monkeyPatchAutocomplete();
	var str = '';
	$('#searchbar').autocomplete({
	source:'<?php echo base_url()?>search/search_auto?'+str, 
	minLength:2,
	select: function (event, ui) {
		
		if(parseInt(ui.item.id) != 0){	
			
		window.location.href='<?php echo base_url()?>search?searchbar='+encodeURIComponent(ui.item.value)+'&id='+ui.item.id+str;
		}
		else{
			$(this).removeClass('working');
			ui.item.value = $('#searchbar').val();
		}
    },
    search  : function(){$(this).addClass('working');},
    open    : function(){$(this).removeClass('working');}
	});

});

	function checkempty(){
		
		var val = document.getElementById("searchbar").value;
		if($.trim(val) == ""){
			$('#filterform').attr("onsubmit","return false;");
			$("#searchbar").focus();
		}
		else{
			$('#filterform').attr("onsubmit","return true;");
			$('#filterform').submit();
		}
	}

	function searchproducts(e){
		if (e.keyCode == 13) {
	        
	        checkempty();
	    }
	}
</script>