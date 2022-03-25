<?php
require_once 'Mvc/Frontend/models/Product.php';
require_once 'Mvc/Frontend/models/Category.php';
require_once 'Mvc/Frontend/models/Rating.php';
class ProductController extends Controller{
    public function productcategory(){
        $id=$_GET["id"];
        $product_model=new Product();
        $category_model=new Category();
        $category=$category_model->getCategoryById($id);
        $products=$product_model->ProductCategory($id);
        $output=["products" => $products,
                "category" => $category
        ];
       $this->content=$this->render("Mvc/Frontend/views/products/productcategory.php",$output);

       require_once 'Mvc/frontend/views/layouts/main.php';
    }
  public function NewsProduct()
  {
    $product_model = new Product();
    $products = $product_model->newProduct();
    $this->content = $this->render("Mvc/Frontend/views/products/newsproduct.php", ["products" => $products]);
    echo $this->content;
  }
    public function detail(){
      $id=$_GET["id"];
      $product_model=new Product();
      $product=$product_model->detail($id);
      $product_images=$product_model->getImages($id);
        $rating_model=new Rating();
        $ratings=$rating_model->All_Rating($id);
      $output=
          [
              "product" => $product,
            'product_images' =>$product_images,
              'ratings' =>$ratings
      ];
      $this->content=$this->render("Mvc/Frontend/views/products/detail.php",$output);
      require_once 'Mvc/frontend/views/layouts/main.php';
    }
  public function hotProduct()
  {
    $product_model = new Product();
    $products = $product_model->hotProduct();
    $this->content = $this->render("Mvc/Frontend/views/products/hotproduct.php", ["products" => $products]);
    echo $this->content;
  }
    public function sellingProducts()
    {
        $product_model = new Product();
        $products = $product_model->sellingProducts();
        $this->content = $this->render("Mvc/Frontend/views/products/sellingProducts.php", ["products" => $products]);
        echo $this->content;
    }
  public function searchProduct()
  {
    $id=isset($_POST['id']) ? $_POST['id'] : "";
    $query="";
    if (isset($_POST["price"])) {
      $price_filter = implode("','", $_POST["price"]);
      foreach ($_POST["price"] as $price)
      {
        switch ($price)
        {
          case 0:
            $query .= " OR (products.price BETWEEN 1000000 AND 5000000) ";
            break;
          case 1:
            $query .= " OR (products.price BETWEEN 5000000 AND 10000000) ";
            break;
          case 2 :
            $query .= " OR (products.price BETWEEN 10000000 AND 15000000) ";
            break;
          case 3 :
            $query .= " OR (products.price BETWEEN 15000000 AND 20000000) ";
            break;
          case 4 :
            $query .= " OR (products.price > 20000000) ";
            break;
        }
      }
      $query=substr($query,3);
      $query="AND "."($query)";
    }
    $product_model = new Product();
    $products = $product_model->ProductCategory($id,$query);
    $output = ["products" => $products,];
    $this->content = $this->render("Mvc/Frontend/views/products/search.php", $output);
    echo $this->content;
  }
  public function searchProductName(){
    if(isset($_POST["search"])){
      $search=$_POST["search"];
      $product_model=new Product();
      $products=$product_model->search($search);
      $this->content = $this->render("Mvc/Frontend/views/products/searchName.php", ['products' =>$products]);
      echo $this->content;
    }
  }

}
