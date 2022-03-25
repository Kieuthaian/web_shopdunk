<?php if (!empty($products)): ?>
  <div class="new_product_area mb-50">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="section_title">
            <h2>SẢN PHẨM <span>MỚI</span></h2>
          </div>
        </div>
      </div>
      <div class="new_product_wrapper">
        <div class="row">
          <?php foreach ($products as $product):
            $product_title = $product['title'];
            $product_slug = Helper::getSlug($product_title);
            $product_id = $product['id'];
            $product_link = "chi-tiet-san-pham/$product_slug/$product_id";
            ?>
            <div class="col-lg-3 col-m-3 col-sm-6 col-6" style="border:1px solid #dadada">
              <div class="single_product_left_sidebar">
                <a href="<?php echo $product_link; ?>">
                  <div class="single_product">
                    <div class="product_thumb">
                      <a href="<?php echo $product_link; ?>"><img
                            src="Assets/Uploads/products/<?php echo $product['avatar']; ?>" alt=""></a>
                      <?php if ($product["discount"] > 0): ?>
                        <div class="label_product">
                          <span class="label_sale"><?php echo $product["discount"]; ?> %</span>
                        </div>
                      <?php endif; ?>
                    </div>
                    <div class="product_content">
                      <div class="product_name">
                        <h3><a href="<?php echo $product_link; ?>"><?php echo $product['title']; ?></a></h3>
                      </div>
                      <div class="product_rating">
                        <ul>
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
                            <?php if(!empty($product['total_rating'])): ?>
                                <li style="color: black;margin-left: 5px">(<?php echo $product['total_rating']; ?>) đánh giá</li>
                            <?php endif; ?>
                        </ul>
                      </div>
                      <?php if ($product["discount"] > 0): ?>
                        <div class="price_box">
                          <span class="current_price">  <?php echo number_format($product["price"] - ($product["price"] * ($product["discount"] / 100))); ?> VNĐ</span>
                          <span class="old_price"><?php echo number_format($product["price"]); ?> VNĐ</span>
                        </div>
                      <?php else: ?>
                        <div class="price_box">
                          <span class="current_price">  <?php echo number_format($product["price"]); ?> VNĐ</span>
                        </div>
                      <?php endif; ?>
                      <div class="action_links">
                        <ul>
                          <?php if($product['quality'] > 0): ?>
                          <li class="add_to_cart"><a href="them-vao-gio-hang/<?php echo $product['id']; ?>" title=""
                                                     data-original-title="Thêm vào giỏ hàng"><i
                                  class="fa fa-shopping-cart"></i> Mua ngay</a></li>
                        <?php else: ?>
                            <li class="add_to_cart"><a href="tel:0392831499
" title=""
                                                       data-original-title="Thêm vào giỏ hàng"><i
                                    class="fa fa-mobile-phone"></i>Liên hệ</a></li>
                        <?php endif; ?>
                        </ul>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
