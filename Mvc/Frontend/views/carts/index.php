<?php
$total_cart=0;
$total_discount=0;
$total=0;
$total_product=0;
?>
<div class="container" style="margin-top: 10px;margin-bottom: 10px;">
    <h1>Giỏ Hàng</h1>
  <?php if(!empty($_SESSION["cart"])): ?>
    <div class="row">
      <div class="col-sm-12">
        <div class="template-cart">
          <form action="" method="post" id="shoppingCart">
            <div class="table-responsive">
              <table style="text-align: center;padding: .7em 1em;width: 100%" class="shop_table">
                  <thead>
                  <tr>
                      <th class="product-thumbnail">&nbsp;</th>
                      <th class="product-name">Sản phẩm</th>
                      <th class="product-price">Giá</th>
                      <th class="product-quantity">Số lượng</th>
                      <th class="product-quantity">Khuyến mãi</th>
                      <th class="product-subtotal">Tạm tính</th>
                      <th class="product-remove">&nbsp;</th>
                  </tr>
                  </thead>
                <tbody>
                <?php foreach ($_SESSION["cart"] as $product_id => $cart):
                  $slug=Helper::getSlug($cart["name"]);
                  $url_detail="chi-tiet-san-pham/$slug/$product_id";
                  ?>
                  <tr>
                    <td>
                        <a href="<?php echo $url_detail; ?>">
                          <img style="width: 110px;height: 100px" src="assets/uploads/products/<?php echo $cart["avatar"]; ?>"
                               class="img-responsive" />
                        </a>
                    </td>
                     <td>
                          <div>
                              <span>Tên sản phẩm</span><a style="text-align: right" href="<?php echo $url_detail; ?>"> <?php echo $cart["name"]; ?></a>
                          </div>
                      </td>
                    <td>
                      <?php echo number_format($cart["price"]); ?> VND
                    </td>
                    <td>
                      <input type="number" style="width: 50%;text-align: center;display: inherit" class="form-contro " name="<?php echo $product_id; ?>" value="<?php echo $cart["quality"]; ?>" min="1" >
                    </td>
                    <td>
                      <?php echo isset($cart["discount"])? $cart["discount"] : 0; ?> %
                    </td>
                    <td>
                      <?php
                      $total_item_discount=($cart["price"] * ($cart["discount"]/100)) * $cart["quality"] ;
                      $total_item=($cart["price"] * $cart["quality"]);
                      $total_product=$total_item-$total_item_discount;
                      echo number_format($total_product);
                      $total_cart += $total_item;
                      $total_discount += $total_item_discount;
                      $total +=$total_product;
                      ?>
                      VND
                    </td>
                      <td>
                          <a class="btn btn-default" href="xoa-san-pham/<?php echo $product_id; ?>"  onclick="return window.confirm('Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?');" data-id="2479395">
                              <i style="font-size: 25px" class="fa fa-times-circle"></em></i>
                          </a>
                      </td>
                  </tr>
                <?php endforeach; ?>
                </tbody>
                <tfoot style="text-align: right;" class="total-col">
                <tr>
                  <th colspan="8">

                    <input style="background-color: #333333;border-color: #333333;border-radius: 25px" class="btn btn-primary" type="submit" name="submit" class="button pull-right" value="Cập nhật giỏ hàng">
                  </th>
                </tr>
                </tfoot>
              </table>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12" style="text-align: right;font-size: 20px;">
        <div class="total-col">
          <div class="label__total">Thành tiền :  <?php echo number_format($total_cart); ?> VND</div>
          <div class="label__sale">Giảm giá : <?php echo number_format($total_discount); ?> VND</div>
          <div class="label__cart">Tổng số tiền thanh toán : <span><?php echo number_format($total); ?> VND</span></div>
          <div style="margin-top: 10px;">
            <a class="btn btn-success" href="thanh-toan"> Thanh toán giỏ hàng</a>
          </div>

        </div>
      </div>
    </div>
  <?php else: ?>
    <h3 style="text-align: center">Giỏ hàng của bạn trống</h3>
  <?php endif;?>
</div>
<!-- end main -->
<style>
    @media only screen and (max-width: 599px) {
        thead{
            display: none;
        }
        table{
            width: 100%;
            display: table;
        }
        td{
            display: table-row;
            width: 100%;
        }
    }
    .shop_table{
        border: 1px solid #ebebeb;
        border-radius: 0;
    }
    thead{
        background-color: #fbfbfb;
        border-bottom: 1px solid #ebebeb;
    }
    tr {
        border-bottom: 1px solid #ebebeb;
    }
    th,td {
        padding: 10px 0;
    }
</style>