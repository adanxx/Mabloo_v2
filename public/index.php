<?php

/**
 * Front controller
 *
 * PHP version 7.1
 */

//  ini_set('session.cookie_lifetime', '86400'); // set to expire on 10 days in seconds

/**
 * Composer
 */
//  require_once dirname(__DIR__) . '/vendor/vendorTwig/lib/Twig/Autoloader.php';
require dirname(__DIR__) . '/vendor/vendor/autoload.php';


/**
 * Twig.1.0  - Template-Engine
 */
// Twig_Autoloader::register();
 
 

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
$router->add('profile', ['controller' => 'profile', 'action' => 'index']);
$router->add('posts', ['controller' => 'posts', 'action' => 'index']);
$router->add('forgot', ['controller' => 'forgotpassword', 'action' => 'forgot']);
$router->add('admin', ['controller' => 'Admin\Users', 'action' => 'index'],  ['namespace' => 'Admin']);


//Route config path matrix:
$router->add('{controller}/{action}');
$router->add('{controller}/{id:\d+}/{action}');
$router->add('admin/{controller}/{action}', ['namespace' => 'Admin']);
$router->add('Post/{controller}/{action}', ['namespace' => 'Post']);
$router->add('signup/activate/{token:[\da-f]+}', ['controller' => 'Signup', 'action' => 'activate']);
$router->add('password/reset/{token:[\da-f]+}', ['controller' => 'Forgotpassword', 'action' => 'reset']);
    
$router->dispatch($_SERVER['QUERY_STRING']);
