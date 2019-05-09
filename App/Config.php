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
}
