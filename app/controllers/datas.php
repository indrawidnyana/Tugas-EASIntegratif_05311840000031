<?php
 
namespace App\Controllers;
 
use App\Models\data;
use Core\View;
 
class datas extends \Core\Controller
{
    public function index()
    {
        $datas = data::getAll();
 
        View::renderTemplate('datas/index.html', [
            'datas' => $datas
        ]);
    }

    public function addNew()
    {
        echo 'Hello from addNew function in the datas controller';
    }

    public function edit()
    {
        echo 'Hello from the edit action in the datas controller!';
        echo '<p>Route parameters: <pre>' .
             htmlspecialchars(print_r($this->route_params, true)) . '</pre></p>';
    }
}