<?php
require_once 'Mvc/backend/models/ShoppingCart.php';
require_once 'Mvc/backend/models/User.php';
require_once 'Mvc/backend/models/Product.php';
require_once 'Mvc/backend/models/report.php';
 class HomeController extends Controller{
     public function index(){
       $cart_model=new ShoppingCart();
       $countCart=$cart_model->countOrder0();
       $user_model=new User();
       $countUser=$user_model->countUser();
       $countNoUser=$user_model->CountNoUser();
       $product_model=new Product();
         $report_model=new report();
         $products=$report_model->hotProduct();
       $countProductOut=$product_model->countProductOut();
       $output=[
           'countOrder0' => $countCart,
          "countUser" => $countUser,
         "countNoUser" => $countNoUser,
           "countProductOut" => $countProductOut,
           "products" => $products
       ];
         $this->content=$this->render('Mvc/Backend/views/home/home.php',$output);
         require_once 'Mvc/Backend/views/layouts/main.php';
     }
     public  function OrderNoUser(){
       $user_model=new User();
       $oders=$user_model->OrderNoUser();
       $output=[
           "oders" => $oders,
           ];
       $this->content=$this->render('Mvc/Backend/views/Shoppingcart/OrderNoUser.php',$output);
       require_once 'Mvc/Backend/views/layouts/main.php';
     }
   public  function OrderDetail(){
     $order_model=new ShoppingCart();
     $id=$_GET['id'];
     $order = $order_model->order($id);
     $oders=$order_model->listProduct($id);
     $output=[
         "oders" => $oders,
       'order' => $order
     ];
     $this->content=$this->render('Mvc/Backend/views/Shoppingcart/DetailOrder.php',$output);
     require_once 'Mvc/Backend/views/layouts/main.php';
   }
   public function send_status()
   {
     if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
       $_SESSION['error'] = 'ID không hợp lệ';
       header('Location: index.php?area=backendcontroller=ShoppingCart');
       exit();
     }
     $id = $_GET["id"];
     $order_model = new ShoppingCart();
     $order_model->updated_at = date('Y-m-d H:i:s');
     $is_update = $order_model->sentStatusOrder($id);
     if ($is_update) {
       $_SESSION['success'] = 'Đã xác nhân đơn hàng';
     } else {
       $_SESSION['error'] = 'Đơn hàng có vấn đề';
     }
     header('Location: index.php?area=backend&controller=home&action=OrderNoUser');
     exit();
   }
   public function ProductOut(){
       $product_model=new Product();
        $products=$product_model->ProductOut();
     $output=[
         "products" => $products,
     ];
     $this->content=$this->render('Mvc/Backend/views/products/productsOut.php',$output);
     require_once 'Mvc/Backend/views/layouts/main.php';
   }
     public function SellingProduct(){
         $report_model=new report();
         $products=$report_model->sellingProducts();
         $this->content=$this->render("Mvc/backend/views/reports/SellingProduct.php",['products' => $products]);
         require_once 'Mvc/backend/views/layouts/main.php';
     }

 }
