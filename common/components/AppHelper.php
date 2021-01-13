<?php
namespace common\components;

use common\extensions\ZImage;
use Yii;
use yii\db\ActiveRecord;
use yii\helpers\FileHelper;
use yii\helpers\Url;
use yii\web\UploadedFile;
use common\models\Param;
class AppHelper
{
    /**
     * @param $model ActiveRecord
     * @param $file UploadedFile
     * @param $field string
     * @param $dir string
     */
    public static function upload($model, $file, $field, $dir=null, $imageSize = null)
    {
        if (!$file) {
            return;
        }
        if(!is_null($dir)){
            $path = $dir . '/'. date('Y') . '/'.date('m').'/'.date('d').'/';
        }else{
            $path = '/'. date('Y') . '/'.date('m').'/'.date('d').'/';
        }
        $fullPath = Yii::getAlias('@attachment').$path;

        if (!file_exists($fullPath)) {
            FileHelper::createDirectory($fullPath);
        }
        $filename = date('ymdHis') . mt_rand(10000, 99999) . '.' . $file->extension;
        if ($file->saveAs($fullPath . $filename)) {
            self::imgCrop($fullPath . $filename, $imageSize);
            if ($model->$field) {
                @unlink( Yii::$app->params['uploadConfig']['imageUploadRelativePath'] .$path. $model->$field);
            }
            $model->$field = Yii::$app->params['uploadConfig']['imageUploadRelativePath'].$path. $filename;
        } else {
            Yii::error($file->error);
        }
    }
    public static function sizeArr($size)
    {
        try {
            list($w, $h) = explode('*', $size);
        } catch (\Exception $e) {
            return null;
        }
        $w = intval($w);
        $h = intval($h);
        if ($w < 10 || $w > 3000 || $h < 10 || $h > 3000) {
            return null;
        }

        return ['width' => $w, 'height' => $h];
    }
    public static function imgCrop($file, $size)
    {
        if (!file_exists($file)) {
            return;
        }
        $sizeArr = self::sizeArr($size);
        if ($sizeArr) {
            $img = new ZImage($file);
            $img->thumb($sizeArr['width'], $sizeArr['height']);
            $img->save($file);
        }
    }
    public static function processRelativeUrl($str, $onlyHost = false)
    {
        return strtr($str, ['<img src="/' => '<img src="' . Url::to($onlyHost ? '/' : '@web/',  true)]);
    }

    public static function sendMail($to, $subject, $content, $view = null, $params = [])
    {
        if (1 == 1) {
            return self::sendMailByPhpMailer($to, $subject, $content, $view, $params);
        }
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
                $mailer->Body = Yii::$app->view->renderFile("@app/mail/$view.php", $params);
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
    /**
     *  递归处理
     *  无限级分类
     */
    public static function category($data , $pid = 0, $level = 1){
        static $new_data = [];

        foreach ($data as $key => $value) {
            if ($value['up_id'] == $pid) {
                $value['level'] = $level;
                $new_data[] = $value;
                unset($data[$key]);
                self::category($data, $value['id'], $level + 1);
            }
        }
        return $new_data;
    }
    /**
     * 获取 周几
     */
    public static function getWeek(){
        $weekarray=array("日","一","二","三","四","五","六"); //先定义一个数组
        return "周" . $weekarray[date("w")];
    }

}