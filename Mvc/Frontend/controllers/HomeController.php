<?php
class HomeController extends Controller{
    public function index(){
        $this->content=$this->render("Mvc/frontend/views/home/home.php");
       require_once 'Mvc/Frontend/views/layouts/main.php';
    }
    public function contact(){
        $this->content=$this->render("Mvc/frontend/views/home/contact.php");
        require_once 'Mvc/Frontend/views/layouts/main.php';
    }
}
