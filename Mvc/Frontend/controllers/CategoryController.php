<?php
require_once 'Mvc/frontend/models/Category.php';
class CategoryController extends Controller{
    public function index(){
        $category_model=new Category();
        $categories=$category_model->getAllProduct();
        $categoryNews=$category_model->getAllNews();
        $this->content=$this->render("MVc/frontend/views/categories/menu.php",["categories" => $categories,
            'categoryNews' => $categoryNews]);
        echo $this->content;
    }
    public function CategoryHot(){
        $category_model=new Category();
        $categories=$category_model->hotCategory();
        $this->content=$this->render("MVc/frontend/views/categories/hotcategory.php",["categories" => $categories]);
        echo $this->content;
    }


}