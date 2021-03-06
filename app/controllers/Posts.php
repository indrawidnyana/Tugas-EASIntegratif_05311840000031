<?php
 
namespace App\Controllers;
 
use App\Models\Post;
use Core\View;
 
class Posts extends \Core\Controller
{
    public function index()
    {
        $posts = Post::getAll();
 
        View::renderTemplate('posts/index.html', [
            'posts' => $posts
        ]);
    }

    public function addNew()
    {
        echo 'Hello from addNew function in the Posts controller';
    }

    public function edit()
    {
        echo 'Hello from the edit action in the Posts controller!';
        echo '<p>Route parameters: <pre>' .
             htmlspecialchars(print_r($this->route_params, true)) . '</pre></p>';
    }
}