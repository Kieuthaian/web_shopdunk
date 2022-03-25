<?php
class Rating extends Model
{
    public $user_id;
    public $name;
    public $total_rating;
    public $total_number_rating;
    public $product_id;
    public $number;
    public $content;
    public $created_at;
    public function insert()
    {
        $sql_insert ="insert into rating_product(`user_id`,`name`,`product_id`,`number`,`content`) 
                      values (:user_id,:name,:product_id,:number,:content)";
        $obj_select=$this->connection->prepare($sql_insert);
        $arr_insert=[
            ":user_id" => $this->user_id,
            ":name" => $this->name,
            ":product_id" => $this->product_id,
            ":number" => $this->number,
            ":content" => $this->content,
        ];
        return $obj_select->execute($arr_insert);
    }
    public function update($id)
    {
        $sql_update = "update products set total_rating=:total_rating,total_number_rating=:total_number_rating
                      where id=$id";
        $obj_update=$this->connection->prepare($sql_update);
        $arr_update=[
            ":total_rating" => $this->total_rating,
            ":total_number_rating" => $this->total_number_rating
        ];
        return $obj_update->execute($arr_update);
    }
    public function count_rating($id)
    {
        $sql_count="select count(id) from rating_product where product_id=$id";
        $obj_count=$this->connection->prepare($sql_count);
        $obj_count->execute();
        $count=$obj_count->fetchColumn();
        return $count;
    }
    public function total_rating($id)
    {
        $sql_count="select total_number_rating from products where id=$id";
        $obj_count=$this->connection->prepare($sql_count);
        $obj_count->execute();
        $count=$obj_count->fetch(PDO::FETCH_ASSOC);
        return $count;
    }
    public function All_Rating($id)
    {
        $sql_select="select * from rating_product where product_id=$id";
        $obj_select=$this->connection->prepare($sql_select);
        $obj_select->execute();
        $ratings= $obj_select->fetchAll(PDO::FETCH_ASSOC);
        return $ratings;
    }
}
?>
