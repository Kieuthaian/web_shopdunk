<section>
  <div class="container body_chitietsanpham">
    <div class="title_home">
      <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
          <?php
          $category_id=$product['category_id'];
          $category_name=$product["category_name"];
          $category_slug=Helper::getSlug($category_name);
          $category_link="san-pham/$category_slug/$category_id";
          ?>
          <li class="breadcrumb-item"><a href="<?php echo $category_link; ?>"><?php echo $product['category_name']; ?></a></li>
          <li class="breadcrumb-item active" aria-current="page"><?php echo $product['title']?></li>
        </ol>
      </nav>
      <div class="title_tieude">
        <p class="name_iphone"><?php echo $product['title']?></p>
        <div class="star">
                <span>
                     <?php
                     $rating=0;
                     if($product["total_rating"] > 0)
                     {
                         $rating=round($product["total_number_rating"]/ $product["total_rating"],2);
                     }
                     ?>
                    <?php for($i=1;$i<=5;$i++): ?>
                        <i class="fa fa-star <?php if( $i <= $rating) echo "active__star"; else  echo "" ?>""></i>
                    <?php endfor; ?>
                </span>
        </div>
          <?php if(!empty($product['total_rating'])): ?>
        <div style="margin-top: 8px;margin-left: 10px;">(<?php echo $product['total_rating']; ?>)  khách hàng đã đánh giá</div>
          <?php endif; ?>
      </div>
    </div>
    <hr style="margin-top: 0 !important;">
    <div class="san_pham">
      <div class="row">
        <div class="col-sm-4 sp_img">
          <img src="../img/img_iphone/Logo.png" width="20%" alt="">
          <div class="block_img"><img src="assets/uploads/products/<?php echo $product["avatar"];?>" id="img-main" alt=""></div>
          <ul class="des_img">
            <?php if(!empty($product_images)):
              foreach ($product_images as $image): ?>
                <li> <img src="Assets/Uploads/product_images/<?php echo $image['avatar'] ?>" id="<?php echo $image['id'] ?>" alt="" onclick="changeImage(<?php echo $image['id'] ?>)"></li>
              <?php endforeach;
            endif;?>
          </ul>
        </div>
        <div class="col-sm-5">
          <?php if($product['discount'] > 0): ?>
            <p ><span class="price_sp"><?php echo number_format($product["price"]-($product["price"]*($product["discount"]/100)));   ?>đ </span>
              <span class="line-through"> <?php  echo number_format($product["price"]); ?>đ</span>
              <span class="discount"> <?php echo $product["discount"]; ?>%</span></p>
          <?php else: ?>
            <p ><span class="price_sp"><?php echo number_format($product["price"]); ?>đ</p>
          <?php endif; ?>
          <div style="margin: 10px 0px;font-size: 16px;">Danh mục sản phẩm : <span class="product__category_title">
                  <?php echo $product["category_name"]; ?></span>
              <?php if($product['quality'] > 10): ?>
            <span style="margin-left: 35px;color: green"><i class="fa fa-check"></i> Còn hàng</span>
              <?php elseif($product['quality'] <= 10 && $product['quality'] > 0): ?>
              <span style="margin-left: 35px;color: green"><i class="fa fa-check"></i> Còn <?php echo $product['quality'] ?> sản phẩm</span>
              <?php else: ?>
              <span style="margin-left: 35px;color: red"><i class="fa fa-check"></i> Hết hàng</span>
              <?php endif; ?>
          </div>
          <div style="margin: 10px 0px;font-size: 16px">Dung lượng : <span class="cavani_product"><?php echo $product["capacity"] ?>GB</span> </div>
          <?php if(!empty($product['present'])): ?>
          <div class="qua-km-new">
            <label>Quà khuyến mại :</label>
            <div style="padding:5px 10px;border: 1px solid #dadada;">
              <ul>
                  <?php echo $product['present'] ?>
              </ul>
            </div>
          </div>
          <?php endif; ?>
          <div class="by_phone">
            <?php if($product['quality'] > 0): ?>
            <a href="them-vao-gio-hang/<?php echo $product["id"];?>">
              <div class="by_now">
                <span> Mua Ngay </span><br>Giao hàng tận nơi hoặc tại cửa hàng
              </div>
            </a>
            <?php else: ?>
              <a href="tel:0392831499">
                <div class="by_now1">
                  <span> Liên hệ </span><br>với cửa hàng để biết thêm chi tiết
                </div>
              </a>
            <?php endif; ?>
            <div class="tra_gop">
              <div class="tin_dung">
                <p class="tragop">TRẢ GÓP THẺ TÍN DỤNG
                  <br>
                  <span class="initial">Lãi suất 0%</span>
                </p>
              </div>
              <div class="tin_dung">
                <p class="tragop">MUA TRẢ GÓP
                  <br>
                  <span class="initial">Lãi suất ưu đãi</span>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="bao_hanh">
            <img src="Assets/frontend/images/BHKC-1.jpg" alt="">
            <img src="Assets/frontend/images/applecare.jpg" style="margin-top: 10px" alt="">
          </div>
        </div>
      </div>
    </div>
    <hr>
    <div class="chitietsanpham">
      <div class="row">
        <div class="col-sm-7 mota_sp">
          <section class="product-group-desc grid-product grid-product-category">
            <strong style="font-size: 20px">Đánh giá chi tiết <?php echo $product["title"]; ?></strong>
            <div style="margin: 10px 0px; 30px 0px">
              <?php echo $product["content"]; ?>
              <p>=&gt; Thông tin chi tiết liên hệ hotline&nbsp;1900.6626&nbsp;hoặc truy cập website&nbsp;<a href="https://shopdunk.com/">shopdunk.com</a></p>
            </div>
          </section>
        </div>
        <div class="col-sm-5" style="margin: 20px 0px 50px 0px">

          <!-- thông số kỹ thuật -->
          <div class="detail_presnt">
            <h2>Thông số kỹ thuật</h2>
            <ul class="text-gray-11 full-width font13">
            <?php echo $product["summary"]; ?>
            </ul>
          </div>

        </div>
      </div>
        <hr>
        <?php if(isset($_SESSION["user_account"])): ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="content__rating">
                    <p class="content__title">Chọn đánh giá của bạn :</p>
                    <ul class="">
                        <?php for($i=1;$i<=5;$i++): ?>
                            <li class="list-star"><i class="icon-star fa fa-star" data-key="<?php echo $i; ?>"></i></li>
                            <input type="hidden" value="" name="number_rating" class="number_rating">
                        <?php endfor; ?>
                        <span class="list-text">Tốt</span>
                    </ul>
                    <div>
                        <lable>Viết đánh giá cho sản phẩm:</lable>
                        <textarea name="comment" class="form-control" id="content_rating"></textarea>
                        <input  type="hidden" name="name" id="name_rating" value="<?php echo isset($_SESSION['user_account']) ? $_SESSION['user_account']['fullname'] : '' ?>">
                    </div>
                    <br>
                    <a style="color: white !important;" class="submit_rating btn btn-success" href="danh-gia/<?php echo $product["id"]; ?>">Gửi đánh giá</a>
                </div>
            </div>
        </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="list__rating">
                    <div class="bannner_rating"><i class=" fa fa-star"></i> Tổng số đánh giá</div>
                    <div style="border: 2px solid #dadada;padding: 5px 15px">
                        <?php if(!empty($ratings)): ?>
                        <?php foreach ($ratings as $rating): ?>
                        <div class="list__content">
                            <p class="list__title">
                               <strong><?php echo $rating["name"]; ?></strong>
                            </p>
                            <p class="datetime"> Ngày
                                <?php echo date('d/m/Y - H:i:s', strtotime($rating['created_at'])); ?>
                            </p>
                            <ul>
                                <?php for($i=1;$i<=5;$i++): ?>
                                    <li class="list-star"><i class="fa fa-star  <?php if( $i <= $rating["number"]) echo "active__star"; else  echo "" ?>""></i></li>
                                <?php endfor; ?>
                            </ul>
                            <div style="font-size: 13px;">
                                <?php echo $rating['content']; ?>
                            </div>
                        </div>
                            <?php endforeach; else: ?>
                            <div style="text-align: center;">Sản phẩm này chưa có đánh giá !</div>
                        <?php endif; ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<style>
    th{
        width: 50%;
        padding: 5px;
        border: 1px solid #dadada;
    }
</style>