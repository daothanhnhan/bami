<?php
//phpinfo();die;
session_start();
ob_start();
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$folder = dirname(__FILE__);
include_once('config.php');
include_once('__autoload.php');
$action = new action();
include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";
// $urlAnalytic = $action->showabc();    
include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";
include_once 'functions/phpmailer/class.smtp.php';
include_once 'functions/phpmailer/class.phpmailer.php';
include_once "functions/vi_en.php";
// // LÀM RÕ NHỮNG THƯ VIỆN NÀY
// // include_once('lib/vi_en.php');
// // include_once('lib/nganLuong/NL_Checkoutv3.php');

// // LÀM RÕ Install Cart

// Install MultiLanguage
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;
// Install Friendly Url
include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";
// Configure Website
include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";
// echo $translate['link_contact'];die;
$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
// $action = new action();
$cart = new action_cart();
$menu = new action_menu();
$action_product = new action_product();
$action_news = new action_news();
$action_page = new action_page();
if($lang == "vn"){
    $rowConfig_lang = $action->getDetail('config_languages','id',1);
}else{
    $rowConfig_lang = $action->getDetail('config_languages','id',2);
}


$rowConfig = $action->getDetail('config','config_id',1);

$urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);
$schema = '';
if ($urlAnalytic == 'news_languages') {
  $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
    $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);
    $schema = $row['news_sub_info2'];
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="<?= $meta_des ?>"> 
    <meta name="keywords" content="<?= $meta_key ?>">
    <title><?= $title ?></title>
    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

    <link rel="canonical" href="http://<?= $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'] ?>" />

    <meta property="og:image" content="http://<?= $_SERVER['SERVER_NAME'] ?>/images/<?= $rowConfig['icon_web'] ?>" alt="bami" />
    <meta property="og:title" content="<?= $title ?>" />
    <meta property="og:description" content="<?= $meta_des ?>" />
    <meta property="og:image:alt" content="logo">
    <meta property="og:type" content="website" />

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>
    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/style-h2d.css">
    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>
    <script src="/plugin/bootstrap/js/bootstrap.js"></script>
    <?php //echo $schema; ?>
    <script type='application/ld+json'>

    {

        "@context": "http://schema.org",

        "@type": "WebSite",

        "name": "<data:view.title.escaped/>",

        "url": "<data:view.url.canonical/>",

        "potentialAction": {

            "@type": "SearchAction",

            "target": "<data:view.url.canonical/>search?q={search_term_string}",

            "query-input": "required name=search_term_string"

        }

    }

</script>
</head>

<body>



<?php include_once dirname(__FILE__).DIR_THEMES."header.php";?>

<div class="gb-content">
    <?php
    if (isset($_GET['page'])){

        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);
        // echo $urlAnalytic;
        switch ($urlAnalytic) {

            case 'tin-tuc':
                $title = 'Tin tức';
                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'search-news':
                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;

            case 'newscat_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "tintuc.php";break;

            case 'news_languages':

                include_once dirname(__FILE__).DIR_THEMES."chitiettintuc.php"; break;
            case 'lien-he':
                $title = 'Liên hệ';
                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

            case 'gio-hang':

                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;

            case 'khuyen-mai':

                include_once dirname(__FILE__).DIR_THEMES."khuyenmai.php"; break;

            case 'san-pham':
                $title = 'Sản phẩm';
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'productcat_languages':
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'search-product':
                include_once dirname(__FILE__).DIR_THEMES."search-product.php";break;

            case 'price':
                include_once dirname(__FILE__) . DIR_THEMES . "price.php";break;

            case 'hang-thanh-ly':

                include_once dirname(__FILE__).DIR_THEMES."hangthanhly.php"; break;

            case 'thanh-toan':

                include_once dirname(__FILE__).DIR_THEMES."cart-payment.php"; break;
            case 'product_languages':

                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;
            case 'huong-dan-dat-hang':

                include_once dirname(__FILE__).DIR_THEMES."huongdanmuahang.php"; break;
            case 'huong-dan-thanh-toan':

                include_once dirname(__FILE__).DIR_THEMES."cachthucthanhtoan.php"; break;

            case 'chinh-sach-van-chuyen':

                include_once dirname(__FILE__).DIR_THEMES."chinhsachvanchuyen.php"; break;
            case 'page_language':

                include_once dirname(__FILE__).DIR_THEMES."gioithieu.php"; break;

            case 'home':
                include_once dirname(__FILE__).DIR_THEMES."home.php";
        }
    }
    else include_once dirname(__FILE__).DIR_THEMES."home.php";
    ?>
