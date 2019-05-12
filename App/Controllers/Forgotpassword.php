<?php

namespace App\Controllers;

use \Core\View;
use \App\Models\User;

/**
 * Password controller
 *
 * PHP version 7.0
 */
class Forgotpassword extends \Core\Controller
{
  /**
   * Show the forgotten password page
   *
   * @return void
   */
  public function forgotAction()
  {
    View::renderTemplate('ForgotPassword/forgot.html');
  }

  /**
   * Send the password reset link to the supplied email
   *
   * @return void
   */
  public function requestResetAction()
  {
    User::sendPasswordReset($_POST['email']);

    View::renderTemplate('ForgotPassword/reset_requested.html');
  }


  
  /**
   * Show the reset password form
   *
   * @return void
   */
  public function resetAction()
  {
    $token = $this->route_params['token'];

    $user = $this->getUserOrExit($token);

    View::renderTemplate('ForgotPassword/reset.html', [ 'token' => $token ]);
  }

  /**
  * Reset the user's password
  *
  * @return void
  */
  public function resetPasswordAction()
  {
    $token = $_POST['token'];

    $user = $this->getUserOrExit($token);

    if ($user->resetPassword($_POST['password'])) {

      View::renderTemplate('ForgotPassword/reset_success.html');

    } else {

      View::renderTemplate('ForgotPassword/reset.html', [
          'token' => $token,
          'user' => $user
      ]);
    }

  }

  /**
   * Find the user model associated with the password reset token, or end the request with a message
   *
   * @param string $token Password reset token sent to user
   *
   * @return mixed User object if found and the token hasn't expired, null otherwise
   */
  protected function getUserOrExit($token)
  {
    $user = User::findByPasswordReset($token);

    if ($user) {

      return $user;

    } else {

      View::renderTemplate('ForgotPassword/token_expired.html');
      exit;

    }
  }



}//end of class:
