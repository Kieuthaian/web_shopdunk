<?php
class News extends Model
{
    public function hotNews()
    {
        $sql_select = "select news.* from news 
                   where news.status=1 and hotnews=1 ORDER BY news.created_at  desc limit 6 ";
        $obj_select = $this->connection->prepare($sql_select);
        $obj_select->execute();
        $products = $obj_select->fetchAll(PDO::FETCH_ASSOC);
        return $products;
    }

    public function detailNews($id)
    {
        $sql_select = "select * from news where news.id=$id";
        $obj_select = $this->connection->prepare($sql_select);
        $obj_select->execute();
        $news = $obj_select->fetch(PDO::FETCH_ASSOC);
        return $news;
    }
    public function newsHot(){
        $sql_select="select * from  news  where news.status=1 ORDER BY news.created_at desc limit 6 ";
        $obj_select=$this->connection->prepare($sql_select);
        $obj_select->execute();
        $products=$obj_select->fetchAll(PDO::FETCH_ASSOC);
        return $products;
    }
//    public function newsCategory($id){
//        $sql_select="select news.*,categories.name as category_name from categories inner join news
//                    on categories.id=news.category_id where news.status=1 and news.category_id=$id
//                    ORDER BY news.updated_at desc ";
//        $obj_select=$this->connection->prepare($sql_select);
//        $obj_select->execute();
//        $products=$obj_select->fetchAll(PDO::FETCH_ASSOC);
//        return $products;
//    }
}


