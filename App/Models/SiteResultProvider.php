<?php

namespace App\Models;
 
use PDO;

class SiteResultProvider extends \Core\Model
{
/**
  * Class constructor
  *
  * @param array $data  Initial property values
  *
  * @return void
  */
  public function __construct($data=[])
  {
    foreach ($data as $key => $value) {
      $this->$key = $value;
    };
  }


    public function getNumResults($term){

        $db = static::getDB();

        $query = $db->prepare("SELECT count(*) as total 
                                        from sites WHERE title 
                                        LIKE :term 
                                        OR url LIKE :term 
                                        OR keywords LIKE :term
                                        OR description LIKE :term");
            $searhTerm = "%".$term."%";
            $query->bindValue(":term", $searhTerm, PDO::PARAM_STR); 
        
        if(!$query->execute()){
        echo $query->errorInfo();
        exit;
        }       

        $row = $query->fetch(PDO::FETCH_ASSOC);
        return $row['total'];
    
    }

    public function getResultHtml($page, $pageSize, $term){

        $db = static::getDB();

        $fromLimit = ($page - 1) * $pageSize;
     
        $query = $db->prepare("SELECT * 
                                        from sites WHERE title 
                                        LIKE :term 
                                        OR url LIKE :term 
                                        OR keywords LIKE :term
                                        OR description LIKE :term
                                        ORDER BY clicks DESC");

        $searhTerm = "%$term%";
        $query->bindValue(":term", $searhTerm, PDO::PARAM_STR); 
        // $query->bindValue(":fromlimit", $fromLimit, PDO::PARAM_INT); 
        // $query->bindValue(":pageSize", $pageSize, PDO::PARAM_INT); 

        if(!$query->execute()){
            echo $query->errorInfo();
            exit;
        }       

        $resultHtml = "<div class='siteResults'>"; 
        
        while( $row = $query->fetch(PDO::FETCH_ASSOC)){

            $id    = $row['id'];
            $url   = $row['url'];
            $title = $row['title'];
            $description = $row['description'];
            
            $title =  $this->trimField($title, 26);
            $description = $this->trimField($description, 150);

            $resultHtml .= "<div  class='resultContainer'>
                                <h3 class='title'>
                                   <a class='result' href='$url' data-linkId='$id'>$title</a>
                                </h3>  
                                <span class='url'>$url</span>
                                <span class='description'>$description</span>
                           </div>";
          
        }

        $resultHtml .="</div>";

        return $resultHtml;
    }

    private  function trimField($string, $limit){

        $dots = strlen($string) > $limit ? "..." : "";

        return substr($string, 0, $limit) .$dots;

    }







 }
 ?>