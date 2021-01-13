<?php
namespace common\behaviors;

use backend\models\actionLog;
use Yii;
use yii\base\Behavior;
use yii\db\BaseActiveRecord;

/**
 * desc 记录操作日志 行为
 * Class LogBehavior
 * @package common\behaviors
 */
class LogBehavior extends Behavior
{
    public $user ;
    public $route ;
    public $typeAction;
    public $paramId;
    public function init()
    {

        parent::init();

        $this->user = Yii::$app->user->identity;
        $this->paramId = Yii::$app->request->get('id');
        $this->route = Yii::$app->request->url;
    }

    public function events()
    {
        return [
            BaseActiveRecord::EVENT_AFTER_INSERT=> 'afterInsert',
            BaseActiveRecord::EVENT_AFTER_UPDATE=> 'afterUpdate',
            BaseActiveRecord::EVENT_AFTER_DELETE=> 'afterDelete'
        ];
    }
    public function afterInsert($event)
    {
        $this->typeAction = '插入';
        $this->saveLog();
    }
    public function afterUpdate($event)
    {
        $this->typeAction = '编辑';
        $this->saveLog();
    }
    public function afterDelete($event)
    {
        $this->typeAction = '删除';
        $this->saveLog();
    }
    public function saveLog(){
        $description = "管理员{{$this->user->username}}在{{$this->route}}执行了{{$this->typeAction}}操作 id为{{$this->paramId}}记录";
        $model = new actionLog();
        $model->setAttributes([
            'route' => $this->route,
            'user_id' => $this->user->id,
            'description' => $description,
        ]);
        return $model->save();
    }

}