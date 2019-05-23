<?php

namespace App\Controllers;
use \App\Models\User;

/**
 * Uploader
 *
 * PHP version 7.2
*/
 class Uploads extends \Core\Controller{

/**
  * Validate the files Uploads and stores file int the database.
 *
 * @return void
*/
  public static function uploadFiles($data=[]){
 
    header('Content-Type: application/json');

    if(isset($data)){

      $allowed = ['mp4', 'png', 'jpg'];
      $proceed = [];

      foreach( $data['files']['name'] as $key => $name){
        if($_FILES['files']['error'][$key] === 0){

          $temp = $data['files']['tmp_name'][$key];

          $ext = explode('.', $name);
          $ext = strtolower(end($ext));

          $file = uniqid('', true) . time() ."." . $ext; 
          $destination = '../uploads/'. $file;
          
          if(in_array($ext, $allowed) && move_uploaded_file($temp, $destination)){
           
            $proceed[] =array(
              'name'   => $name,
              'file'   => $file,
              'uploaded' => true
             ); 

          }
          else{
            $proceed[] =array(
              'name'   => $name,
              'uploaded' => false
            );
            // throw new \Exception("Error: Type of file is not Allowed"); 
          }

        }
        else{
          throw new \Exception("Error: Missing Files");
        }

         
      }
       echo json_encode($proceed);
    }

   


  }
  

}