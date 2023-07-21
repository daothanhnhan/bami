<?php                                                                          

    if (isset($_GET['slug']) && $_GET['slug'] != '') {

        $slug = $_GET['slug'];



        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);

        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang['productcat_id'],$lang);

        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat['productcat_id'],'desc',$trang,12,$slug);//var_dump($rows);

    }else{

        $rows = $action->getList('product','','','product_id','desc',$trang,12,'san-pham');

    }

    

    $_SESSION['sidebar'] = 'productCat';

?>

<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0002.php";?>

<div class="gb-page-sanpham_ruouvang">

    <div class="container">

        <div class="col-md-9">

            <?php //include DIR_SEARCH."MS_SEARCH_H2D_0001.php";?>

            <div class="row">

                <?php 

                $d = 0;

                foreach ($rows['data'] as $item) {

                    $d++;

                    $row = $item;

                    $rowLang = $action_product->getProductLangDetail_byId($item['product_id'],$lang);

                ?>

                <div class="col-sm-4">

                    <div class="gb-product_ruouvang-item">

                        <div class="gb-product_ruouvang-item-img">

                            <a href="/<?= $rowLang['friendly_url'] ?>" class="product-aspect-box"><img src="/images/<?= $row['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive product-aspect-img"></a>

                        </div>

                        <div class="gb-product_ruouvang-item-text">

                            <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>

                            <div class="excerpt-product_ruouvang">

                                <p>

                                    <?= strip_tags($rowLang['lang_product_des']) ?>

                                </p>

                            </div>

                            <!--PRICE-->

                            <?php //include DIR_PRODUCT."MS_PRODUCT_H2D_0002.php";?>

                        </div>

                        <div class="gb-product_ruouvang-item-yeumua hidden">

                            <!--YÊU THÍCH-->

                            <?php include DIR_CART."MS_CART_H2D_0003.php";?>

                            <!--MUA HÀNG-->

                            <?php include DIR_CART."MS_CART_H2D_0001.php";?>

                        </div>

                    </div>

                </div>

                <?php

                    if ($d%3==0) {

                        echo '<hr style="width:100%;border:0;" />';

                    }

                }

                ?>

            </div>

            <div><?= $rows['paging'] ?></div>

        </div>

        <div class="col-md-3">

            <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0001.php";?>

            <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0006.php";?>

            <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>

            <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0005.php";?>

        </div>

    </div>

</div>