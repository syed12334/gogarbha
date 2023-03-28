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

<div class="preloader">
    <img class="preloader__image" width="55" src="<?php echo asset_url() ?>images/Gogarbha_Logo.svg" alt="">
</div><!-- /.preloader -->
<div class="search-popup">
    <div class="search-popup__overlay search-toggler"></div>
    <!-- /.search-popup__overlay -->
    <div class="search-popup__content">
        <form action="<?= base_url() . 'search'; ?>" method="get">
            <label for="search" class="sr-only">search here</label><!-- /.sr-only -->
            <input type="text" id="search" name="searchbar" id="searchbar" onkeypress="searchproducts(event);" placeholder="Search Here..." />
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
            <div class="container">
                <div class="logo-box">
                    <span class="fa fa-bars mobile-nav__toggler"></span>
                    <a href="<?= base_url(); ?>" aria-label="logo image" class="lite"><img src="<?php echo asset_url() ?>images/Gogarbha_Logo_White.svg" alt=""></a>
                    <a href="<?= base_url(); ?>" aria-label="logo image" class="lite-dark"><img src="<?php echo asset_url() ?>images/Gogarbha_Logo_White.svg" alt=""></a>

                </div><!-- /.logo-box -->
                
                 
                <div class="main-header__info">
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



                 
                    <a href="#" class="search-toggler main-header__search-btn"><i class="agrikon-icon-magnifying-glass"></i></a>

                </div><!-- /.main-header__info -->




                
            </div><!-- /.container -->


            <div class="container p-0 trs" >
            <?php
                $hcategory = $this->home_db->getRecords('category', array('status' => 0), 'id as cid,name as cname,page_url as cpage_url,image_path as cimage_path', 'order_no ASC');
                ?>
                <ul class="main-menu__list">
                    <?php
                    if (count($hcategory) > 0) {
                        //echo "<pre>";print_r($hcategory);exit;
                        foreach ($hcategory as $c) {
                            $id = $c->cid;
                            $subcat = $this->home_db->getRecords('subcategory', array('category_id' => $id,'status'=>0), 'id as sid,name as sname,page_url as spage_url,status', 'order_no ASC');

                    ?>
                            <li class="dropdown">
                                <a href="#"><?php echo $c->cname ?></a>
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




                </ul>
            </div>
        </nav>

        

    </header>