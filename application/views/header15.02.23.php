<style>
    @media(min-width:1200px){.page-header .container {
        position: relative;
        z-index: 10;
        padding-top: 230px;
        padding-bottom: 50px;
        text-align: center;
    }
    }

    .main-header__info{
        margin-left:auto;
    }

    .trs{
        background: rgba(0,0,0,0.5);
    }
</style>

<style>
        .slider-row {
            margin-top: 20px !important;
        }

        .top-call p {
            margin-bottom: 0px !important;
        }

        .wrapper_rr {
            margin: 0 auto;
            max-width: 1680px;
            height: 100%;
            padding: 0px 20px;
            position: relative;
            width: 100%;
        }

        .service-two__home-two {
            margin-top: 0;
        }

        .main-menu__two.stricky-header,
        .main-header__two {
            background-color: #fff !important;
        }

        

        .service-two::before,
        .main-slider__two::after {
            background: none !important;
        }

        .stricky-header {
            position: inherit;
        }

        .stricky-header.stricky-fixed {
            position: fixed;
        }

        .stricky-fixed.main-menu__two .main-menu__list>li>a {
            color: #fff !important;
        }

        a.search-toggler.main-header__search-btn,
        .cart-icon,
        .login-user {
            color: #36648b !important;
        }

        .container.p-0.trs,
        .stricky-fixed .container.p-0.trs {
            background: #36628b !important;
        }
    </style>

<style>
        .offer_tag {
            background-color: #014E37;
            color: #fff;
            font-size: 12px;
            font-weight: 500;
            padding: 5px 16px 3px 9px;
            left: 0px;
            position: absolute;
            top: 8px;
            z-index: 9;
            text-transform: uppercase;
        }

        .br-0 {
            border: none !important
        }

        .mmk {
            padding-top: 55px;
            padding-bottom: 55px;
        }

        .offer_tag::before {
            content: "";
            position: absolute;
            right: 0;
            top: 0;
            width: 0;
            height: 0;
            border-top: 12px solid #014E37;
            border-bottom: 13px solid #014E37;
            border-right: 7px solid #fff;
        }

        .test {
            width: 100%;
        }

        .top-call {
            color: #000;
            position: relative;
            z-index: 999;
            float: right;
            font-size: 9px !important;
            text-align: right;
            width: 100%;
        }

        .brg {
            border-bottom: 1px solid #ebebeb;
        }


        .top-call span,
        .top-call span a {
            color: #757575;
            font-size: 11px !important;

        }

        .top-call span a {
            border-right: 1px solid #757575;
            padding: 0px 6px;
        }

        .top-call span a:hover {
            text-decoration: underline;

        }

        .side {
            border-radius: 5px;
            overflow: hidden;
        }


        .owl-wrapper-outer.autoHeight {
            height: auto !important;
        }

        a.viewall {
            float: right;
            font-size: 12px;
            border: 1px solid #2b2b2b;
            padding: 7px 15px;
            border-radius: 5px;
            color: #2b2b2b;

        }

        .stricky-fixed.main-menu__two .main-menu__list>li>a:hover {
            color: #fff !important;
        }

        .mbc {
            display: none;
        }

        .main-header__two .main-menu .mobile-nav__toggler {
            color: #36628b;
        }

        .sm-t {
            margin: -5px 0 0 0;
            width: 26px;
        }

        .service-two__home-two .block-title__image {
            float: left;
            margin: -5px 5px 0 0px !important;
        }

        .out-stok {
            color: red;
            margin: 0 !important;
        }

        .service-two__bottom-curv::before,
        .service-two__bottom-curv {
            background: none;
        }

        @media(max-width:768px) {

            .out-stok {
                color: red;
                margin: -20px 0 0 0 !important;
                font-size: 11px !important;
            }


            .mobile-nav__wrapper.expanded .bbc {
                display: none !important;
            }

            .container.p-0.trs,
            .stricky-fixed .container.p-0.trs {
                background-color: transparent !important;
            }

            .search-bar-option {
                display: none;
            }

            .mbc {
                display: block;
            }

            .logo-box img {
                width: 50px;
            }

            .main-header__two .main-menu .mobile-nav__toggler {
                color: #36628b;
            }

            .main-menu .logo-box .mobile-nav__toggler {
                color: #36628b;
            }

            .main-slider__two {
                margin-bottom: 15px;
            }

            .sider-rr {
                padding: 0 15px !important;
            }

            section#product h3 {
                font-size: 19px;
            }

        }
    </style>























