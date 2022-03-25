<?php
require_once 'Mvc/backend/models/report.php';
class ReportController extends Controller{
  public  function index(){
      $report_model=new report();
      $products=$report_model->sellingProducts();
      $report_model=new report();
      $products_nodata=$report_model->ProductNoData();
    $this->content=$this->render("Mvc/backend/views/reports/index.php",['products_nodata' => $products_nodata,'products' => $products]);
    require_once 'Mvc/backend/views/layouts/main.php';
  }
  public function moneyProduct(){
    $ngaybatdau=date('Y-m-01 00:00:00') ;
    $ngayketthuc=date("Y-m-d 23:59:59") ;
    $ngaybatdau1=date('d-m-Y', strtotime($ngaybatdau));
    $ngayketthuc1=date('d-m-Y', strtotime($ngayketthuc));
    if(isset($_POST['submit'])){
      $ngaybatdau=$_POST['ngayBatDau'];
      $ngayketthuc=$_POST['ngayKetThuc'];
      $ngaybatdau=date("$ngaybatdau 00:00:00",) ;
      $ngayketthuc=date("$ngayketthuc 23:59:59") ;
      $report_model=new report();
      $sumprice=$report_model->moneyProduct($ngaybatdau,$ngayketthuc);
      $listproducts=$report_model->ListOrder($ngaybatdau,$ngayketthuc);
      $ngaybatdau1=date('d-m-Y', strtotime($ngaybatdau));
      $ngayketthuc1=date('d-m-Y', strtotime($ngayketthuc));
      $output=[
          "ngaybatdau" => $ngaybatdau1,
          "ngayketthuc" => $ngayketthuc1,
          'sumprice' => $sumprice,
          'listOrder' => $listproducts,
      ];
      $this->content=$this->render("Mvc/backend/views/reports/moneyProduct.php",$output);
      require_once 'Mvc/backend/views/layouts/main.php';
    }else{
      $report_model=new report();
      $sumprice=$report_model->moneyProduct($ngaybatdau,$ngayketthuc);
      $listproducts=$report_model->ListOrder($ngaybatdau,$ngayketthuc);
      $output=[
          "ngaybatdau" => $ngaybatdau1,
          "ngayketthuc" => $ngayketthuc1,
          'sumprice' => $sumprice,
          'listOrder' => $listproducts,
      ];
      $this->content=$this->render("Mvc/backend/views/reports/moneyProduct.php",$output);
      require_once 'Mvc/backend/views/layouts/main.php';
    }

  }
}
