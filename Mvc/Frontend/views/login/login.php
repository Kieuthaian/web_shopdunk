<div class="container pt-40">
  <div class="row">
    <div class="col-sm-6 login-left" >
      <p> <i class="fa fa-check"></i> Vui lòng đăng nhập để thuận tiện hơn trong việc quản lý Đơn hàng, Thực hiện mua sắm cũng như việc lưu trữ các sản phẩm yêu thích.</p>
      <p style="margin-top: 10px !important;"><i class="fa fa-check"></i>   Đăng nhập sẽ giúp anh/chị dễ dàng trong việc tích lũy mua sắm và có cơ hội nhận được nhiều khuyến mãi hấp dẫn hơn từ ShopDunk.</p>
    </div>
    <div class="col-sm-6">
      <div class=" dangnhap" >
        <p style="font-size: 24px;text-align: center;text-transform: uppercase;font-family: 'Times New Roman';font-weight: bold;">Đăng Nhập</p>
        <div style="margin: auto; " class="h5-line pt-10"></div>
      </div>
      <br>
      <form action="" method="POST" id="login">
        <div class="form-group">
          <input type="text" name="email" id="login_email" class="form-control" placeholder="Nhập Email... *">
          <br>
          <input type="password" name="password" class="form-control" placeholder="Nhập mật khẩu của bạn ... * ">
        </div>
        <div class="form-group mt-20 mp-15" >
          <input type="submit" value="Đăng nhập" name="submit" class="btn btn-success form-control"
        </div>
      </form>
      <div style="margin-top: 10px;" class="resgier__dangnhap">
        <p >Bạn chưa có tài khoản, tạo <a style="color: red !important;" href="dang-ky">tài khoản</a> ngay</p>
      </div>
    </div>
  </div>
</div>
</div>
<script>
    $("#login").validate({
        rules:  {
            email :{
                required: true,
                email: true
            },
            password: {
                required: true,
            },
        },
        messages :
            {
                email :{
                    required: " * Email không được để trống",
                    email: " *T ên đăng nhâp phải đúng định dạng là Email"
                },

                password: {
                    required: " * Mật khẩu không được để trống",
                },
            }
    });
</script>
