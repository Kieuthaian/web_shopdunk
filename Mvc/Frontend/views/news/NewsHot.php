
<?php if(!empty($news)): ?>
<div class="container">
    <div class="row">
        <div class="title">
            <h2>Yêu Apple, đến ShopDunk</h2>
            <div class="image_title">
        <?php foreach ($news as $new):
            $news_title = $new['name'];
            $new_slug = Helper::getSlug($news_title);
            $new_id = $new['id'];
            $news_link = "blogs/$new_slug/$new_id";
            ?>
                <div class="ND_title">
                    <a target="_blank" href="<?php  echo $news_link; ?>">
                        <img src="Assets/Uploads/News/<?php echo $new['avatar']; ?>" alt="">
                        <div class="title__news"><?php echo $new['name']; ?></div>
                    </a>
                </div>
        <?php endforeach; ?>
                <div style="clear: both"></div>
            </div>

        </div>
    </div>
</div>
<?php endif; ?>
