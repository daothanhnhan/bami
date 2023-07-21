<style>
.gb-top-header_ruouvang {
    /*background-image: linear-gradient(to right, #ffff00 , black);*/
    background: #000;
}
</style>
<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_H2D_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->
<style>

</style>
<header>

    <div class="gb-header-ruouvang">

        <div class="gb-top-header_ruouvang">

            <div class="container">

                <div class="row">

                    <div class="col-md-12 col-sm-12 hidden">

                        <div class="gb-top-header_ruouvang-left">

                            <ul>

                                <!-- <li class="hidden-sm hidden-xs"><i class="fa fa-map-marker" aria-hidden="true"></i> Địa chỉ: <?= $rowConfig['content_home1'] ?></li> -->

                                <li><h2 style="font-weight: bold;">BAMI'S KÒI</h2></li>
                                
                                <li>CHUYÊN BÁNH MỲ QUẺ HẢI PHÒNG</li>

                                

                            </ul>

                        </div>

                    </div>

                    <!-- <div class="col-md-9 col-sm-9 hidden-sm hidden-xs">

                        <div class="gb-top-header_ruouvang-right">

                            <ul>

                                <li><a href="/chuyen-nhan-dat-hang">QUÀ TẶNG DOANH NGHIỆP</a></li>

                                <li><a href="/cong-xuong-truc-tiep">QÙA TẶNG QUẢNG CÁO</a></li>

                                <li><a href="/gia-ca-tot-nhat">QUÀ TẶNG KHUYẾN MÃI</a></li>

                                <li><a href="/cong-ty-uy-tin">GIA CÔNG QUÀ TẶNG</a></li>

                            </ul>

                        </div>

                    </div> -->

                </div>

            </div>

        </div>

        <div class="gb-header-between_ruouvang sticky-menu">

            <div class="container">

                <div class="row">

                    <div class="col-md-3 col-sm-12">

                        <div class="gb-header-between_ruouvang-left">

                            <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="img-responsive"></a>

                            <!-- <h4>h2dvietnam.com</h4> -->

                        </div>

                    </div>

                    <!-- <div class="col-md-6 col-sm-12">

                        <div class="gb-header-between_ruouvang-right">

                        	<h2>CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG MẠI H2D VIỆT NAM</h2>

                        </div>

                    </div>

                    <div class="col-md-3 col-sm-12">

                        <div class="gb-header-between_ruouvang-right">

                            <?php //include DIR_CART."MS_CART_H2D_0004.php";?>

                        </div>

                    </div> -->

                    <div class="col-md-6 col-sm-12 clear-padding">

                        <?php include DIR_MENU."MS_MENU_H2D_0001.php";?>

                    </div>

                    <div class="col-md-2 clear-padding">

                        <div class="gb-search-cart_h2d">

                            <ul>

                                <li>

                                    <?php //include DIR_CART."MS_CART_H2D_0004.php";?>

                                </li>
                                <li class="translation-icons">
                                     <a href="javascript:void(0)" title="" data-placement="0">
                                       <img src="/images/ptd_vn.jpg" alt="flag" class=" ptd_lgue">
                                     </a>
                                   </li>
                                   <li class="translation-icons">
                                     <a href="javascript:void(0)" title="" data-placement="1">
                                       <img src="/images/ptd_en.jpg" alt="flag" class="ptd_lgue">
                                     </a>
                                   </li>


                                <li style="position: relative;top: -11px;">

                                    <?php include DIR_SEARCH."MS_SEARCH_H2D_0003.php"; ?>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="gb-header-bottom_ruouvang sticky-menu">

            <div class="container">

            	<div class="row">

            		<div class="col-md-9">

						<?php //include DIR_MENU."MS_MENU_H2D_0001.php";?>

            		</div>

            		<div class="col-md-3">

						<?php //include DIR_SEARCH."MS_SEARCH_H2D_0002.php"; ?>

            		</div>

            	</div>               

            </div>

        </div>

    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>