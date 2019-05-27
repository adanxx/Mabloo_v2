<?php

namespace App\Models;

use \App\Auth;
use PDO;

/**
 * Post model
 *
 * PHP version 5.4
 */
class Files extends \Core\Model
{

    /**
     * Get all the uploads as an associative array
     *
     * @return array
     */
    public static function getAll()
    {

    
        try {
            //$db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
            $db = static::getDB();

            $stmt = $db->query('SELECT * FROM uploads ORDER BY created_at');
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

            return $results;
            
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Save the file model with the current property values
     *
     * @return array
     */
     public static function save($data=[])
    {
        $id = Auth::isLoggedIn();
  
        try {
            
            $db = static::getDB();

            foreach( $data['files']['name'] as $key => $name){
                if($data['files']['error'][$key] === 0){
        
                  $temp = $data['files']['tmp_name'][$key];
                  $size = $data['files']['size'][$key];
        
                  $ext = explode('.', $name);
                  $ext = strtolower(end($ext));
        
                  $file = uniqid('', true) . time() ."." . $ext; 
                  $destination = '../uploads/'. $file;
                   
        
                    $sql = 'INSERT INTO uploads (user_id, filename, filePath, file_type, file_size) VALUES (:user_id, :filename, :filePath, :file_type, :file_size)';
                    $stmt = $db->prepare($sql);
                    $stmt->bindValue(':filename', $name, PDO::PARAM_STR);
                    $stmt->bindValue(':user_id', $id, PDO::PARAM_STR);
                    $stmt->bindValue(':filePath', $destination, PDO::PARAM_STR);
                    $stmt->bindValue(':file_type', $ext, PDO::PARAM_STR);
                    $stmt->bindValue(':file_size', $size, PDO::PARAM_STR);

                    return $stmt->execute();

                }
            }
         
            // if($data['files']['error'][$key] !== 0){
            //     return;
            // }    

             
         } catch (PDOException $e) {
            echo $e->getMessage();
         }
     }
}
