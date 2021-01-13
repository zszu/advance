<?php
namespace common\components;
use Yii;

class BaseAction{
    /**
     * 错误提示信息
     *
     * @param string $msgText 错误内容
     * @param string $skipUrl 跳转链接
     * @param string $msgType 提示类型 [success/error/info/warning]
     * @return mixed
     */
    protected function message($msgText, $skipUrl, $msgType = null)
    {
        if (!$msgType || !in_array($msgType, ['success', 'error', 'info', 'warning'])) {
            $msgType = 'success';
        }

        Yii::$app->getSession()->setFlash($msgType, $msgText);
        return $skipUrl;
    }
}