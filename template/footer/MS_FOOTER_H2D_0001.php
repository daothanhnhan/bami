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
<style>
footer {
    color: #fff;
}
footer a {
    color: #fff;
}
footer .copyright {
  background: #000;
  padding-top: 10px;
  padding-bottom: 10px;
  color: #fff;
}
footer .footer-main-content_ruouvang {
  /*background-image: linear-gradient(to right, #ffff00 , black);*/
  background: #000;
}
</style>
<footer class="site-footer footer-default">
    <div class="footer-main-content_ruouvang">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <p><b>Kòi Caffe</b></p>
                            <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p> -->
                        </aside>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-ruouvang-right">
                        <div class="footer-top-ruouvang">
                            <div class="row">
                                <p><b>THÔNG TIN LIÊN HỆ</b></p>
                                <br>
                                <span>
                                    <i class="fa fa-facebook-square"></i>
                                    <a target="_blank" rel="nofollow" href="" class="external">Facebook</a> &nbsp; <i class="fa fa-youtube-play"></i>
                                    <a target="_blank" rel="nofollow" href="" class="external">Youtube</a> &nbsp; <i class="fa fa-shopping-bag"></i>
                                    <a target="_blank" rel="nofollow" href="" class="external">Shop</a></span>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center copyright">
      <p>© Copyright 2017. All rights reserved. Design by CAFELINK.ORG</p>
    </div>
</footer>