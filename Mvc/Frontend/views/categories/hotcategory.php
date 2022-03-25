<div class="container">
    <div class="row row_banner">
        <div class="banner">
            <div class="banner_iphone">
                <?php if(!empty($categories)):
                foreach($categories as $category):
                $category_name = $category['name'];
                $category_slug = Helper::getSlug($category_name);
                $category_id = $category['id'];
                $category_link = "san-pham/$category_slug/$category_id";
                ?>
                <div class="image">
                    <a href="<?php echo $category_link; ?>">
                        <div class="avatar_images">
                            <img src="Assets/Uploads/categories/<?php echo $category["avatar"]?>" alt="<?php echo $category["name"]; ?>">
                        </div>
<!--                        <div class="title_hotcategory">--><?php //echo $category["name"]; ?><!--</div>-->
                    </a>
                  <div class="category__text"><a href="<?php echo $category_link; ?>"><?php echo $category["name"]; ?></a></div>
                </div>
                <div style="clear: both"></div>
                <?php
                endforeach;
                endif; ?>
            </div>
            <hr>
        </div>
    </div>
</div>