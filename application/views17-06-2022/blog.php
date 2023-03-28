<?php
$page = (int) (!isset($_GET['p'])) ? 1 : $_GET['p'];
$limit=10;
//echo $page;
# sql query
//$sql = $productsSql;
# find out query stat point
$start = ($page * $limit) - $limit;
$prodcount=count($this->home_db->runSql($sql));
# query for page navigation
if( $prodcount > ($page * $limit)){
    $next = ++$page;
}
$query = $this->home_db->runSql( $sql . " LIMIT {$start}, {$limit}");


?>


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


<?php echo $header;?>


<!-- <PAGE CONTENT> ================================= -->
<div class="page_content">
    <div class="page_heading">
        <div class="container">
            <h1>Blogs</h1>
        </div>
    </div>
	<div class="container artiirow">
    	
        <!-- <blog post> ---------------------------- -->

        <?php

        foreach($query as $blg){



            $share_title  = str_replace("'","",$blg->title);
            $share_title  = str_replace('"',"",$share_title);

            $share_descr = str_replace("'","",$blg->breif_descp);
            $share_descr = str_replace('"',"",$share_descr);


            $date = date_create($blg->created_date);
            $datemonth = date_format($date, 'M d');
            $year = date_format($date, 'Y');
            $page = base_url()."atp_blog/blog?page=".$blg->page_url;
            $path = base_url().$blg->image_path;
            $result = $this->blog_db->getcontent1("blogposts_comments","fid",$blg->id,"0","id","DESC");
            if(is_array($result)){
            $count = count($result);
            } else{
                $count = 0;
            }



            echo "<div class='blog_box item_prod'>
        	<div class='row'>
            	<div class='col-lg-3 col-md-3 col-sm-3'>
                	<div class='info'>
                    	<span class='date'>{$datemonth}, <small> {$year} </small></span>
                        <spanc class='comments'> {$count} comments</span>
                    </div>
                </div>
                <div class='col-lg-9 col-md-9 col-sm-9'>
                	<div class='article'>
                        <div class='row'>
                            <div class='col-lg-9 col-md-9 col-sm-9'>
                                <h3>{$blg->title}</h3>
                                <p>
                                    {$blg->breif_descp}
                                </p>
                            </div>
                            <div class='col-lg-3 col-md-3 col-sm-3'>
                                <img src='{$path}' class='img-responsive'>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class='read_share'>
                <a href='{$page}'>Read article</a>

                <a href='{$page}' data-image='{$blg->image_path}' data-title='{$share_title}' data-desc='{$share_descr}' class='btnShare icon-facebook social_icon facebook'></a>"; ?>


                <a href='http://twitter.com/home?status=<?php echo $page;?>' onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=250,width=450');return false;" class='icon-twitter social_icon twitter'></a>
                <a href="https://plus.google.com/share?url=<?php echo $page;?>" onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=150,width=350');return false;" class="icon-google social_icon google"></a>
            <?php
            echo "
            </div>
        </div>";
        }


        ?>

        <?php if (isset($next)): ?>
            <div class="prodnav">
                <a href='<?php echo base_url();?>atp_blog?p=<?php echo $next;?>'>Next</a>
            </div>
        <?php endif?>

    </div>
</div>
<!-- END </ PAGE CONTENT>  -->




<!-- <FOOTER> ================================= -->
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
  <script type="text/javascript" src="<?php echo asset_url();?>js/jquery-ias.min.js"></script


  <?php echo $jsFile;?>

  <script type="text/javascript">
	
	jQuery(document).ready(function ($) {

        jQuery.ias({
            container : '.artiirow', // main container where data goes to append
            item: '.item_prod', // single items
            pagination: '.prodnav', // page navigation
            next: '.prodnav a', // next page selector
            loader: '<img src="<?php echo asset_url();?>images/ajax-loader.gif"/>', // loading gif
            triggerPageThreshold: 5, // show load more if scroll more than this
            onRenderComplete: function(items) {
                //console.log('We loaded ' + items.length + ' items');
                $imgs = $(".filter .product_box img");
                $imgs.lazyload({
                    effect: "fadeIn",
                    failure_limit: Math.max($imgs.length - 1, 0),
                    event: 'lazylazy'
                });
            }
        });


        $('.btnShare').click(function(){
            elem = $(this);
            postToFeed(elem.data('title'), elem.data('desc'), elem.prop('href'), elem.data('image'));

            return false;
        });

});


</script>

</body>
</html>