<div class="preloader">
        <img class="preloader__image" width="55" src="<?php echo asset_url() ?>images/Gogarbha_Logo.svg" alt="">
    </div><!-- /.preloader -->
    <div class="search-popup">
        <div class="search-popup__overlay search-toggler"></div>
        <!-- /.search-popup__overlay -->
        <div class="search-popup__content">
            <form action="<?= base_url() . 'search'; ?>" method="get">
                <label for="search" class="sr-only">search here</label><!-- /.sr-only -->
                <input type="text" id="search" name="searchbar" id="searchbar" placeholder="Search Here..." />
                <button type="submit" aria-label="search submit" class="thm-btn">
                    <i class="fa fa-search"></i>
                </button>
            </form>
        </div>
        <!-- /.search-popup__content -->
    </div>
    <div class="page-wrapper">



        <header class="main-header main-header__two">



            <!-- /.topbar -->
            <nav class="main-menu main-menu__two">

                <div class="wrapper_rr container pt-0 pb-0 bbc">
                    <div class="top-call">
                        <p><span><a href="#" data-toggle="modal" data-target="#exampleModal">Sell With Us</a></span>
                            <span><a href="tel:+919886203199">Call Us</a></span> <!-- <span>Download App: <a href="#" class="br-0 p-0"><img src="<?php echo asset_url() ?>images/android.svg" width="20px" /></a> <a href="#" class="br-0 pl-0"><img src="<?php echo asset_url() ?>images/ios.svg" width="20px" /></a></span> -->
                        </p>
                    </div>

                </div>



                <div class="container wrapper_rr pt-0">
                    <div class="logo-box">
                        <span class="fa fa-bars mobile-nav__toggler"></span>
                        <a href="<?= base_url(); ?>" aria-label="logo image" class="lite"><img src="<?php echo asset_url() ?>images/Gogarbha_Logo.svg" alt=""></a>
                        <a href="<?= base_url(); ?>" aria-label="logo image" class="lite-dark"><img src="<?php echo asset_url() ?>images/Gogarbha_Logo.svg" alt=""></a>

                    </div><!-- /.logo-box -->

                    <div class="search-bar-option ml-auto " style="width: 50%;">
                           <form action="<?= base_url() . 'search'; ?>" method="get">
                        <div class="input-group">
                            <input type="text" class="form-control" name="searchbar" id="searchbar"  placeholder="Search....">
                            <div class="input-group-append">
                                <button class="btn btn-info" type="submit" id="button-addon2">Search</button>
                            </div>
                        </div>
                    </form>
                    </div>

                    <div class="main-header__info ml-auto">
                        <?php if (is_array($UserDetail)) {
                        ?>
                            <a href="<?= base_url() . 'my_account'; ?>" class="login-user"><i class="far fa-user"></i> <span class="text"><?php echo ucfirst($UserDetail[0]->name); ?> </span></a>
                        <?php
                        } else {
                        ?>
                            <a href="<?= base_url() . 'login'; ?>" class="login-user"><i class="far fa-user"></i> <span class="text">Login </span></a>
                        <?php
                        }
                        ?>

                        <a href="<?= base_url() . 'cart/cart_summary'; ?>" class="cart-icon"><i class="fas fa-shopping-cart"></i>(<span class="cartt count cartcnt"><?php echo count($this->cart->contents()); ?></span>)</a>




                        <a href="#" class="search-toggler main-header__search-btn mbc"><i class="agrikon-icon-magnifying-glass"></i></a>

                    </div><!-- /.main-header__info -->





                </div><!-- /.container -->


                <div class="container wrapper_rr p-0 trs">
                    <?php
                    $hcategory = $this->home_db->getRecords('category', array('status' => 0), 'id as cid,name as cname,page_url as cpage_url,image_path as cimage_path', 'order_no ASC');
                    ?>
                    <ul class="main-menu__list">
                        <li><a href="<?php echo base_url() ?>">Home </a></li>
                        <li><a href="<?php echo base_url() ?>aboutus">About Us</a></li>
<!--                         <li><a href="<?php echo base_url() ?>aboutus/organic">About Organic</a></li>
 -->                        
                        <?php
                        if (count($hcategory) > 0) {
                            //echo "<pre>";print_r($hcategory);exit;
                            foreach ($hcategory as $c) {
                                $id = $c->cid;
                                $subcat = $this->home_db->getRecords('subcategory', array('category_id' => $id, 'status' => 0), 'id as sid,name as sname,page_url as spage_url,status', 'order_no ASC');

                        ?>
                                <li class="dropdown">
                                    <a href="<?php if($id ==13) {echo base_url().'aboutus/organic';}else {echo '#';} ?>"><?php echo $c->cname ?></a>
                                    <?php
                                    if (is_array($subcat)) {
                                    ?>
                                        <ul>
                                            <?php
                                            foreach ($subcat as $sub) {
                                            ?>

                                                <li>
                                                    <a href="<?php echo base_url() . 'home/product_details?id=' . base64_encode($sub->sid) . '&stype=' . $sub->spage_url;  ?>"><?php echo  $sub->sname;  ?></a>
                                                </li>


                                        <?php
                                            }
                                        }
                                        ?>
                                        </ul>
                                        <?php
                                        ?>

                                </li>
                        <?php
                            }
                        }

                        ?>

                      <li><a href="<?php echo base_url() ?>">Contact Us </a></li>


                    </ul>
                </div>
            </nav>


        </header>



        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Sell With Us</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="">Phone</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="">Company</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="">Address</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-info">SUBMIT</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
