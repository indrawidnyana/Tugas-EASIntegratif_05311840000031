<?php
 
namespace App\Models;
 
use Core\Model;
use PDO;
use PDOException;
 
class food extends Model
{
 
    public static function getAll()
    {
        // $host = 'localhost';
        // $dbname = 'integratif';
        // $username = 'integratif';
        // $password = 'integratif123';
    
        try {
            // $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8",
            //               $username, $password);
 
            $db = static::getDB();
            
            $stmt = $db->query('SELECT id, title, content FROM foods
                                ORDER BY created_at');
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
 
            return $results;
            
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
}
