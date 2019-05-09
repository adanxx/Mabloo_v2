<?php

namespace App\Controllers\Posts;

use \Core\View;
use \App\Auth;

/**
 * Items controller (example)
 *
 * PHP version 7.0
 */
class EditPosts extends Authenticated
{



  /**
   * Items index
   *
   * @return void
   */
  public function indexAction()
  {

    View::renderTemplate('Posts/addPosts.html');
  }


}
