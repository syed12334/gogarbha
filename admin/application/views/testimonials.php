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
    <?php echo $updatelogin; ?>
    <?php echo $popcss; ?>
    <!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>-->
	<!--<link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/flexigrid.css" />-->
    <link href="<?=asset_url()?>css/dataTables.bootstrap4.css" rel="stylesheet">
	<link href="<?=asset_url()?>css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?=asset_url()?>/css/select2.min.css">
    <link rel="stylesheet" href="<?php echo asset_url()?>css/jquery-ui.css">    <!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> -->


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
                    <h3 class="text-themecolor mb-0">Testimonials</h3>
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home Page</a></li>
                        <li class="breadcrumb-item active">Testimonials</li>
                    </ol>
                </div>
                <div class="col-md-7 col-12 align-self-center d-none d-md-block">
					<div class="d-flex mt-2 justify-content-end">
						<a href="<?= base_url() ?>about/stories_add" class="btn btn-info"><i class="mdi mdi-plus"></i> ADD Testimonials</a>
					</div>
                </div>
            </div>
            <div class="container-fluid" id="content">

                <div class="inner" style="min-height:1200px;">
                    <div class="row">
                        <div class="col-lg-12">                            
                            <?php echo $this->session->flashdata('message'); ?>


							<!--- <table id="flex1"></table>-->
							<div class="card scroll-sidebar">
								<div class="card-body">
									<div class="table-responsive">
										<div class="box-body" id="DataTableValue">
											<?php echo $testimonials; ?>
										</div>

									</div>
								</div>
							</div>  

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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">

    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

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


    <script type="text/javascript" src="<?php echo asset_url(); ?>flexigrid.js"></script>
    <style type="text/css">
        .showhide {
            cursor: pointer;
            float: right;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function() {


            var base_url = '<?php echo base_url(); ?>';
            //alert(base_url+'teksadmin/banner_table');
            $("#flex1").flexigrid({
                url: '<?php echo base_url(); ?>about/stories_table',
                dataType: 'json',
                colModel: [{
                        display: 'Sl.No.',
                        width: 40,
                        sortable: false,
                        align: 'center'
                    },
                    {
                        display: 'Order No.',
                        name: 'order_no',
                        width: 100,
                        sortable: false,
                        align: 'center'
                    },
                    {
                        display: 'Name',
                        name: 'name',
                        width: 150,
                        sortable: false,
                        align: 'center'
                    },
                    {
                        display: 'Location',
                        name: 'location',
                        width: 100,
                        sortable: false,
                        align: 'center'
                    },
                    {
                        display: 'Image',
                        width: 150,
                        sortable: false,
                        align: 'center'
                    },
                    {
                        display: 'Status',
                        name: 'status',
                        width: 120,
                        sortable: true,
                        align: 'center'
                    },
                    {
                        display: 'Action',
                        width: 200,
                        align: 'center'
                    }
                ],
                buttons: [{
                        name: 'Add',
                        bclass: 'add',
                        onpress: test
                    },
                    {
                        separator: true
                    }
                ],
                onError: function(data) {
                    for (var i in data) {
                        alert("Header: " + i + "\nMessage: " + data[i]);
                    }
                },
                success: function(data) {
                    for (var i in data) {
                        alert("Header: " + i + "\nMessage: " + data[i]);
                    }
                },

                sortname: "order_no",
                sortorder: "asc",
                usepager: true,
                useRp: true,
                rp: 10,
                showTableToggleBtn: false,
                width: 1000,
                height: 255
            });
        });

        function test(com, grid) {


            if (com == 'Add') {
                var base_url = '<?php echo base_url(); ?>';
                document.location.href = base_url + "about/stories_add";
            }
        }

        function edit(id) {
            var base_url = '<?php echo base_url(); ?>';
            document.location.href = base_url + "about/stories_edit?id=" + id;
        }


       
		function changestatus(st, id) {
            var base_url = '<?php echo base_url(); ?>';
            // alert(st);
            switch (st) {
                case 0:
                    var msg = "Are you sure,you want to activate ?";
                    break;
                case 1:
                    var msg = "Are you sure,you want to deactivate ?";
                    break;
                case 2:
                    var msg = "Are you sure,you want to delete ?";
                    break;
            }
            if (confirm(msg)) {
                $.ajax({
                    type: "POST",
                    url: base_url + "about/stories_status",
                    data: {
                        items: id,
                        status: st
                    },
                    success: function(data) {
                        $('#DataTableValue').html(data);
                        $('#example1').DataTable();
                    }
                });
            }
        }



        function closethisanddintRedirect() {
            $("#mask").html("");
            $("#overlay").height(0).removeClass();
            $("#flex1").flexOptions({
                newp: $("#flex1").flexGetPageNumber()
            }).flexReload();
            //reloadColorsdashboard();
        }
    </script>

</body>
<!-- END BODY-->

</html>