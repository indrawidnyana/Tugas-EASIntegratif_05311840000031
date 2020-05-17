<?php
 
namespace App\Controllers;
 
use App\Models\thing;
use Core\View;
 
class things extends \Core\Controller
{
    public function index()
    {
        $things = thing::getAll();
 
        View::renderTemplate('things/index.html', [
            'things' => $things
        ]);
    }

    public function addNew()
    {
        echo 'Hello from addNew function in the things controller';
    }

    public function edit()
    {
        echo 'Hello from the edit action in the things controller!';
        echo '<p>Route parameters: <pre>' .
             htmlspecialchars(print_r($this->route_params, true)) . '</pre></p>';
    }
}