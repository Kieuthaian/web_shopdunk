<?php
require_once "Mvc/backend/models/User.php";
class UserController extends Controller
{
    public function index()
    {
        $usermodel=new User();
        $users=$usermodel->getAll();
        $this->content=$this->render("Mvc/backend/views/users/index.php",["users"=> $users]);
        require_once "Mvc/backend/views/layouts/main.php";
    }
}