</div>


<?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>

<div id="share_us2" class="hidden">
        <iframe src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/Showroombanyensaongockhanhhanoi&tabs=timeline&width=340&height=212&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=220693348668109" width="340" height="212" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
    </div>
<div class="hidden">
            <p style="padding:0px;">
                <style type="text/css">#share_us2{
                    position:fixed;
                    right:-342px;
                    top: 50%;
                    width:390px;
                    min-height:180px;
                    background: url(../images/fb11.png) 0 0 no-repeat;
                    background-position:left top;
                    background-repeat:no-repeat;
                    border-radius:5px;
                    -moz-border-radius:5px;
                    -webkit-border-radius:5px;
                    padding:0px 0px 10px 48px;
                    z-index:99999;
                    -webkit-transition:1s ease;
                    -moz-transition:1s ease;
                    -ms-transition:1s ease;
                    -o-transition:1s ease;
                    transition:1s ease;
                    } 
                    #share_us2:hover{
                    position:fixed;
                    right:0px;
                    -webkit-transition:1s ease;
                    -moz-transition:1s ease;
                    -ms-transition:1s ease;
                    -o-transition:1s ease;
                    transition:1s ease;
                    } 
                    #share_us a
                    {
                    color:#fff;
                    }
                </style>
            </p>
        </div>



<a href="tel:<?= $rowConfig['content_home3'] ?>" class="suntory-alo-phone suntory-alo-green hidden" id="suntory-alo-phoneIcon" style="left: 0px; bottom: 0px;" datasqstyle="{&quot;top&quot;:null}" datasquuid="4c643075-c7e6-4adf-8841-746771cfb831" datasqtop="640">
  <div class="suntory-alo-ph-circle"></div>
  <div class="suntory-alo-ph-circle-fill"></div>
  <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone" style="float: none;"></i></div>
</a>

<!-- CSS Call -->

