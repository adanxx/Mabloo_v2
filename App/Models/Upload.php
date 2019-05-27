<?php

namespace App\Models;

use \App\Auth;
use PDO;

/**
 * Post model
 *
 * PHP version 5.4
 */
class Uploads extends \Core\Model
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
     public function save($file = null)
    {
        $this->id = Auth::isLoggedIn();

        try {
            //$db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
            $db = static::getDB();

            $filename ="test-filename";
 
            $sql = 'INSERT INTO uploads (user_id, filename) VALUES (:user_id, :filename)';
            $stmt = $db->prepare($sql);
            $stmt->bindValue(':filename', $file['file']['name'], PDO::PARAM_STR);
            $stmt->bindValue(':user_id', $this->id, PDO::PARAM_STR);
            // $stmt->bindValue(':filePath', $file['file']['name'], PDO::PARAM_STR);
            // $stmt->bindValue(':file_type', $file['file']['tmp_name'], PDO::PARAM_STR);
            // $stmt->bindValue(':file_size', $file['file']['size'], PDO::PARAM_STR);

           return $stmt->execute();

             
         } catch (PDOException $e) {
            echo $e->getMessage();
         }
     }
}
