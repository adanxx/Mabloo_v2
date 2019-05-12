<?php

namespace App;

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
    const DB_NAME = 'pro_mvc';

    /**
     * Database user
     * @var string
     */
    const DB_USER = 'admin';

    /**
     * Database password
     * @var string
     */
    const DB_PASSWORD = 'secret';

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
    const MAILGUN_API_KEY = 'cbae11dd3e56ed74542583827614f0d5-e566273b-8b9bbb49';

    /**
     * Mailgun domain
     *
     * @var string
     */
    const MAILGUN_DOMAIN = 'sandbox5194ff04f5944cfcbe8891ad0dd8d04f.mailgun.org';
}
