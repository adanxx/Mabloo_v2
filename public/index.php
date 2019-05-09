<?php

/**
 * Front controller
 *
 * PHP version 7.1
 */

/**
 * Twig.1.0  - Template-Engine
 */


require_once dirname(__DIR__) . '/vendor/Twig/lib/Twig/Autoloader.php';
Twig_Autoloader::register();
 
 

/**
 * Autoloader
 */
spl_autoload_register(function ($class) {
    $root = dirname(__DIR__);   // get the parent directory
    $file = $root . '/' . str_replace('\\', '/', $class) . '.php';
    if (is_readable($file)) {
        require $root . '/' . str_replace('\\', '/', $class) . '.php';
    }
});


/**
 * Error and Exception handling
 */
error_reporting(E_ALL);
set_error_handler('Core\Error::errorHandler');
set_exception_handler('Core\Error::exceptionHandler');


/**
 * Start the Session
 */
session_start();


/**
 * Routing
 */
$router = new Core\Router();

// Some defualt Add the routes
$router->add('', ['controller' => 'Home', 'action' => 'index']);
$router->add('signup', ['controller' => 'signup', 'action' => 'new']);
$router->add('login', ['controller' => 'login', 'action' => 'new']);
$router->add('logout', ['controller' => 'login', 'action' => 'destroy']);
$router->add('posts', ['controller' => 'post\posts', 'action' => 'index']);


//Route config path matrix:
$router->add('{controller}/{action}');
$router->add('{controller}/{id:\d+}/{action}');
$router->add('admin/{controller}/{action}', ['namespace' => 'Admin']);
$router->add('Post/{controller}/{action}', ['namespace' => 'Post']);
    
$router->dispatch($_SERVER['QUERY_STRING']);
