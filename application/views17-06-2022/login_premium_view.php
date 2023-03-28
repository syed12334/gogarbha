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

<body class="loginpage">


    <?php
    require_once 'Google/src/apiClient.php';
    require_once 'Google/src/contrib/apiPlusService.php';
    $client = new apiClient();
    $client->setApplicationName("Artiiplants");

    //*********** Replace with Your API Credentials **************
    $client->setClientId('827094241954-clrcq6dtma816jeonh978638nbldbbav.apps.googleusercontent.com');
    $client->setClientSecret('8P6sc7qXnjQLLiRDB6BHY1pD');
    $client->setRedirectUri(base_url() . 'home/google_login');
    $client->setApprovalPrompt("auto");
    $client->setDeveloperKey('composed-field-664');
    //************************************************************

    $client->setScopes(array('http://www.googleapis.com/auth/plus.profile.emails.read', ' http://www.googleapis.com/auth/plus.login'));
    $client->setAccesstype('online');
    $authUrl = $client->createAuthUrl();

    ?>

    <?php echo $header; ?>

    <div class="breadbg">
        <div class="container">
            <div class="row">
                <ul class="breadcrumb">
                    <li><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Premium Login</a></li>
                </ul>
            </div>
        </div>
    </div>


    <!-- <PAGE CONTENT> ================================= -->




    <div id="account-login" class="container acpage">
        <div class="row">
            <div id="content" class="col-sm-8 col-md-9 col-xs-12 colright">

                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <div class="well">
                            <h1>New Customer</h1>
                            <p><strong>Register Account</strong></p>
                            <p>By creating an account you will be able to shop faster, be up to date on an order's
                                status, and keep track of the orders you have previously made.</p>
                                <?php /*  <a href="<?php echo base_url()?>wholesaler" class="btn btn-primary">Premium Register</a> */?>
							<a href="<?php echo base_url()?>register" class="btn btn-primary">Register</a>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <div class="well">
                            <h1>Returning Customer</h1>
                            <p><strong>I am a returning customer</strong></p>



                            <form class="form form-horizontal" onsubmit="return false;">
                                <div id="lmsgbox"></div>
                                <div class="form-group">
                                    <label class="control-label" for="input-email">E-Mail Address</label>
                                    <input type="text" name="lemail" id="lemail" placeholder="E-Mail Address" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-password">Password</label>
                                    <input type="password" name="password" id="password" placeholder="Password" class="form-control">
                                    <div class="text-right"><a href="<?php echo base_url()?>forgot">Forgotten Password</a></div>
                                </div>
                                <input type="submit" value="Login" onclick="login();" class="btn btn-primary">

                                <a href="<?php echo base_url() ?>home/facebook_login"><img src="<?php echo asset_url(); ?>images/facebook.png"  width="35"></a>
                                <a href="<?php echo $authUrl ?>"><img src="<?php echo asset_url(); ?>images/g.png"  width="35"></a>


                            </form>


                        </div>
                    </div>
                </div>
            </div>
            <aside id="column-right" class="col-sm-4 col-md-3 col-xs-12 hidden-xs">
                <div class="list-group accolumn">


                    <h3><svg class="" width="20px" height="20px">
                            <use xlink:href="#acluser"></use>
                        </svg>ACCOUNT SETTINGS</h3>
                    <a href="<?php echo base_url()?>login" class="list-group-item">Sign In</a>
                    <!--<a href="<?php echo base_url()?>register" class="list-group-item">Register</a>-->
                    <a href="<?php echo base_url()?>forgot" class="list-group-item">Forgot Password?</a>

                </div>
            </aside>
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

</body>

</html>