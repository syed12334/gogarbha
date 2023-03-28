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
    <link rel="canonical" href="<?php echo base_url().'gifts';?>" />


<link rel="alternate" hreflang="en" href="<?php echo base_url().'gifts';?>"/>



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common; ?>
</head>

<body class="loginpage">


   
    <?php echo $header; ?>

    <div class="breadbg">
        <div class="container">
            <div class="row">
                <ul class="breadcrumb">
                    <li><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Gifts</a></li>
                </ul>
            </div>
        </div>
    </div>




    <!-- <PAGE CONTENT> ================================= -->











    <div id="account-register" class="container acpage">
        <div class="row">
            <div id="content" class="col-sm-8 col-md-9 col-xs-12 colright">
                <div class="infobg">
                  
					
<?php
    if($this->session->flashdata('success')) {
        echo $this->session->flashdata('success');
    }
?>
                    <form class="form form-horizontal" action="<?= base_url().'gifts/giftregister' ?>" method="post" >
                        <fieldset id="account">
                            
                            <div id="rmsgbox"></div>
                       <div class="form-group required">
                                <label class="col-sm-3 col-xs-12 control-label"> Name</label>
                                <div class="col-sm-9 col-xs-12">
                                    <input type="text" name="rname" id="rname" class="form-control" required>
                                </div>
                            </div>
							 
                            <div class="form-group required">
                                <label class="col-sm-3 col-xs-12 control-label">Email - Id</label>
                                <div class="col-sm-9 col-xs-12">
                                    <input type="text" name="remail" id="remail" class="form-control" required>
                                </div>
                            </div>
							<div class="form-group required">
                                <label class="col-sm-3 col-xs-12 control-label">Phone Number</label>
                                <div class="col-sm-9 col-xs-12">
                                    <input type="text" name="phone" id="phone" class="form-control onlynumbers" maxlength="10" required>
                                </div>
                            </div>
							
							<div class="form-group required">
                                <label class="col-sm-3 col-xs-12 control-label">Order Details</label>
                                <div class="col-sm-9 col-xs-12">
                                    <textarea  name="order" id="order" class="form-control" ></textarea>
                                </div>
                            </div>
							
                             <div id="msgbox1"></div>
                              <!--<button type="submit"  class="btn btn-primary">Submit</button>-->
							  <div class="form-group">
                                <label class="col-sm-3 col-xs-12 control-label">
                                  <button type="submit" class="btn btn-primary">Submit</button></label>
                                <div class="col-sm-9 col-xs-12">
                                </div>
                            </div>
                            

                    </form>
                </div>
            </div>
           
        </div>
    </div>


    <?php echo $footer; ?>


</body>
<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url() ?>js/jquery-1.7.1.js" type="text/javascript"></script>
<?php echo $jsFile; ?>
<script>
  function validate1() {
				var name = $("#name").val();
				var phone = $("#phone").val();
				var address1 = $("#address1").val();
				
				var email = $("#email").val();
				
				var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				//alert(name);
				$("#msgbox1").html('<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>');
				if ($.trim(name) == "") {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Name.</div>');
					return false;
				} 
				else if ($.trim(email) == "") {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Email ID.</div>');
					return false;
				} 
				else if (!emailReg.test(email)) {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Valid Email ID.</div>');
					return false;
				} 
				else if ($.trim(address1) == "") {
				  $("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Address Line 1.</div>');
				   return false;
				}  
				else if ($.trim(shipphone) == "") {
					$("#msgbox1").html('<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Phone No.</div>');
					return false;
				}
				
				$("#msgbox1").html('');
				
				return true;
				
		}

</script>


</body>

</html>