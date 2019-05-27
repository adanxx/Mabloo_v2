<?php

 namespace App\Controllers;

 use \Core\View;
 use \App\Auth;
 use \App\Flash;
 use \App\Token;
 use \App\Controllers\Uploads;
 use \App\Models\Upload;


 /**
 * Profile controller
 *
 * PHP version 7.4
 */
 class Profile extends Authenticated
 {

  private $token;
  
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

    $this->token = new Token();

    View::renderTemplate('Profile/index.html', [
         
      'user'=> $this->user,
      'token' => $this->token->getValue()

    ]);

  }

  /**
    * handel the edit profile data 
    *
    * @return void
  */
  public function updateAction(){

    
    if ($this->user->updateProfile($_POST)) {

      $this->token = new Token($_POST['token']);
     
      if(isset($_POST['token']) && $_POST['token'] === $this->token->getValue()){

     
        Flash::addMessage('Profile was Update');
        $this->redirect('/profile/index');

      }else{


        Flash::addMessage('Profile was not Update', Flash::WARNING);

        View::renderTemplate('Profile/index.html', [
          'user' => htmlspecialchars($this->user),
          'token'=> $this->token->updateToken()
        ]);
        
      }


    } else {

      Flash::addMessage('Profile was not Update', Flash::INFO);

      View::renderTemplate('Profile/index.html', [
        'user' => htmlspecialchars($this->user)
      ]);

    }
  }

  public function uploadfileAction(){

   Uploads::uploadFiles($_FILES);


  }







 }