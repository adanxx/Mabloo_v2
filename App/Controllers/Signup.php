<?php

 namespace App\Controllers;

 use \Core\View;
 use \App\Models\User;

 /**
 * Posts controller
 *
 * PHP version 7.2
 */
 class Signup extends \Core\Controller{

    /**
     * Show the sign-up page
     *
     * @return void
     */
    public function newAction()
    {
      View::renderTemplate('Signup/new.html', []);
    }

    /**
     * Sign up a new user
     *
     * @return void
     */
    public function createAction()
    {
      // var_dump($_POST);
      $user = new User($_POST);

      if ($user->save()) {

        // header('Location: http://' . $_SERVER['HTTP_HOST'] . '/signup/success', true, 303);
        // exit;

        //send the activation-link to the mail of the newly signed user:
        $user->sendActivationEmail();
       
        $this->redirect('/signup/success');

      } else {

      // var_dump($user->errors);
      View::renderTemplate('Signup/new.html', ['user' => $user]);

      }
    }

    /**
     * Show the signup success page
     *
     * @return void
     */
    public function successAction()
    {
      View::renderTemplate('Signup/success.html');
    }

    /**
     * Activate a new account
     *
     * @return void
     */
    public function activateAction()
    {
      User::activate($this->route_params['token']);

      $this->redirect('/signup/activated');        
    }

    /**
     * Show the activation success page
     *
     * @return void
     */
    public function activatedAction()
    {
      View::renderTemplate('Signup/activated.html');
    }
    

 }

