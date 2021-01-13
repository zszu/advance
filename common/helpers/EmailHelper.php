<?php
namespace common\helpers;

use app\extensions\PHPMailer\PHPMailer;
use Yii;
use common\models\Param;

/**
 * Class EmailHelper
 * @package common\helpers
 * @desc 邮件助手
 */

class EmailHelper{

    public static function setMail(){
        $host = Param::getValue('mail_host');
        $password = Param::getValue('mail_password');
        $port = Param::getValue('mail_port');
        $ssl = Param::getValue('mail_ssl');
        $fromAddress = Param::getValue('mail_from_address');
        $fromName = Param::getValue('mail_from_name');
        if (empty($to)) {
            $toAddress = Param::getValue('mail_to_address');
        }


        /* @var $mailer \yii\swiftmailer\Mailer */
        $mailer = Yii::$app->mailer;
        $mailer->useFileTransport = false;
        $mailer->transport = [
            'class' => 'Swift_SmtpTransport',
            'host' => $host,
            'username' => $fromAddress,
            'password' => $password,
            'port' => $port,
            'encryption' => $ssl ? 'ssl' : '',
        ];
        if (!($host && $port && $fromAddress && $password && $fromName && $toAddress)) {
            return false;
        }
        return $mailer;
    }
    public static function sendMail($to, $subject, $content, $view = null, $params = [])
    {
        // if (1 == 1) {
        //     return self::sendMailByPhpMailer($to, $subject, $content, $view, $params);
        // }
        $host = Param::getValue('mail_host');
        $password = Param::getValue('mail_password');
        $port = Param::getValue('mail_port');
        $ssl = Param::getValue('mail_ssl');
        $fromAddress = Param::getValue('mail_from_address');
        $fromName = Param::getValue('mail_from_name');
        $toAddress =$to;

        if (empty($to)) {
            $toAddress = Param::getValue('mail_to_address');
        }

        if (!($host && $port && $fromAddress && $password && $fromName && $toAddress)) {
            return false;
        }


        /* @var $mailer \yii\swiftmailer\Mailer */
        $mailer = Yii::$app->mailer;
        $mailer->useFileTransport = false;
        $mailer->transport = [
            'class' => 'Swift_SmtpTransport',
            'host' => $host,
            'username' => $fromAddress,
            'password' => $password,
            'port' => $port,
            'encryption' => $ssl ? 'ssl' : '',
        ];

        try {
            $mailer->compose($view, $params)
                ->setFrom([$fromAddress => $fromName])
                ->setTo($toAddress)
                ->setSubject($subject)
                ->setHtmlBody($content)
                ->send();
        } catch (\Exception $e) {
            Yii::error($e->getMessage());
            return false;
        }

        return true;
    }

    public static function sendMailByPhpMailer($to, $subject, $content, $view = null, $params = [])
    {
        $host = Param::getValue('mail_host');
        $password = Param::getValue('mail_password');
        $port = Param::getValue('mail_port');
        $ssl = Param::getValue('mail_ssl');
        $fromAddress = Param::getValue('mail_from_address');
        $fromName = Param::getValue('mail_from_name');
        if (empty($to)) {
            $toAddress = Param::getValue('mail_to_address');
        }

        if (!($host && $port && $fromAddress && $password && $fromName && $toAddress)) {
            return false;
        }

        $mailer = new PHPMailer(true);
        try {
            $mailer->CharSet = 'UTF-8';
            $mailer->isSMTP();
            $mailer->Host = $host;
            $mailer->SMTPAuth = true;
            $mailer->Username = $fromAddress;
            $mailer->Password = $password;
            if ($ssl) {
                $mailer->SMTPSecure = 'ssl';
            }
            $mailer->Port = $port;
            $mailer->setFrom($fromAddress, $fromName);
            $mailer->addAddress($toAddress);
            $mailer->isHTML(true);
            $mailer->Subject = $subject;
            if ($view) {
                $mailer->Body = Yii::$app->view->renderFile("@common/mail/$view.php", $params);
            } else {
                $mailer->Body = $content;
            }
            $mailer->AltBody = strip_tags($mailer->Body);
            return $mailer->send();

        } catch (\Exception $e) {
            Yii::error($e->getMessage());
        }
        return false;
    }
}
