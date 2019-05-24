<?php

namespace App\Controllers;

use \Core\View;
use \App\Auth;

/**
 * Home controller
 *
 * PHP version 7.4
 */
class Home extends \Core\Controller
{

    /**
     * Before filter
     *
     * @return void
     */
    protected function before()
    {
        //echo "(before) ";
        //return false;
    }

    /**
     * After filter
     *
     * @return void
     */
    protected function after()
    {
        //echo " (after)";
    }

    /**
     * Show the index page
     *
     * @return void
     */
    public function indexAction()
    {
       
        $user_obj = Auth::getUser();
 
        // \App\Mail::send('demo477i@gmail.com', 'Test', "This is a test", "This is a test");

        View::renderTemplate('Home/hm.html', []);
    }

     /**
     * Generated the siteResult Page for the search term
     *
     * @return void
     */
    public function searchAction()
    {
       
      View::renderTemplate('Home/SiteSearch.html',[]);
      
      echo $_GET['term'] ." : ".__LINE__;


    }


}
