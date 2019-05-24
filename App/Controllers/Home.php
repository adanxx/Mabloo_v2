<?php

namespace App\Controllers;

use \Core\View;
use \Core\Crawler;
use \App\Auth;
use \App\Models\SiteResultProvider;


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
       /**
       * Start The Crawling for data Website: 
       */
        // $crawler = new Crawler();
       
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
       
      $searchResult = new SiteResultProvider();

      $count = $searchResult->getNumResults($_GET['term']);
      $siteResult = $searchResult->getResultHtml(1, 2, $_GET['term']);

      View::render('Home/SiteSearch.php',[
          'count'=>$count,
          'sites'=>$siteResult
      ]);
      
     //   echo $_GET['term'] ." : ".__LINE__;

     


    }


}
