<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

      <title><?php echo maintitle?></title>
      <link href="<?php echo asset_url(); ?>css/artiiplants.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/artiiplantss.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/all.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo asset_url(); ?>css/font-awesome.min1.css" rel="stylesheet">


      <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <![endif]-->
      <?php echo $common;?>

      <script type="text/javascript">

          window.fbAsyncInit = function() {
              FB.init({
                  appId      : '510391332463769',
                  xfbml      : true,
                  version    : 'v2.4'
              });
          };

          (function(d, s, id){
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) {return;}
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/sdk.js";
              fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
          function postToFeed(title, desc, url, image){
              var obj = {method: 'feed',redirect_uri: '<?php echo cdn_url()?>',link: url, picture: '<?php echo cdn_url()?>'+image,name: title,description: desc};
              function callback(response){}
              FB.ui(obj, callback);
          }

      </script>


  </head>

  <body>

<!-- <HEADER> ================================= -->

<?php echo $header;?>
<!-- END </HEADER> -->


<!-- <PAGE CONTENT> ================================= -->
<div class="page_content">
    <div class="page_heading">
        <div class="container">
            <h1>Blogs</h1>
        </div>
    </div>
	<div class="container">
    	<div class="blog_detail">
            <?php

            $page = base_url()."atp_blog/blog?page=".$info[0]->page_url;
            $share_title  = str_replace("'","",$info[0]->title);
            $share_title  = str_replace('"',"",$share_title);

            $share_descr = str_replace("'","",$info[0]->breif_descp);
            $share_descr = str_replace('"',"",$share_descr);

            $path = base_url().$info[0]->image_path;
            $title = $info[0]->title;
            $postedby = $info[0]->post_by;
            $descr = $info[0]->descp;

            $date = date_create($info[0]->created_date);
            $datemonth = date_format($date, 'M d');
            $year = date_format($date, 'Y');

            if(is_array($comments_info)){
                $count = count($comments_info);
            }else{
                $count = 0;
            }


            echo "<div class='row'>
                <div class='col-lg-6 col-md-6 col-sm-6'>
                    <div class='blog_img'>
                    	<img src='{$path}' class='img-responsive'>
                        <div class='share_box'>
                        <a href='{$page}' data-image='{$info[0]->image_path}' data-title='{$share_title}' data-desc='{$share_descr}' class='btnShare icon-facebook social_icon facebook'></a>";?>

            <a href='http://twitter.com/home?status=<?php echo $page;?>' onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=250,width=450');return false;" class='icon-twitter social_icon twitter'></a>
            <a href="https://plus.google.com/share?url=<?php echo $page;?>" onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=150,width=350');return false;" class="icon-google social_icon google"></a>


            <?php echo     "


                        </div>
                    </div>
                    <div class='blog_info'>
                        <div class='row'>
                            <div class='col-lg-4 col-md-4 col-sm-4 text-center'>
                                <div class='circle'> <div class='circle_content'>
                                    <p> <span class='big'>{$count}</span> comments</p>
                                </div></div>
                            </div>
                            <div class='col-lg-4 col-md-4 col-sm-4 text-center'>
                                <div class='circle'> <div class='circle_content'>
                                    <p> <span class='big'>{$datemonth}</span> {$year}</p>
                                </div></div>
                            </div>
                            <div class='col-lg-4 col-md-4 col-sm-4 text-center'>
                                <div class='circle'> <div class='circle_content'>
                                    <p class='share_btn'> Share </p>
                                </div></div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class='col-lg-6 col-md-6 col-sm-6'>
                    <div class='blog_content'>
                    	<h2>{$title}</h2>
                        <p class='by'>by <b>{$postedby}</b></p>
                        <p class='blog_text'>
                        	{$descr}
                        </p>
                    </div>
                </div>
            </div>";

            





            ?>
            
            <div class="comments_wr">
            	<div class="row">
                	<div class="col-lg-8 col-md-8 col-sm-7">
                    	<div class="comments">
                        	<h3>Comments</h3>

                            <?php $path = asset_url()."images/avatar1.png";?>

                            <?php

                            $counter = 1;
                            $id = $info[0]->id;

                            if(is_array($comments_info)){

                            foreach($comments_info as $comm){


                                $name = $comm->name;
                                $comment = $comm->comment;




                            echo "<div class='comment_box'>
                            	<div class='row'>
                                	<div class='col-lg-3 col-md-3 col-sm-3'>
                                    	<img src='{$path}' class='img-responsive'>
                                    </div>
                                    <div class='col-lg-9 col-md-9 col-sm-9'>
                                    	<h3>{$name} <a href='javascript:void(0);' onclick='showComment({$counter})' class='pull-right'>Reply</a></h3>
                                        <p>
                                        	{$comment}
                                        </p>
                                    </div>
                                </div>
                            </div>


                            <div id='{$counter}' class='row cBox' style='display: none'>
                            <div class='col-lg-8' style=''>
                                <div class='comment_form'>
                                    <h3>Write your comments</h3>
                                    <form id='form{$counter}'>
                                    <input type='hidden' name='fid' id='fid{$counter}' value='{$id}'>
                                        <input type='text' name='name' id='name{$counter}' style='width: 100%;' placeholder='Name'>
                                        <input type='text' name='email' id='email{$counter}' style='width: 100%;' placeholder='Email ID'>
                                        <textarea style='width: 100%;' name='comment' id='com{$counter}' placeholder='Comments'></textarea>


                                        <input type='button' id='submit{$counter}' onclick='formSubmit({$counter})' value='Submit' style='width: 40%; float: left;' class='btn btn-primary'>
                                        <input type='button' st onclick='commentCancel({$counter})' value='Cancel' style='width: 40%;' class='btn btn-danger'>


                                    </form>
                                    <div id='msgboxx{$counter}'></div>
                                </div>
                            </div>
                                </div>";

                                $counter++;


                            }
                                $counter = $counter+10;

                                echo "   </div>
                    </div>
                    <div id='newcomment' class='col-lg-4 col-md-4 col-sm-5'>
                    	<div class='comment_form'>
                                    <h3>Write your comments</h3>
                                    <form id='form{$counter}'>
                                    <input type='hidden' name='fid' id='fid{$counter}' value='{$id}'>
                                        <input type='text' name='name' id='name{$counter}' placeholder='Name'>
                                        <input type='text' name='email' id='email{$counter}' placeholder='Email ID'>
                                        <textarea name='comment' id='com{$counter}' placeholder='Comments'></textarea>


                                        <input type='button' id='submit{$counter}' onclick='formSubmit({$counter})' value='Submit' style='width: 40%' class='btn btn-primary'>



                                    </form>
                                    <div id='msgboxx{$counter}'></div>
                                </div>
                    </div>";
                            }else{

                                echo "<div class='comment_box' style='display: none'>
                            	<div class='row'>
                                	<div class='col-lg-3 col-md-3 col-sm-3'>
                                    	<img src='' class='img-responsive'>
                                    </div>
                                    <div class='col-lg-9 col-md-9 col-sm-9'>
                                    	<h3><a href='javascript:void(0);' onclick='showComment(1)' class='pull-right'>Reply</a></h3>
                                        <p>

                                        </p>
                                    </div>
                                </div>
                            </div>


                            <div id='1' class='row cBox'>
                            <div class='col-lg-8' style=''>
                                <div class='comment_form'>
                                    <h3>Write your comments</h3>
                                    <form id='form1'>
                                    <input type='hidden' name='fid' id='fid1' value='{$id}'>
                                        <input type='text' name='name' id='name1' style='width: 100%;' placeholder='Name'>
                                        <input type='text' name='email' id='email1' style='width: 100%;' placeholder='Email ID'>
                                        <textarea style='width: 100%;' name='comment' id='com1' placeholder='Comments'></textarea>


                                        <input type='button' id='submit1' onclick='formSubmit(1)' value='Submit' style='width: 40% ; float: left;' class='btn btn-primary'>
                                        <input type='button' onclick='commentCancel(1)' value='Cancel' style='width: 40%' class='btn btn-danger'>


                                    </form>
                                    <div id='msgboxx{$counter}'></div>
                                </div>
                            </div>
                                </div></div>
                    </div>";
                            }

                            ?>

                            

                            

                </div>
            </div>
            
        </div>
        
    </div>
</div>
<!-- END </ PAGE CONTENT>  -->


<!-- <NEWS LETTER> ================================= -->
<?php echo $footer;?>
<!-- END </FOOTER>  -->
  

    
</body>
<script src="<?php echo asset_url() ?>js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/owl.carousel.min.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/slick.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/animate.js" type="text/javascript"></script>
<script src="<?php echo asset_url() ?>js/lightbox-2.6.min.js" type="text/javascript"></script>

  <script src="<?php echo asset_url()?>js/jquery-1.7.1.js" type="text/javascript"></script>
  <?php echo $jsFile;?>



<script type="text/javascript">


	jQuery(document).ready(function ($) {

        $('.btnShare').click(function(){
            elem = $(this);
            postToFeed(elem.data('title'), elem.data('desc'), elem.prop('href'), elem.data('image'));

            return false;
        });

    
	
	
});


</script>

  <script>

      function showComment(id){
          //alert($('.cBox').css('display'));

          $("#"+id).slideDown();
          $('#newcomment').hide();
      }



      function commentCancel(id){

          $("#"+id).slideUp("slow");
          $('#newcomment').show();
      }


      function formSubmit(id){

          var cname = $("#name"+id).val();
          var cmail = $("#email"+id).val();
          var ccomm = $("#com"+id).val();
          var fid = $("#fid"+id).attr('value');
          var emailReg =/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;


          if(cname.trim() == ""){

              $("#msgboxx"+id).html("<div class='alert alert-danger alert-dismissable' ><button data-dismiss='alert' class='close' type='button'>x</button>Please Enter Name</div>");

          } else if(cmail.trim() == ""){

              $("#msgboxx"+id).html("<div class='alert alert-danger alert-dismissable' ><button data-dismiss='alert' class='close' type='button'>x</button>Please Enter Email-Id</div>");

          } else if(!emailReg.test(cmail)){

              $("#msgboxx"+id).html("<div class='alert alert-danger alert-dismissable' ><button data-dismiss='alert' class='close' type='button'>x</button>Please Enter Valid Email-Id</div>");

          } else if(ccomm.trim() == ""){

              $("#msgboxx"+id).html("<div class='alert alert-danger alert-dismissable' ><button data-dismiss='alert' class='close' type='button'>x</button>Please Enter Your Comment</div>");

          } else{






          var url = "<?php echo base_url()?>"+"atp_blog/blogcomment_save";




              $("#msgboxx"+id).html("<div class='alert alert-success alert-dismissable' ><button data-dismiss='alert' class='close' type='button'>x</button>Please Wait...</div>");
              $.post(url,
                  {
                      name: cname,
                      mail: cmail,
                      comm: ccomm,
                      fid: fid
                  },
                  function(data,status){
                      $("#name"+id).attr('value',"");
                      $("#email"+id).attr('value',"");
                      $("#com"+id).attr('value',"");
                      $("#msgboxx"+id).html("<div class='alert alert-success alert-dismissable' ><button data-dismiss='alert' class='close' type='button'>x</button>Thank You..! Your Comment Has Been Sent For Admin Approval</div>").fadeOut(5000);


                  });


      }

      }





  </script>

</body>
</html>
