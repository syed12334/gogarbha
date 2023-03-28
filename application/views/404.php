
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/fontawesome-all.min.css">
    <title>404</title>
     
    <style>
        .error-s {
            margin: 0 auto;
            max-width: 350px;
            display: block;
            top: 15%;
            position: absolute;
            left: 15%;
            right: 15%;
            bottom: 15%;
            color: #fff;
        }

        .error-s h2 {
            font-size: 45px;
            font-weight: 800;
        }
        p {
            margin: 0 0 9px 0px;
        }
          a {
            color:#fff;
            text-decoration: none;

        }
        a:hover {
            color:#fff;
            text-decoration: underline;
        }
        body{background: #36628b; font-family: arial;}
    </style>
</head>

<body >
    <div class="error-s">
        <img src="<?php echo base_url();?>/assets/images/icons/cow.svg" width="270px">
        <h2>
            ERROR 404 <br>NOT FOUND </h2>

        <p>You may have mis-typed the URL.</p>

        <p>Or the page has been removed.</p>

        <p>Actually, there is nothing to see here...</p>
        

        <p>Click on the link below to do something, Thanks!</p>
        <a href="<?php echo base_url(); ?>"><i class="fa fa-home"></i> Home</a>
    </div>
</body>

</html>