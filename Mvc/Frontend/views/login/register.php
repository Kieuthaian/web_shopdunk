<div class="container pt-40">
  <div class="row">
    <div style="width: 500px;margin: auto;">
      <div class=" dangnhap" >
        <p style="font-size: 24px;text-align: center;text-transform: uppercase;font-family: 'Times New Roman';font-weight: bold;">Đăng Ký Tài Khoản</p>
        <div style="margin: auto; " class="h5-line pt-10"></div>
      </div>
      <br>
      <form action="" method="POST" id="register_form">
        <div class="footer-support">
          <div class="form-group">
            <input type="text" name="fullname" class="form-control"  placeholder="Nhập họ tên ... *">
          </div>
          <div class="form-group">
            <input type="text" name="email" id="register_email" class="form-control"  placeholder="Nhập Email ... *">
            <p id="emailerror"></p>
          </div>
          <div class="form-group">
            <input type="text" name="phone"  id="register_phone" class="form-control"  placeholder="Nhập số diện thoại ... *">
            <p id="phoneerror"></p>
          </div> <div class="form-group">
            <input type="text"  class="form-control"  name="address"  placeholder="Nhập địa chỉ ... ">
          </div>

          <div class="form-group">
            <input type="password"  class="form-control"  name="password"  placeholder="Nhập mật khẩu ... ">
          </div>
          <div class="form-group">
            <input type="hidden" value="0" name="status" class="form-control"  />
          </div>
        </div>
        <p style="text-align: right;font-style: italic;color: red;font-size: 11px;">* Thông tin bắt buộc</p>
        <div class="form-group" style="margin-top: 15px;" >
          <input type="submit" value="Đăng ký" name="submit" id="button_submit" class=" btn btn-success form-control"
        </div>
      </form>
      <div style="margin-top: 15px;">
        <p >Bạn đã có tài khoản, <a style="color: red !important;font-weight: bold" href="dang-nhap">Đăng Nhập</a> ngay</p>
      </div>

      <div>
      </div>
    </div>
  </div>
</div>
</div>

