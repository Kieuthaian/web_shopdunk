<nav class="navbar navbar-expand-lg navbar-light bg display_none">
  <div class="container ">
    <div class="collapse navbar-collapse" id="navbarNav">
      <!--   <div class="container" >-->
      <ul class="navbar-nav" style="justify-content: center;display: flex">
        <li class="nav-item">
          <a class="nav-link" href="index.php"><img src="Assets/Uploads/categories/9d47749ccf1e3e3822231c6485234c4c.Logo_512x512-pcepq9gf8gpm1juk1e0snj0r3vazxj4o0yh8fc7lra.png" alt=""></a>
        </li>
        <?php if (!empty($categories)):
          foreach ($categories as $category):
            $category_name = $category['name'];
            $category_slug = Helper::getSlug($category_name);
            $category_id = $category['id'];
            $category_link = "san-pham/$category_slug/$category_id";
            ?>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo $category_link; ?>"><?php echo $category["name"]; ?></a>
            </li>
          <?php
          endforeach;
        else: ?>
          <li class="nav-item">

          </li>
        <?php endif; ?>

        <?php if (!empty($categoryNews)):
          foreach ($categoryNews as $category):
            $category_name = $category['name'];
            $category_slug = Helper::getSlug($category_name);
            $category_id = $category['id'];
            $category_link = "san-pham/$category_slug/$category_id";
            ?>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo $category_link; ?>"><?php echo $category["name"]; ?></a>
            </li>
          <?php
          endforeach;
        else: ?>
          <li class="nav-item">

          </li>
        <?php endif; ?>
        <li class="nav-item">
          <a class="nav-link" href="lien-he">Liên Hệ</i></a>
        </li>
        <li class="nav-item icon-search">
          <i class="fa fa-search"></i>
        </li>
        <?php $total = 0;
        if (isset($_SESSION["cart"]) && !empty($_SESSION["cart"])):
          {
            foreach ($_SESSION["cart"] as $list) {
              $total += $list["quality"];
            }
          }
          ?>
          <li class="nav-item icon-shopping">
            <a href="gio-hang-cua-ban"><i class="fa fa-shopping-cart"></i> Giỏ hàng (<?php echo $total; ?>)</a>
          </li>
        <?php else: ?>
          <li class="nav-item icon-shopping">
            <a href="gio-hang-cua-ban"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a>
          </li>
        <?php endif; ?>
        <div class="search hidden">
          <form action="" method="POST" id="search__form_input">
            <input type="text" placeholder="Tìm kiếm sản phẩm ..." id="product__search">
            <a href=""><i class="submit-search fa fa-search" aria-hidden="true"></i></a>
            <div class="result__product">
              <?php require_once 'Mvc/frontend/controllers/ProductController.php';
              $obj_controller = new ProductController();
              $obj_controller->searchProductName();
              ?>
            </div>
          </form>
        </div>
      </ul>
    </div>
  </div>
</nav>

<div class="mobile">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="btn_mobile">
            <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
               <i class="fa fa-bars" style="color: white;font-size: 25px"></i>
            </button>
        </div>
        <div class="logo_mobile">
            <a class="navbar-brand" href="index.php"><img src="Assets/Uploads/categories/Logo_512x512-pcepq9gff1j2s92m785gyxui9gxqqam0wq60cjs6rg.png" alt=""></a>
        </div>
        <div class="user">
            <?php if (!isset($_SESSION['user_account'])): ?>
                <div class="user__login">
                    <ul class="user__father">
                        <li><a href="dang-nhap">Đăng Nhập</a></li>
                        <li><a href="">|</a></li>
                        <li><a href="dang-ky">Đăng ký</a></li>
                    </ul>
                </div>
            <?php else: ?>
                <div class="user__login">
                    <ul class="d-flex align-items-center justify-content-end">
                        <li class="user__father">
                                <i class="fa fa-user"></i>
                            <ul class="user__childen">
                                <li><?php echo $_SESSION['user_account']['fullname']; ?></li>
                                <li><a style="color: black !important;" href="lich-su-mua-hang">Lịch sử đơn hàng</a></li>
                                <li><a style="color: black !important;" href="logout">Đăng xuất</a></li>
                            </ul>
                        </li>
                        <li style="margin-top: 10px;margin-left: 20px"><a href="gio-hang-cua-ban"><i class="fa fa-shopping-bag"></i></a></li>
                    </ul>
                </div>
            <?php endif; ?>
        </div>
    </nav>
    <?php
    require_once "Mvc/Frontend/controllers/CategoryController.php";
    $category_controller = new CategoryController();
    $category_controller->index();
    ?>
</div>
<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
        <ul class="navbar-nav" style="justify-content: center;display: flex">
            <?php if (!empty($categories)):
                foreach ($categories as $category):
                    $category_name = $category['name'];
                    $category_slug = Helper::getSlug($category_name);
                    $category_id = $category['id'];
                    $category_link = "san-pham/$category_slug/$category_id";
                    ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo $category_link; ?>"><?php echo $category["name"]; ?></a>
                    </li>
                <?php
                endforeach;
            else: ?>
                <li class="nav-item">

                </li>
            <?php endif; ?>

            <?php if (!empty($categoryNews)):
                foreach ($categoryNews as $category):
                    $category_name = $category['name'];
                    $category_slug = Helper::getSlug($category_name);
                    $category_id = $category['id'];
                    $category_link = "san-pham/$category_slug/$category_id";
                    ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo $category_link; ?>"><?php echo $category["name"]; ?></a>
                    </li>
                <?php
                endforeach;
            else: ?>
                <li class="nav-item">

                </li>
            <?php endif; ?>
            <li class="nav-item">
                <a class="nav-link" href="lien-he">Liên Hệ</i></a>
            </li>
                    <div class="result__product">
                        <?php require_once 'Mvc/frontend/controllers/ProductController.php';
                        $obj_controller = new ProductController();
                        $obj_controller->searchProductName();
                        ?>
                    </div>
                </form>

        </ul>
    </div>
    </div>
</div>

<style>
    @media only screen and (max-width: 493px){
        .user__father li a{
            font-size: 13px !important;
        }
    }
    @media only screen and (max-width: 991px){
        .login_mobile li{
            display: inline-block;
        }
        .login_mobile li a{
            font-size: 15px;
            color: white !important;
        }
        .nav-item{
            text-align: center;
            border-style: solid;
            border-color: #fff;
            border-bottom-width: 1px;
        }
        .btn_mobile,.logo_mobile,.user{
            width: 33.33333%;
        }
        .logo_mobile{
            text-align: center;
        }
        .user{
            text-align: right;
        }
        .user i {
            font-size: 30px;
            color: white;
        }
        .user__father li a{
            font-size: 16px;
            color: white !important;
        }
        body{
            position: relative;
        }
        .user__father{
            padding-top: 10px;
        }
        .navbar-brand img{
            width: 100%;
        }
        .mobile{
            display: block;
            background-color: #333333;
        }
        .navbar-nav {
            display: inline !important;
        }
        #navbarNavAltMarkup{
            position: absolute;
            z-index: 9999;
            background-color: #333333;
            width: 100%;
        }
        .icon-shopping{
            margin-left: 0px;
        }
    }
</style>