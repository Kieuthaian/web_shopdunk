<div style="background-color: #333333; ">
    <nav class="navbar navbar-expand-lg display_none" >
        <div class="container header_top">
            <div class="cot1"><a href="index.php"><img src="Assets/Frontend/images/logo-white.png"
                                                       style="padding-top:5px " alt=""></a></div>
            <div class="cot2"><img src="Assets/Frontend/images/apple.png" width="7%" alt=""></div>
            <div class="cot3">
                <div class="hotlline"><i class="fa fa-phone"></i><span><a href="tel:0392831499">0392831499</a></span>
                </div>
                <?php if (!isset($_SESSION['user_account'])): ?>
                    <div class="user__login">
                        <ul class="user__father">
                            <li><a href="dang-nhap">Đăng Nhập</a></li>
                            <li><a href="">|</a></li>
                            <li><a href="dang-ky">Đăng ký</a></li>s
                        </ul>
                    </div>
                <?php else: ?>
                    <div class="user__login">
                        <ul>
                            <li class="user__father">
                                <a href=""><i
                                            class="fa fa-user"></i><?php echo $_SESSION['user_account']['fullname']; ?>
                                </a>
                                <ul class="user__childen">
                                    <li><a href="lich-su-mua-hang">Lịch sử đơn hàng</a></li>
                                    <li><a href="">/</a></li>
                                    <li><a href="logout">Đăng xuất</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                <?php endif; ?>
            </div>

        </div>
    </nav>
    <?php
    require_once "Mvc/Frontend/controllers/CategoryController.php";
    $category_controller = new CategoryController();
    $category_controller->index();
    ?>
</div>
<style>
    @media only screen and (max-width: 991px){
        .display_none{
            display: none;
        }
    }
</style>