<?php

 namespace App\Controllers;

 use \Core\View;
 use \App\Auth;
 use \App\Flash;
 use \App\Controllers\Uploads;


 /**
 * Profile controller
 *
 * PHP version 7.4
 */
 class Profile extends Authenticated
 {

  
    /**
     * Before filter - called before each action method
     *
     * @return void
     */
    protected function before()
    {
      parent::before();

      $this->user = Auth::getUser();
    }

  
  /**
    * Show the index page
    *
    * @return void
  */
  public function indexAction(){

    View::renderTemplate('Profile/index.html', [
         
      'user'=> $this->user
    ]);
  }

  /**
    * handel the edit profile data 
    *
    * @return void
  */
  public function updateAction(){
    

    if ($this->user->updateProfile($_POST)) {

      Flash::addMessage('Profile was Update');

      $this->redirect('/profile/index');

    } else {

      View::renderTemplate('Profile/index.html', [
          'user' => $this->user
      ]);

    }
  }

  public function uploadfileAction(){

   Uploads::uploadFiles($_FILES);


  }







 }