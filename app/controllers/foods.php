<?php
 
namespace App\Controllers;
 
use App\Models\data;
use Core\View;
 
class foods extends \Core\Controller
{
    public function index()
    {
        $foods = data::getAll();
 
        View::renderTemplate('foods/index.html', [
            'foods' => $foods
        ]);
    }

    public function addNew()
    {
        echo 'Hello from addNew function in the foods controller';
    }

    public function edit()
    {
        echo 'Hello from the edit action in the foods controller!';
        echo '<p>Route parameters: <pre>' .
             htmlspecialchars(print_r($this->route_params, true)) . '</pre></p>';
    }
}