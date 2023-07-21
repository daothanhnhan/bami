<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           // document.getElementById("demo").innerHTML = this.responseText;
           // alert(this.responseText);
           // alert('thanh cong.');
           // window.location.href = "/gio-hang";
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                  window.location = '/gio-hang';
              }else{
                  location.reload();
              }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>
<footer class="site-footer footer-default">
    <div class="footer-main-content_ruouvang">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2><?= $rowConfig['web_name'] ?></h2>
                                    <ul>
                                        <li><span>Địa chỉ:</span> <?= $rowConfig['content_home1'] ?></li>
                                        <li><span>VPGD: </span> <?= $rowConfig['content_home4'] ?></li>
                                        <li><span>Hotline: </span>  <?= $rowConfig['content_home3'] ?></li>
                                        <li><span>Email: </span> <?= $rowConfig['content_home2'] ?></li>
                                        <li><span>Skype: </span> <?= $rowConfig['content_home5'] ?></li>
                                        <!-- <li><span>Skype: </span> hang.vpms</li> -->
                                    </ul>
                                    <?php include DIR_SOCIAL."MS_SOCIAL_H2D_0002.php";?>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="footer-ruouvang-right">
                        <div class="footer-top-ruouvang">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="footer-main-content_ruouvang-element">
                                        <aside class="widget-footer">
                                            <h3 class="widget-title-footer-ruouvang uni-uppercase">Về chúng tôi</h3>
                                            <div class="widget-content">
                                                <div class="footer-link-ruouvang">
                                                    <?= $rowConfig['content_home6'] ?>
                                                </div>
                                            </div>
                                        </aside>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="footer-main-content_ruouvang-element">
                                        <aside class="widget-footer">
                                            <h3 class="widget-title-footer-ruouvang uni-uppercase">Danh mục sản phẩm</h3>
                                            <div class="widget-content">
                                                <div class="footer-link-ruouvang">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <?= $rowConfig['content_home7'] ?>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <?= $rowConfig['content_home8'] ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </aside>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer-bottom-ruouvang">
                            <div class="row">
                                <!-- <div class="col-sm-4">
                                    <div class="copyright-area_ruouvang">
                                        <div class="copyright-content_ruouvang">
                                            <p class="copyright-text_ruouvang">© Copyright 2017. All rights reserved. Design by Goldbridge</p>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="col-sm-12">
                                    <div class="footer-bottom-right">
                                        <span><img src="/images/logo-dathongbao.png" alt="" class="img-responsive" width="145px" height="55px"></span>
                                        <span><img src="/images/logo-master-card.svg" alt="" class="img-responsive"  width="80px" height="45px"></span>
                                        <span><img src="/images/logo-visa-payment.svg" alt="" class="img-responsive"  width="120px" height="70px"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>