<?php

namespace App;

use App\Config;
use Mailgun\Mailgun;

/**
 * Mail
 *
 * PHP version 7.2
 */
class Mail
{

    /**
     * Send a message
     *
     * @param string $to Recipient
     * @param string $subject Subject
     * @param string $text Text-only content of the message
     * @param string $html HTML content of the message
     *
     * @return mixed
     */
    public static function send($to, $subject, $text, $html)
    {
        $mg = new Mailgun(Config::API_KEY);
        $domain = Config::DOMAIN;

        $mg->sendMessage($domain, ['from'    => 'support@mabloo.com',
                                   'to'      => $to,
                                   'subject' => $subject,
                                   'text'    => $text,
                                   'html'    => $html]);
    }
}
