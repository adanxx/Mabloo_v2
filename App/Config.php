<?php

namespace App;
use App\Keys;

/**
 * Application configuration
 *
 * PHP version 5.4
 */
class Config
{

    /**
     * Database host
     * @var string
     */
    const DB_HOST = 'localhost';

    /**
     * Database name
     * @var string
     */
    const DB_NAME = 'clone';

    /**
     * Database user
     * @var string
     */
    const DB_USER = 'root';

    /**
     * Database password
     * @var string
     */
    const DB_PASSWORD = '';

    /**
    * Show or hide error messages on screen : Production = true : Deployment = false:
    * @var boolean
    */
    const SHOW_ERRORS = true;

    /**
    * Secret key for hashing
    * @var boolean
    */
    const SECRET_KEY = 'secret-key'; // use the online resource for key-generator :https://randomkeygen.com/

      /**
     * Mailgun API key
     *
     * @var string
     */
    const API_KEY = Keys::MAILGUN_API_KEY;

    /**
     * domain
     *
     * @var string
     */
    const DOMAIN = Keys::MAILGUN_DOMAIN;
}
