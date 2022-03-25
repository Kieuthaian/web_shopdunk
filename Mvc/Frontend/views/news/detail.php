<div class="container">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php"> Trang chủ</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tin tức<?php echo $new['name']; ?></li>
    </ol>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-12 detail__news">
            <h3><?php echo $new['name']; ?></h3>
            <div class="datetime">
                <i class="fa fa-clock-o"></i> Ngày: <?php echo date('d/m/Y - H:i:s', strtotime($new['created_at'])); ?>
            </div>
            <div class="detail__summary"><?php echo $new['summary']; ?></div>
            <?php if (!empty($new['avatar'])): ?>
                <div class="detail__news__img">
                    <img src="Assets/Uploads/news/<?php echo $new['avatar']; ?>" alt="">
                </div>
            <?php endif; ?>

            <div class="detail__news_content">SẢN PHẨM:
                <?php echo $new['content']; ?></div>
        </div>
<!--        <div class="col-sm-3">-->
<!--            --><?php
//            require_once 'Mvc/frontend/controllers/NewsController.php';
//            $news_controller = new NewsController();
//            $news_controller->NewsHot();
//            ?>
<!--            <div style="margin-top: 20px;">-->
<!--                <img width="100%" style="border-radius: 3px;" src="Assets/frontend/images/blog-sidebar (1).webp" alt="">-->
<!--            </div>-->
<!--        </div>-->
    </div>
</div>

