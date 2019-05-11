<?php

 namespace App\Controllers;

 use \Core\View;
 use \App\Auth;


 /**
 * Profile controller
 *
 * PHP version 7.4
 */
 class Profile extends Authenticated
 {

  
  /**
    * Show the index page
    *
    * @return void
  */
  public function indexAction(){

    View::renderTemplate('Profile/index.html');
  }





 }