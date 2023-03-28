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

<style>
b, strong {
    font-weight: 600 !important;
}
</style>
  

</head>




<?php echo $header; ?>
<!-- END </HEADER> -->


<div class="breadbg">
    <div class="container">
        <div class="row">
            <ul class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="fa fa-home"></i></a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>
    </div>
</div>

<!-- <PAGE CONTENT> ================================= -->
<div class="page_content">


    <div class="container">
        <h1 class="heading text-center"><span>Contact Us</span></h1>
        <div class="row">

            <div class="col-md-4 col-xs-12 infocnt">
                <legend>Our Location</legend>


                <div class="">
                    <div class="pull-left"><i class="fa fa-home"></i></div>
                    <div class="contsp"><?php echo trim($info[0]->address); ?></div>

                    <div class="pull-left"><i class="fa fa-phone"></i></div>
                    <div class="contsp"> <?php echo $info[0]->phone ?></div>

                    <div class="pull-left"><i class="fa fa-envelope-o"></i></div>
                    <div class="contsp"> <a
                            href="mailto:<?php echo $info[0]->email ?>"><?php echo $info[0]->email ?></a></div>

                </div>




            </div>
            <div class="col-md-8 col-xs-12">

                
                <form class="contact_form form-horizontal" id="contactartii">
                    <fieldset>
                        <legend>Contact Form</legend>

                        <div class="form-group required">
                            <label class="col-sm-3 control-label">Your Name</label>
                            <div class="col-sm-9">
                                <input type="text" autofocus="" placeholder="Name" name="name" id="name" value=""
                                    class="form-control" required="required" onkeypress='return ((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || (event.charCode == 32))'>
                            </div>
                        </div>

                        <div class="form-group required">
                            <label class="col-sm-3 control-label">E-Mail Address</label>
                            <div class="col-sm-9">
                                <input type="text" name="email" value="" id="email" class="form-control"
                                    required="required">
                            </div>
                        </div>

                        <div class="form-group required">
                            <label class="col-sm-3 control-label">Phone No</label>
                            <div class="col-sm-9">
                                <input type="tel" name="mobile" value="" id="mobile" class="form-control onlynumbers" required="required" maxlength="10">
                            </div>
                        </div>

                        <div class="form-group required">
                            <label class="col-sm-3 control-label">Message</label>
                            <div class="col-sm-9">
                                <textarea value="" name="message" id="message" class="form-control" rows="4" cols="78"
                                    required="required"></textarea>
                            </div>
                        </div>



                        <div class="clearfix">
                            <div id="msgbox"></div>
                        </div>

                         


                        <div class="buttons">
                            <div class="pull-right">
                                <input class="btn btn-primary"  id="buttonatp" type="submit" value="Submit">
                            </div>
                        </div>


                    </fieldset>
                </form>
            </div>



        </div>
      <!--  <div class="row">
            <h3>Find Us</h3>
            <div class="row">
                <iframe src="<?php echo $info[0]->iframe; ?>" width="100%" height="450" frameborder="0"
                    style="border:0;  margin-bottom:25px;">
                </iframe>
            </div>
        </div>-->

    </div>

</div>
<!-- END </ PAGE CONTENT>  -->

<?php echo $footer; ?>
<!-- END </FOOTER>  -->

</body>
<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url() ?>js/jquery-1.7.1.js" type="text/javascript"></script>
<script
    src="<?php echo trim(base_url()) . "artii_manage/assets/"; ?>plugins/validationengine/js/jquery.validationEngine.js">
</script>

<script
    src="<?php echo trim(base_url()) . "artii_manage/assets/"; ?>plugins/validationengine/js/languages/jquery.validationEngine-en.js">
</script>

<script
    src="<?php echo trim(base_url()) . "artii_manage/assets/"; ?>plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js">
</script>

<?php echo $jsFile; ?>


<script type="text/javascript">
$(document).ready(function() {

    // restrict phone input
    $('#mobile').keypress(function(key) {
        if (key.charCode == 0) return true;
        if (key.charCode < 48 || key.charCode > 57) return false;
    });

    // restrict surname input
    $('#name').keypress(function(key) {

        if (key.charCode == 0 || key.charCode == 32) return true;
        if ((key.charCode < 97 || key.charCode > 122) && (key.charCode < 65 || key.charCode > 90) && (
                key.charCode != 45)) return false;
    });

});
</script>

<script>
$("#buttonatp").click(function() {

    var name = $("#name").val();
    var email = $("#email").val();
    var mobile = $("#mobile").val();


    var message = $("#message").val();

    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

    if (name == "") {
        $("#msgbox").html(
            '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Enter Name </strong> </div>'
        );
        $("#name").focus();
        return false;
    } else if (email == "") {
        $("#msgbox").html(
            '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Enter Email </strong> </div>'
        );
        $("#email").focus();
        return false;
    } else if (!emailReg.test(email)) {
        $("#msgbox").html(
            '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Enter Valid Email </strong> </div>'
        );
        $("#email").focus();
        return false;
    } else if (mobile == "") {
        $("#msgbox").html(
            '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Enter Mobile Number </strong> </div>'
        );
        $("#mobile").focus();
        return false;
    } else if (mobile.length < 10) {
        $("#msgbox").html(
            '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Enter 10 Digit Number</strong> </div>'
        );
        $("#mobile").focus();
        return false;
    } else if (message == "") {
        $("#msgbox").html(
            '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Enter Message</strong> </div>'
        );
        $("#message").focus();
        return false;
    }
    var frmdata = $("#contactartii").serialize();
    var urll = "<?php echo base_url(); ?>" + "contactus/mail";
    $("#msgbox").html(
        '<div id = "msg" class="alert alert-success alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Please Wait...</strong> </div>'
    );
    $.ajax({
        url: urll,
        type: "POST",
        data: frmdata,
        success: function(data) {

            if (data == "1") {
                $("#msgbox").html(
                    '<div id = "msg" class="alert alert-success alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Message Sent Successfully</strong> </div>'
                );
                $("#name").val("");
                $("#email").val("");
                $("#mobile").val("");
                $("#message").val("");
            } else {
                $("#msgbox").html(
                    '<div id = "msg" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert">x</button><strong>Failed To Send Message</strong> </div>'
                );
            }
        }

    });
});
</script>

</body>

</html>