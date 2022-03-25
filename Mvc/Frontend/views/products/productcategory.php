<main>
  <input type="hidden" class="get_id" value="<?php echo $_GET['id']; ?>">
  <div class="container">
    <div class="title__category">
      <div>Danh mục : <span style="font-size: 30px;line-height: 50px"><?php echo $category["name"]; ?></span></div>
    </div>
    <div class="check__price">
      <div>
        <div class="">
          <ul style="padding: 10px 0px 10px 0px" class="">
            <li><label class="producers"> Từ 1 triệu - 5 triệu
                <input type="checkbox" value="0" name="price[]"  class="common_selector price">
                <span class="w3docs"></span>
              </label></li>
            <li><label class="producers"> Từ 5 triệu - 10 triệu
                <input type="checkbox" value="1" name="price[]"  class="common_selector price">
                <span class="w3docs"></span>
              </label></li>
            <li><label class="producers"> Từ 10 triệu - 15 triệu
                <input type="checkbox" value="2" name="price[]"  class="common_selector price">
                <span class="w3docs"></span>
              </label></li>
            <li><label class="producers"> Từ 15 triệu - 20 triệu
                <input type="checkbox" value="3" name="price[]"  class="common_selector price">
                <span class="w3docs"></span>
              </label></li>
            <li><label class="producers"> Trên 20 triệu
                <input type="checkbox" value="4" name="price[]"  class="common_selector price">
                <span class="w3docs"></span>
              </label>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div style="clear: both"></div>
  </div>
  <hr>
  <div class="container filter_data">
    <div class="row">
      <?php if (!empty($products)):
        foreach ($products as $product):
          $product_title = $product['title'];
          $product_slug = Helper::getSlug($product_title);
          $product_id = $product['id'];
          $product_link = "chi-tiet-san-pham/$product_slug/$product_id";
          ?>
          <div class="product__main">
            <div class="back_product">
              <a class="product__link" href="<?php echo $product_link; ?>">
                <div class="product__main__left">
                  <div class="logo__apple">
                    <img src="Assets/frontend/images/Logo.png" alt="">
                  </div>
                  <div class="product__image__title">
                    <img src="Assets/uploads/products/<?php echo $product['avatar'] ?>" alt="">
                  </div>
                  <ul class="product__rating">
                      <?php
                      $rating=0;
                      if($product["total_rating"] > 0)
                      {
                          $rating=round($product["total_number_rating"]/ $product["total_rating"],2);
                      }
                      ?>
                      <?php for($i=1;$i<=5;$i++): ?>
                          <i class="fa fa-star <?php if( $i <= $rating) echo "active__star"; else  echo "" ?>"></i>
                      <?php endfor; ?>
                  </ul>
                    <?php if(!empty($product['total_rating'])): ?>
                  <div class="number__rating"><?php echo $product['total_rating']; ?> đánh giá</div>
                    <?php endif; ?>
                  <div class="capacity">RAM : <span class="product__capacity"><?php echo $product['ram'] ?> GB</span>
                  </div>
                  <div class="capacity">Dung lượng : <span class="product__capacity"><?php echo $product['capacity'] ?>
                      GB</span></div>
                </div>
                <!--          -->
                <div class="product__main__right">
                  <div class="product__title">
                    <h2><?php echo $product["title"] ?></h2>
                  </div>
                  <?php if ($product["discount"] > 0) : ?>
                    <span class="product__price">

                <?php echo number_format($product["price"] - ($product["price"] * ($product["discount"] / 100))); ?> đ
            </span>
                    &nbsp;&nbsp;
                    <span class="product__price__sale">
                     <?php echo number_format($product["price"]); ?> đ
                  </span>

                  <?php else: ?>
                    <span class="product__price">
                <?php echo number_format($product["price"]); ?> đ
            </span>
                  <?php endif; ?>
                  <div class="product__guarantee">
                    <i class="fa fa-check-circle"></i> Bảo hành 12 tháng
                  </div>
                  <?php if (!empty($product['present'])): ?>
                    <div class="product__sale">
                      <div class="title">
                        Khuyến mại đặc biệt :
                      </div>
                      <div class="product__content">
                        <?php echo $product["present"]; ?>
                      </div>
                    </div>
                  <?php endif; ?>
                  <div style="text-align: center;margin: 20px 0px 30px 0px">
                    <a class="product__detail" href="<?php echo $product_link; ?>">XEM CHI TIẾT</a>
                  </div>
                </div>
                <div style="clear: both"></div>
                <div class="product__title__desc">
                  <?php echo $product['title']; ?> giá tốt nhất:
                  <span class="product__price_desc">
             <?php if ($product["discount"] > 0) : ?>
               <?php echo number_format($product["price"] - ($product["price"] * ($product["discount"] / 100))); ?> đ
             <?php else: ?>
               <?php echo number_format($product["price"]); ?> đ
             <?php endif; ?>
          </span>
                </div>
              </a>
            </div>
          </div>
          <div style="clear: both"></div>
        <?php endforeach;
      else: ?>
        <div style="margin: 30px;text-align: center;"><h5>Không có sản phẩm nào thuộc danh mục này !!!</h5></div>
      <?php endif; ?>
    </div>
  </div>

</main>
<style>
    @media only screen and (max-width: 493px) {
        .check__price, .title__category {
            width: 100% !important;
        }
    }
</style>