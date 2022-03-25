<?php
require_once 'Mvc/frontend/models/rating.php';
class RatingController extends Controller
{
    public function index()
    {
        $rating_model=new Rating();
        $id=$_GET["id"];
        $name=$_POST["name"];
        $user_id=isset($_SESSION["user_account"]) ? $_SESSION["user_account"]["id"] : '';
        $content=$_POST["content"];
        $number=$_POST["number"];
//        echo "$content,$number,$user_id,$name";
//        die();
        $rating_model->user_id=$user_id;
        $rating_model->product_id=$id;
        $rating_model->name=$name;
        $rating_model->content=$content;
        $rating_model->number=$number;
        $is_insert=$rating_model->insert();
        if($is_insert)
        {
            echo " Cảm ơn bạn đã đánh giá sản phẩm !!!";
        }
        else
        {
            echo " Đánh giá thất bại";
        }
        $count=$rating_model->count_rating($id);
        $total_number_rating=$rating_model->total_rating($id);
        $rating_model->total_rating =$count;
        $rating_model->total_number_rating =$total_number_rating["total_number_rating"]+$number;
        $is_update=$rating_model->update($id);
    }
}
?>
