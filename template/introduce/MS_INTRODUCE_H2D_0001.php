<?php 
    $ve_chung_toi = $action_page->getPageDetail_byId(35, $lang);
?>
<div class="gb-introvechungtoi_ruouvang">
    <div class="container">
        <h2>Giới thiệu công ty</h2>
        <div class="gb-divider"></div>
        <div class="row">
            <div class="col-md-3">
                <div class="gb-introvechungtoi_ruouvang-right">
                    <img src="/images/<?= $ve_chung_toi['page_img'] ?>" alt="về chúng tôi" class="img-responsive">
                </div>
            </div>
            <div class="col-md-9">
                <div class="gb-introvechungtoi_ruouvang-left">
                    <p>
                        <!-- Khởi nguồn chỉ với ba thành viên sáng lập, Nhưng với nỗ lực không ngừng và bề dày kinh nghiệm
                        của những thành viên sáng lập công ty trong lĩnh vực xuất nhập khẩu và lĩnh vực hàng quà tặng
                        quảng cáo, quà tặng khuyến mại. Công ty TNHH DỊCH VỤ VÀ THƯƠNG MẠI H2D VIỆT NAM  hiện đã có đội
                        ngũ hơn 30 nhân sự và khẳng định được vị  trí là Công ty đứng đầu về cung cấp các mặt hàng quà
                        tặng quảng cáo và quà tặng khuyến mại tại Việt Nam. <br>
                        Sứ mệnh, tầm nhìn: <br>
                        H2D VIỆT NAM luôn hướng tới mục tiêu trở thành đối tác SỐ 1 về uy tín và cung cấp các sản phẩm
                        quà tặng quảng cáo, quà tặng khuyến mại tại Việt Nam.<br>
                        Chúng tôi luôn cam kết đem lại chất lượng sản phẩm tốt nhất với chi phí tối ưu nhất cho tất cả
                        khách hàng.<br>
                        Sẽ luôn giữ vững vị thế là đơn vị tiên phong trong lĩnh vực quà tặng quảng cáo và quà tặng
                        khuyến mại các Doanh nghiệp và Khách hàng. Mục tiêu sẽ trở thành Tổng công ty về lĩnh vực quà
                        tặng quảng cáo và quà tặng  khuyến mại trong năm 2018.<br> -->
                        <?= $ve_chung_toi['page_des'] ?>
                    </p>
                    <a href="/ve-chung-toi" class="gb-introvechungtoi_ruouvang-doctiep">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>