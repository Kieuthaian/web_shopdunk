<?php if(!empty($products)):
foreach ($products as $product):
$product_title = $product['title'];
$product_slug = Helper::getSlug($product_title);
$product_id = $product['id'];
$product_link = "chi-tiet-san-pham/$product_slug/$product_id";
?>
  <div style="border-bottom: 1px solid #dadada">
    <a href="<?php echo $product_link; ?>">
      <div class="left__product"><img src="Assets/Uploads/products/<?php echo $product['avatar']; ?>" alt=""></div>
      <div class="right__product">
        <p><?php echo $product['title']; ?></p>
        <?php if($product["discount"] > 0): ?>
          <p>
            <span style="color: red;font-weight: bold" ><?php echo number_format($product["price"] - ($product["price"] * ($product["discount"] / 100))); ?> ₫</span>
            <span style="text-decoration: line-through"><?php echo number_format($product["price"]); ?> ₫</span></p>
        <?php else: ?>
          <p><span style="color: red;font-weight: bold"><?php echo number_format($product["price"]); ?> ₫</span></p>
        <?php endif; ?>
      </div>
      <div style="clear: both"></div>
    </a>
  </div>
<?php endforeach; else: ?>
  <div style="text-align: center">Không có sản phẩm nào !!!</div>
<?php endif; ?>