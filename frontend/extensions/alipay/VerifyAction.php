<?php

namespace frontend\extensions\alipay;

use Yii;
use yii\base\Action;
use yii\helpers\ArrayHelper;

class VerifyAction extends Action
{
    public $method = 'get';
    public $successCallback;
    public $failureCallback;

    public function run()
    {
        var_dump(111);die;
        $alipay = new Alipay();
        $data = $this->method == 'get' ? Yii::$app->request->get() : Yii::$app->request->post();
        if ($alipay->verifyNotify($data) && in_array(ArrayHelper::getValue($data, 'trade_status'), ['TRADE_FINISHED', 'TRADE_SUCCESS'])) {
            if ($this->successCallback !== null) {
                return call_user_func($this->successCallback, $data);
            }
            return 'success';
        } else {
            if ($this->failureCallback !== null) {
                return call_user_func($this->failureCallback, $data);
            }
        }
        return 'fail';
    }
}