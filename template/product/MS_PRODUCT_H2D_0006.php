<?php 
    $product_favorite = $action_product->getProductFavoriteList_limit(8);
?>
<div class="gb-tieubieu-product_ruouvang">
    <div class="container">
        <div class="gb-tieubieu-product_ruouvang-title">
            <h3>SẢN PHẨM TIÊU BIỂU</h3>
        </div>
        <div class="gb-tieubieu-product_ruouvang-body">
            <div class="row">
                <?php 
                $d = 0;
                foreach ($product_favorite as $item) {
                    $d++;
                    $row = $item;
                    $rowLang = $action_product->getProductLangDetail_byId($item['product_id'],$lang);
                ?>
                <div class="col-md-3 col-sm-6">
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
                <?php
                    if ($d%4==0) {
                        echo '<hr style="width:100%;border:0;" />';
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>