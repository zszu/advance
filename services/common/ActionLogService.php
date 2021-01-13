<?php
namespace services\common;

use \common\components\Service;
use Yii;

class ActionLogService extends Service
{
    /**
     * 行为日志
     *
     * @param $behavior
     * @param $remark
     * @param bool $noRecordData
     * @param $url
     * @throws \yii\base\InvalidConfigException
     */
    public function create($behavior, $remark, $noRecordData = true, $url = '', $level = '')
    {
        empty($url) && $url = DebrisHelper::getUrl();

        $ip = Yii::$app->request->userIP;
        $model = new ActionLog();
        $model->behavior = $behavior;
        $model->remark = $remark;
        $model->user_id = Yii::$app->user->id ?? 0;
        $model->url = $url;
        $model->app_id = Yii::$app->id;
        $model->get_data = Yii::$app->request->get();
        $model->post_data = $noRecordData == true ? Yii::$app->request->post() : [];
        // $model->post_data = $noRecordData == true ? file_get_contents("php://input") : [];
        $model->header_data = ArrayHelper::toArray(Yii::$app->request->headers);
        $model->method = Yii::$app->request->method;
        $model->module = Yii::$app->controller->module->id;
        $model->controller = Yii::$app->controller->id;
        $model->action = Yii::$app->controller->action->id;
        $model->device = Yii::$app->debris->detectVersion();
        $model->ip = ip2long($ip);
        $model->ip = (string) $model->ip;
        // ip转地区
        if (!empty($ip) && ip2long($ip) && ($ipData = Ip::find($ip))) {
            $model->country = $ipData[0];
            $model->provinces = $ipData[1];
            $model->city = $ipData[2];
        }

        $model->save();

        if (!empty($level)) {
            // 创建订阅消息
            $actions = [
                MessageLevelEnum::INFO => SubscriptionActionEnum::BEHAVIOR_INFO,
                MessageLevelEnum::WARNING => SubscriptionActionEnum::BEHAVIOR_WARNING,
                MessageLevelEnum::ERROR => SubscriptionActionEnum::BEHAVIOR_ERROR,
            ];

            Yii::$app->services->sysNotify->createRemind(
                $model->id,
                SubscriptionReasonEnum::BEHAVIOR_CREATE,
                $actions[$level],
                $model['user_id'],
                MessageLevelEnum::$listExplain[$level] . "行为：$url"
            );
        }
    }
}