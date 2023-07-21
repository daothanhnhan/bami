<?php 
	$home_news = $action->getList('news', '', '', 'news_id', 'desc', $trang, '10', 'home', 'home');
?>

<div class="home-news">
<?php 
foreach ($home_news['data'] as $item) { 
	$newscat = $action->getDetail('newscat', 'newscat_id', $item['newscat_id']);
?>
	<div class="row box">
		<div class="col-md-4">
			<a href="/<?= $item['friendly_url'] ?>">
				<img src="/images/<?= $item['news_img'] ?>" alt="tin tức">
			</a>
		</div>
		<div class="col-md-8 info">
			<h2><a href="/<?= $item['friendly_url'] ?>" title=""><?= $item['news_name'] ?></a></h2>
			<p><?= $item['news_des'] ?></p>
		</div>
		
		<div style="" class="post-category">
			Chuyên mục: <a href="/<?= $newscat['friendly_url'] ?>" rel="category tag"><?= $newscat['newscat_name'] ?></a>
		</div>
	</div>
<?php } ?>
<div class="text-center">
	<?= $home_news['paging'] ?>
</div>
</div>