<style type="text/css">
.suntory-alo-phone {
  background-color: transparent;
  cursor: pointer;
  height: 120px;
  position: fixed;
  transition: visibility 0.5s ease 0s;
    -webkit-transition: visibility 0.5s ease 0s;
    -moz-transition: visibility 0.5s ease 0s;
  width: 120px;
  z-index: 20000000 !important;
}
.suntory-alo-ph-circle {
  animation: 1.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim;
  background-color: transparent;
  border: 2px solid rgba(30, 30, 30, 0.4);
  border-radius: 100%;
  height: 100px;
  left: 0px;
  opacity: 0.1;
  position: absolute;
  top: 0px;
  transform-origin: 50% 50% 0;
  transition: all 0.5s ease 0s;
  width: 100px;
}
.suntory-alo-ph-circle-fill {
  animation: 2.3s ease-in-out 0s normal none infinite running suntory-alo-circle-fill-anim;
  border: 2px solid transparent;
  border-radius: 100%;
  height: 70px;
  left: 15px;
  position: absolute;
  top: 15px;
  transform-origin: 50% 50% 0;
  transition: all 0.5s ease 0s;
  width: 70px;
}
.suntory-alo-ph-img-circle {
  border: 2px solid transparent;
  border-radius: 100%;
  height: 50px;
  left: 25px;
  opacity: 0.7;
  position: absolute;
  top: 25px;
  transform-origin: 50% 50% 0;
  width: 50px;
  text-align: center;
}
.suntory-alo-phone.suntory-alo-hover, .suntory-alo-phone:hover {
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-active .suntory-alo-ph-circle {
  animation: 1.1s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
}
.suntory-alo-phone.suntory-alo-static .suntory-alo-ph-circle {
  animation: 2.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle, .suntory-alo-phone:hover .suntory-alo-ph-circle {
  border-color: #00aff2;
  opacity: 0.5;
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle {
  border-color: #EB278D;
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle {
  border-color: #bfebfc;
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle-fill, .suntory-alo-phone:hover .suntory-alo-ph-circle-fill {
  background-color: rgba(0, 175, 242, 0.9);
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle-fill, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle-fill {
  background-color: #EB278D;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle-fill {
  background-color: rgba(0, 175, 242, 0.9);
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-img-circle, .suntory-alo-phone:hover .suntory-alo-ph-img-circle {
  background-color: #00aff2;
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-img-circle, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-img-circle {
  background-color: #EB278D;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-img-circle {
  background-color: #00aff2;
}
@keyframes suntory-alo-circle-anim {
  0% {
    opacity: 0.1;
    transform: rotate(0deg) scale(0.5) skew(1deg);
  }
  30% {
    opacity: 0.5;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
  100% {
    opacity: 0.6;
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}
@keyframes suntory-alo-circle-img-anim {
  0% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  10% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}
@keyframes suntory-alo-circle-fill-anim {
  0% {
    opacity: 0.2;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
  50% {
    opacity: 0.2;
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    opacity: 0.2;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
}
.suntory-alo-ph-img-circle i {
  animation: 1s ease-in-out 0s normal none infinite running suntory-alo-circle-img-anim;
  font-size: 30px;
  line-height: 50px;
  color: #fff;
}
@keyframes suntory-alo-ring-ring {
  0% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  10% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }

</style>

<!-- phan google translate -->
    <script type="text/javascript" 
        src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
    </script>

    <script type="text/javascript">
        // $($('span:contains("Select Language")')[1]).html('English');
    </script>
    <!-- Code provided by Google -->
       <div id="google_translate_element" style="display: none;"></div>

    <!-- <div class="translation-icons">
       <a href="#" class="nl" data-placement="0">en</a>
       <a href="#" class="de" data-placement="1">zh</a>
   </div> -->
   <!-- //load the script of google   -->

<script>

function googleTranslateElementInit() {
new google.translate.TranslateElement({
//defaultLanguage: 'en', 
//pageLanguage: 'en', 
includedLanguages: 'vi,en', 
layout: google.translate.TranslateElement.InlineLayout.SIMPLE, 
autoDisplay: false,
multilanguagePage: true}, 'google_translate_element')
};
var clickCount = 0;

$(window).load(function () {

    $('.translation-icons a').click(function(e) {
    e.preventDefault();

    var d = 0;
    var $frame1 = $('.skiptranslate');
    var ten = '';
    for (var i=0;i<$frame1.length;i++) {
      // alert($frame1.eq(i).attr('title'));
      ten = $frame1.eq(i).attr('title');
      // alert(ten);
      if (ten == undefined) {
        // d = i;
        // break;
      } else {
        d = i;
        break;
      }
    }
// alert(d);
    var $frame = $('.skiptranslate').eq(d);

    if (!$frame.size()) {
        alert("Error: Could not find Google translate frame.");
        return false;
        }
// alert($frame.attr('title'));
     //find the a links element inside the gtranlate first frame
    var langs = $('.skiptranslate').eq(d).contents().find('td a');

     //the number of the language in flag-elements
    var placement = $(this).data('placement');

 //this again I need to adjust the mapping numbers of the languages in the flag elements        
    if (clickCount == 0){
        placement = $(this).data('placement');
        clickCount++;
        }
    //and finaly imitate click on the gtranslate element which is the same as the number of the language in flag link
    langs.eq(placement).find('span.text').click();
    return false;

});
});
</script>

</body>

</html>

