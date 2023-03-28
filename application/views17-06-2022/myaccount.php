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
<link rel="canonical" href="<?php echo base_url().'my_account';?>" />
<link rel="alternate" hreflang="en" href="<?php echo base_url().'my_account';?>"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->
    <?php echo $common;?>
    <style type="text/css">
    .values {
        border-bottom: 1px solid #ccc;
        border-radius: 0 10px;
        padding: 10px 10px 6px 50px;
    }
    </style>
</head>

<body class="bg-dark1">
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

                    <li><span>My Profile</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->

            </div><!-- /.container -->
        </section><!-- /.page-header -->

        <section class="service-details myaccount">
            <div class="container">
                <div class="row">

                    <div class="col-lg-9">

                    <?php 
                    
                            if(count($users)){
                                //print_r($UserDetail);exit;
                                $det = $users;           
                                $id = $det[0]->id;
                                $name=$det[0]->name;
                                $sname=$det[0]->sname;
                                $email=$det[0]->emailid;
                                $phone=$det[0]->phone;
                                $address1=$det[0]->address1;
                                $address2=$det[0]->address2;
                                $country=$det[0]->country;
                                $town=$det[0]->town;
                                $state=$det[0]->state;
                                $town_name=$det[0]->town_name;
                                $state_name=$det[0]->state_name;
                                $zip = $det[0]->zip;
                            }
                        ?>
                         <?php echo $this->session->flashdata('message');?>
                        <form action="" class="profile-bg edit-form">
                         <h4>Profile <span class="edit"><i class="fas fa-user-edit"></i></span></h4>   
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" class="form-control" value="<?php echo $name?>" readonly />
                            </div>
                            <div class="form-group">
                                <label for="">Billing Address Line 1</label>
                                <input type="text" class="form-control" value="<?php echo $address1?>" readonly />
                            </div>
                            <div class="form-group">
                                <label for="">Billing Address Line 2</label>
                                <input type="text" class="form-control" value="<?php echo $address2?>" readonly />
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" class="form-control" name = "email" id="email" value="<?php echo $email?>" readonly />
                            </div>
                             <div class="form-group required">
                                <label class="control-label">Phone</label>
                                 
                                    <input type="text" class="onlynumbers form-control" name="phone" id="phone"
                                            value="<?php echo $phone?>" maxlength="10">
                                 
                            </div>
                            <div class="form-group">
                                <label for="">Password</label>
                                <input type="password" class="form-control" value="123456" readonly />
                            </div>


                        </form>


                        <form action="<?php echo base_url()?>my_account/save_details" method="post"
                            name="form1" id="form1" class="profile-bg edit-close-form">
                           <h4>Edit Profile <span class="edit-close"><i class="far fa-times-circle"></i></span></h4> 
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" class="form-control" name="name" id="name"
                                        value="<?php echo $name?>"/>
                            </div>
                            <div class="form-group">
                                <label for="">Billing Address Line 1</label>
                                <input type="text" class="form-control" name="address1" id="address1" value="<?php echo $address1?>"
                                        maxlength="100"/>
                            </div>
                            <div class="form-group">
                                <label for="">Billing Address Line 2</label>
                                <input type="text" class="form-control" name="address2" id="address2" value="<?php echo $address2?>"
                                        maxlength="100"/>
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" class="form-control" id="email" name = "email" value="<?php echo $email?>"/>
                            </div>
                             <div class="form-group required">
                                <label class="control-label">Phone</label>
                                 
                                    <input type="text" class="onlynumbers form-control" name="phone" id="phone"
                                            value="<?php echo $phone?>" maxlength="10">
                                 
                            </div>
                            <div class="form-group">
                                <label for="">Password</label>
                                <input type="text" name="passwrd" class="form-control" id="passwrd" value="........" maxlength="30"/>
                            </div>

                            <div class="form-group">
                                <button class="btn btn-info">Save Changes</button>
                            </div>
                            <div id="acctmsgbox1"></div>
                        </form>





                    </div><!-- /.col-lg-8 -->


                    <div class="col-lg-3">
                        <div class="service-sidebar">
                            <div class="service-sidebar__links pb-3 pt-3">
                                <ul>
                                    <li><a href="<?= base_url().'my_account';?>" class="active"><i class="fas fa-user"></i> My Profile</a></li>
                                    <li><a href="<?= base_url().'my_account/my_wishlist';?>" ><i class="fas fa-heart"></i> My
                                            Wishlist</a></li>
                                    <li><a href="<?= base_url().'my_account/my_orders';?>"><i class="fas fa-boxes"></i> My Orders</a></li>
                                    <li><a href="<?= base_url().'home/logout';?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                                </ul>
                            </div><!-- /.service-sidebar__links -->

                        </div><!-- /.service-sidebar -->
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.service-details -->
</div>

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
    $(document).ready(function() {
        $('#new').filter(function(){
  return this.href === location.href;
}).addClass('active');
    });
$(function(e) {
    $("#form1").submit(function() {
        var name = $("#name").val();
        var phone = $("#phone").val();
        var email = $("#email").val();
        var address1 = $("#address1").val();
        var town = $("#city").val();
        var zip = $("#pincode").val();
        <?php if($det[0]->login_type == 'general'){?>
        var passwrd = $("#passwrd").val();
        <?php }?>

        $("#acctmsgbox1").html(
            '<div class="alert alert-warning alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please wait...</div>'
        );
        if ($.trim(name) == "") {
            $("#acctmsgbox1").html(
                '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Name.</div>'
            );
            return false;
        } else if ($.trim(address1) == "") {
            $("#acctmsgbox1").html(
                '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Enter Address Line 1.</div>'
            );
            return false;
        }  else if ($.trim(phone) == "") {
            $("#acctmsgbox1").html(
                '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Phone No.</div>'
            );
            return false;
        }
        <?php if($det[0]->login_type == 'general'){?>
        else if ($.trim(passwrd) == "") {
            $("#acctmsgbox1").html(
                '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Password</div>'
            );
            return false;
        } else if ($.trim(passwrd) < 6) {
            $("#acctmsgbox1").html(
                '<div class="alert alert-danger alert-dismissable"><button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>Please Enter Password atleast 6 characters</div>'
            );
            return false;
        }
        <?php }?>
        else {
            return true;
        }
    });
});

        $(document).ready(
            function () {
                $(".edit-close-form").hide();
                $(".edit").click(function () {
                    $(".edit-form").hide();
                    $(".edit-close-form").show();
                    
                });

                $(".edit-close").click(function () {
                    $(".edit-close-form").hide();
                    $(".edit-form").show();
                });

            });
</script>

</body>

</html>