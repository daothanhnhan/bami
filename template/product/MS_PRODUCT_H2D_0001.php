<?php 
    $home_pro_new = $action_product->getListProductNew_hasLimit(8);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-tieubieu-product_ruouvang">
    <div class="container">
        <div class="gb-tieubieu-product_ruouvang-title">
            <h3>SẢN PHẨM MỚI NHẤT</h3>
        </div>
        <div class="gb-tieubieu-product_ruouvang-body">
            <div class="gb-tieubieu-product_ruouvang-slide owl-carousel owl-theme">
                <?php 
                foreach ($home_pro_new as $item) {
                    $row = $item;
                    $rowLang = $action_product->getProductLangDetail_byId($item['product_id'],$lang);
                ?>
                <div class="item">
                    <div class="gb-product_ruouvang-item">
                        <div class="gb-product_ruouvang-item-img">
                            <a href="/<?= $rowLang['friendly_url'] ?>" class="product-aspect-box"><img src="/images/<?= $row['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive product-aspect-img"></a>
                        </div>
                        <div class="gb-product_ruouvang-item-text">
                            <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>
                            <div class="excerpt-product_ruouvang">
                                <p>
                                    <?= $rowLang['lang_product_des'] ?>
                                </p>
                            </div>
                            <!--PRICE-->
                            <?php include DIR_PRODUCT."MS_PRODUCT_H2D_0002.php";?>
                        </div>
                        <div class="gb-product_ruouvang-item-yeumua">
                            <!--YÊU THÍCH-->
                            <?php include DIR_CART."MS_CART_H2D_0003.php";?>
                            <!--MUA HÀNG-->
                            <?php include DIR_CART."MS_CART_H2D_0001.php";?>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-tieubieu-product_ruouvang-slide').owlCarousel({
            loop:true,
            margin:30,
            navSpeed:500,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items:1,
                    nav: false
                },
                600:{
                    items: 3,
                    nav:true
                },
                992:{
                    items: 4,
                    nav:true
                }
            }
        });
    });
</script>