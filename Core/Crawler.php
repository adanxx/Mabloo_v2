<?php

 namespace Core;
 use App\DomDocumentParser;
 use PDO;

 class Crawler extends \Core\Model {
     
  public $startUrl;

  public $alreadyCrawled;
  public $crawling;
  public $ImageAlreadyFound;

  public function __construct($url_value = null){


  $this->alreadyCrawled = array();
  $this->crawling = array();
  $this->ImageAlreadyFound = array();
  
      if ($url_value) {

        $this->startUrl = $url_value;  //By defualt the url set to be crawled is set to :bbc.com

      } else {

          $this->startUrl = "https://www.bbc.com/news";
      }

      $this->followLinks($this->startUrl);
  }


  private function createLink($src, $url){

    $scheme = parse_url($url)["scheme"]; //http or https
    $host = parse_url($url)["host"]; //www.?.com

     // if the link contains 2 slash, use th parse function to convert to link with schema conversation attribute function
     if(substr($src, 0, 2) == "//"){
      $src =$scheme . ":" . $src; 
    }
    else if((substr($src, 0, 1) == "/")){
      $src = $scheme . "://" . $host . $src; //https://schema.host/source-link
    }
    else if((substr($src, 0, 2) == "./")){
      $src = $scheme . "://" . $host . dirname(parse_url($url)['path']) . substr($src,1);
    }
    else if((substr($src, 0, 3) == "../")){
      $src = $scheme . "://" . $host . "/" . $src;
    }
    else if((substr($src, 0, 5) !== "https") && (substr($src, 0, 4) !== "http")){
      $src = $src = $scheme . "://" . $host . "/" . $src;
    }

    return $src;
  }

  function linksExists($url){

    $db = static::getDB();
    
    $query = $db->prepare("SELECT * FROM sites WHERE url = :url");

      $query->bindValue(":url", $url, PDO::PARAM_STR);
 
    if(!$query->execute()){
      echo $query->errorInfo();
    }

    return $query->rowCount() != 0;

  }

  function insertLinks($url, $title,$description,$keywords){
    
    $db = static::getDB();
    
    $query = $db->prepare("INSERT INTO sites(url, title, description, keywords)
                         VALUES(:url, :title, :description, :keywords)");
        $query->bindValue(":url", $url,  PDO::PARAM_STR);
        $query->bindValue(":title", $title ,  PDO::PARAM_STR);
        $query->bindValue(":description", $description, PDO::PARAM_STR);
        $query->bindValue(":keywords", $keywords, PDO::PARAM_STR);
   
    if(!$query->execute()){
      echo $query->errorInfo();
    }else{
      return true;
    }

    
  }



  private function getDetails($url){

    $parser = new DomDocumentParser($url);

    $titleArray  = $parser->getTitletags(); 
   
    if(sizeof($titleArray) == 0 || $titleArray->item(0) == NULL ){
      return;
    }
   
    $title = $titleArray->item(0)->nodeValue; //get the very first element in array
    $title = str_replace("\n","", $title); //replace an new line with empty-string

    if($title == ""){
      return;
    }

    $description = "";
    $keywords   = "";

    $metaArray = $parser->getMetaTags();

    foreach ($metaArray as $meta) {
     
      if($meta->getAttribute("name") == "description"){
        $description = $meta->getAttribute('content');
      }

      if($meta->getAttribute("name") == "keywords"){
        $keywords = $meta->getAttribute('content');
      }
    }

    $description = str_replace("\n","", $description);
    $keywords = str_replace("\n","", $keywords);

    // echo "URL: .$url. Description: $description , keyword: $keywords";

    if($this->linksExists($url)){
      echo "Already Exists<br>";
    }
    else if($this->insertLinks($url,$title,$description,$keywords)){
      echo "Success: $url<br>";
    }
    else{
      echo "Error: failed to insert $url into db<br>";
    }

  }

  private function followLinks($url){
   

    $parser = new DomDocumentParser($url);

    $linkList = $parser->getLinks();

    foreach ($linkList as $link) {
      $href = $link->getAttribute("href"); // retrive the href link-tag from the a-tag element

      echo $href . "<br>";
        
      // // if found empty link with pound-sign skip to th next ;
      if(strpos($href, "#") !== false){ 
        continue;
      } 
      //if link contain 11-character length javascript word skip it;
      else if(substr($href, 0, 11) == "javascript:"){ 
       continue;
      } 

      $href = $this->createLink($href, $url);

      echo $href . "<br>";

      if(!in_array($href, $this->alreadyCrawled)){
        $this->alreadyCrawled [] = $href;
        $this->crawling [] = $href;

        //insert $href  
        $this->getDetails($href); 
      }
      
    }

    array_shift($this->crawling); //remove the elment in the first-position

    //recusive function resending the linsk within found links
    foreach ($this->crawling as $site) {
      $this->followlinks($site);

      echo $this->crawling . "<br>";
    }



  }

  public function getUrl(){
    return $this->startUrl;
  }




}//end of class
 