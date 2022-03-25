<?php
require_once 'Mvc/frontend/models/News.php';
require_once 'Mvc/frontend/models/Category.php';
class NewsController extends Controller{
    public function hotNews(){
        $news_model=new News();
        $news=$news_model->hotNews();
        $this->content=$this->render('Mvc/frontend/views/news/NewsHot.php',['news' => $news]);
        echo $this->content;
    }
    public function detail(){

        $id=$_GET["id"];
        $news_model=new News();
        $new=$news_model->detailNews($id);
        $this->content=$this->render('Mvc/frontend/views/news/detail.php',["new" => $new]);
        require_once 'Mvc/frontend/views/layouts/main.php';
    }
    public function NewsHot(){
        $news_model=new News();
        $news=$news_model->newsHot();
        $this->content=$this->render("Mvc/Frontend/views/news/NewsHot.php",["news" => $news]);
        echo $this->content;
    }
    public function newscategory(){
        $id=$_GET["id"];
        $news_model=new News();
        $category_model=new Category();
        $category=$category_model->getCategoryById($id);
        $news=$news_model->newsCategory($id);
        $output=["news" => $news,
            "category" => $category
        ];
        $this->content=$this->render("Mvc/Frontend/views/news/news_category.php",$output);
        require_once 'Mvc/frontend/views/layouts/main.php';
    }
}
