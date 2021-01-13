<?php
namespace common\behaviors;

use Yii;
use yii\base\ActionFilter;
use common\models\Param;

class ParamBehavior extends ActionFilter
{
    public $cache_name = 'params';
    public $cache_time = 60;

    public function beforeAction($action)
    {
        if (isset($this->owner->params)) {
            $this->owner->params = Yii::$app->cache->get($this->cache_name);
            if ($this->owner->params === false) {
                $this->owner->params = Param::find()
                    ->select(['name', 'value'])
                    ->where(['status' => 1])
                    ->asArray()
                    ->all();
                $this->owner->params = \yii\helpers\ArrayHelper::map($this->owner->params, 'name', 'value');
                Yii::$app->cache->set($this->cache_name, $this->owner->params, $this->cache_time);
            }
        }
        return true;
    }

}


?>