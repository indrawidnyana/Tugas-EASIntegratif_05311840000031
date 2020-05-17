<?php
 
namespace App\Controllers;
 
use App\Models\test1;
use Core\View;
 
class tests1 extends \Core\Controller
{
    public function index()
    {
        $tests1 = test1::getAll();
 
        View::renderTemplate('tests1/index.html', [
            'tests1' => $tests1
        ]);
    }

    public function addNew()
    {
        echo 'Hello from addNew function in the tests1 controller';
    }

    public function edit()
    {
        echo 'Hello from the edit action in the tests1 controller!';
        echo '<p>Route parameters: <pre>' .
             htmlspecialchars(print_r($this->route_params, true)) . '</pre></p>';
    }
}