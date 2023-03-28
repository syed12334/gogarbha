﻿<!DOCTYPE html>

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

    <script type="text/javascript" src="<?php echo asset_url(); ?>js/jquery.min.js"></script>

    <?php echo $updatelogin; ?>



</head>

<!-- END  HEAD-->

<!-- BEGIN BODY-->

<body class="padTop53 ">



    <div id="main-wrapper">

        <!-- HEADER SECTION -->
        <?php echo $header; ?>
        <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
        <?php echo $left; ?>
        <!--END MENU SECTION -->


        <!--PAGE CONTENT -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 col-12 align-self-center">
                    <h3 class="text-themecolor mb-0">Client</h3>
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home Page</a></li>
                        <li class="breadcrumb-item active">Client</li>
                    </ol>
                </div>
                <div class="col-md-7 col-12 align-self-center d-none d-md-block">

                </div>
            </div>
            <div class="container-fluid" id="content">

                <div class="inner" style="min-height:1200px;">

                    <div class="row">

                        <div class="col-lg-12">

                            <?php if ($type == 'edit') : ?>


                                <div class="col-lg-12">

                                    <div class="card">

                                        <div class="card-header">
                                            <h5>Edit Client</h5>
                                        </div>

                                        <div id="collapseOne" class="card-body">

                                            <form action="<?php echo base_url() . 'homepage/client_edit'; ?>" class="form-horizontal form-material row" id="brand-validate" onsubmit="return validate();" method="post" enctype="multipart/form-data">

                                                <input type="hidden" id="aid" name="aid" class="form-control" required value="<?php echo $info[0]->id; ?>" />
                                                <div class="alert alert-info alert-dismissable col-md-12"><strong>Note:</strong> Please add image of size 189 x 76 px</div>

                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Order no<font style="color: red;">*</font></label>
                                                    <input type="text" id="orderno" name="orderno" class="form-control onlynumbers" required maxlength="3" value="<?php echo $info[0]->order_no; ?>" />
                                                </div>


                                                <?php $cat = $this->master_db->getcontent2('clientscategory', '', '', '0'); ?>

                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Client Category<font style="color: red;">*</font></label>
                                                    <select id="demo" name="ctgry" class="form-control" onchange="change(this.value);">
                                                        <?php
                                                        if (is_array($cat)) {


                                                            foreach ($cat as $c) {
                                                        ?>
                                                                <option <?php if ($c->name == $info[0]->category) echo "selected = 'selected' " ?> value="<?php echo $c->name ?>"><?php echo $c->name ?></option>
                                                        <?php }
                                                        } ?>
                                                    </select>
                                                </div>



                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Client Name<font style="color: red;">*</font></label>
                                                    <input type="text" id="name" name="name" class="form-control" required maxlength="35" value="<?php echo $info[0]->name; ?>" />
                                                </div>







                                                <div class="form-group col-md-6" id="imgh">
                                                    <label class="control-label">Image Upload</label>
                                                    <div class="fileupload fileupload-exists" data-provides="fileupload">
                                                        <div class="fileupload-preview thumbnail" style="width: 200px; height: 150px;"><img src="<?php echo str_replace('/artii_manage', '', base_url()) . $info[0]->client_image; ?>"></div>
                                                        <div>

                                                            <span class="btn btn-file btn-info"><span class="fileupload-new selimage" uid="1">Select image</span><span class="fileupload-exists">Change</span>
                                                                <input type="file" name="imag" id="imag" /></span>

                                                            <a href="#" class="btn btn-primary fileupload-exists remimage" uid="" data-dismiss="fileupload">Remove</a>
                                                            <input type="hidden" id="imgstat" name="imgstat" value="1">
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="form-actions no-margin-bottom  col-md-12" style="text-align:center;">
                                                    <a href="<?php echo base_url() . 'homepage/client'; ?>" class="btn btn-primary"><i class="mdi mdi-arrow-left "></i> Back</a>&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info"><i class="mdi mdi-check "></i> Save Changes</button>
                                                </div>

                                                <div id="msgbox" class=" col-md-12"></div>

                                            </form>

                                        </div>

                                    </div>

                                </div>


                            <?php else : ?>

                                <div class="col-lg-12">

                                    <div class="card">

                                        <div class="card-header">
                                            <h5>Add New Client</h5>
                                        </div>

                                        <div id="collapseOne" class="card-body">

                                            <form action="<?php echo base_url() . 'homepage/client_save'; ?>" class="form-horizontal form-material row" id="brand-validate" method="post" enctype="multipart/form-data">

                                                <div class="col-md-12">
                                                    <div class="alert alert-info alert-dismissable"><strong>Note:</strong> Please add image of size 189 x 76 px</div>
                                                </div>

                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Order no<font style="color: red;">*</font></label>
                                                    <input type="text" id="orderno" name="orderno" class="form-control onlynumbers" maxlength="3" required value="1" />
                                                </div>



                                                <?php $cat = $this->master_db->getcontent2('clientscategory', '', '', '0'); ?>

                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Client Category<font style="color: red;">*</font></label>
                                                    <select id="demo" name="ctgry" class="form-control" required>
                                                        <option value="">--Select--</option>
                                                        <?php
                                                        if (is_array($cat)) {
                                                            echo "";

                                                            foreach ($cat as $c) {
                                                        ?>
                                                                <option value="<?php echo $c->name ?>"><?php echo $c->name ?></option>
                                                        <?php }
                                                        } ?>
                                                    </select>
                                                </div>


                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Client Name<font style="color: red;">*</font></label>
                                                    <input type="text" id="name" name="name" class="form-control" required maxlength="35" />
                                                </div>

                                                <div class="form-group col-md-6">
                                                    <label class="control-label">Client Image <font style="color: red;">*</font></label>
                                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                                        <div class="fileupload-preview thumbnail" style="width: 200px; height: 150px;"></div>
                                                        <div>
                                                            <span class="btn btn-file btn-info"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span><input type="file" name="imag" id="imag" required /></span>
                                                            <a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">Remove</a>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="form-actions no-margin-bottom  col-md-12" style="text-align:center;">
                                                    <a href="<?php echo base_url() . 'homepage/client'; ?>" class="btn btn-primary"><i class="mdi mdi-arrow-left "></i> Back</a>&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info"><i class="mdi mdi-check "></i> Save Changes</button>
                                                </div>
                                        </div>

                                        </form>
                                    </div>
                                </div>

                            <?php endif; ?>
                        </div>
                    </div>
                </div>

            </div>

            <!--END PAGE CONTENT -->


        </div>


    </div>
    <!--END MAIN WRAPPER -->



    <!-- FOOTER -->

    <div id="footer">
        <p>&copy; <?php echo fottertitle; ?></p>
    </div>

    <!--END FOOTER -->

    <!-- GLOBAL SCRIPTS -->

    <script src="<?php echo asset_url(); ?>plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?php echo asset_url(); ?>plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    <!-- END GLOBAL SCRIPTS -->


    <?php echo $jsfile; ?>


    <script src="<?php echo asset_url(); ?>plugins/validationengine/js/jquery.validationEngine.js"></script>
    <script src="<?php echo asset_url(); ?>plugins/validationengine/js/languages/jquery.validationEngine-en.js"></script>
    <script src="<?php echo asset_url(); ?>plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"></script>
    <script src="<?php echo asset_url(); ?>plugins/jasny/js/bootstrap-fileupload.js"></script>

    <script src="<?php echo asset_url(); ?>libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?php echo asset_url(); ?>libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="<?php echo asset_url(); ?>libs/bootstrap/dist/js/bootstrap.min.js"></script>
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
    <!-- Chart JS -->
    <script src="<?php echo asset_url(); ?>dist/js/pages/dashboards/dashboard1.js"></script>

    <script src="<?php echo asset_url(); ?>libs/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo asset_url(); ?>dist/js/pages/datatable/custom-datatable.js"></script>
    <script src="<?php echo asset_url(); ?>dist/js/pages/datatable/datatable-basic.init.js"></script>


    <script>
        $(function() {
            $('#brand-validate').validate({
                rules: {
                    title: "required",
                },

                errorClass: 'help-block',
                errorElement: 'span',
                highlight: function(element, errorClass, validClass) {

                    $(element).parents('.form-group').addClass('has-error');

                },

                unhighlight: function(element, errorClass, validClass) {

                    $(element).parents('.form-group').removeClass('has-error');

                }

            });

        });
    </script>


    <script type="text/javascript">
        var empty_string = /^\s*$/;

        function validate() { //alert(0);
            if ($("#brand-validate").valid()) {
                $("#alert").remove();
                $("#msgbox").append("<div class='alert' id='alert'></div>");
                $("#alert").removeClass().addClass('alert').html('Validating....').fadeIn(1000);
                var imag = document.getElementById('imag').value;
                var imgstat = document.getElementById('imgstat').value;
                //alert(imgstat);		
                var rebatestr = "";
                //category
                if (empty_string.test(imag) && imgstat == "0") {

                    $("#alert").html("<button type='button' class='close' data-dismiss='alert'>&times;</button>Select Client Image").addClass('alert-danger').fadeTo(900, 1);
                    return false;
                } else {
                    $("#alert").html("<button type='button' class='close' data-dismiss='alert'>&times;</button>Please Wait Processing").addClass('alert-success').fadeTo(900, 1);
                    return true;
                }
            }
        }
    </script>

</body>

<!-- END BODY-->



</html>