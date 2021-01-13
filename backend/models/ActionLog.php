<?php

namespace backend\models;

use common\models\BaseModel;
use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "{{%action_log}}".
 *
 * @property int $id
 * @property int|null $user_id
 * @property string|null $route 用户操作路由
 * @property string|null $description 操作的描述
 * @property string|null $created_at
 * @property string|null $updated_at
 */
class ActionLog extends ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%action_log}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'user_id'], 'integer'],
            [['description'], 'string'],
            [['updated_at'], 'safe'],
            [['route', 'created_at'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => '用户',
            'route' => '操作路由',
            'description' => '操作详情',
            'created_at' => '操作时间',
        ];
    }
    public static function log($route, $action_id ,$item_id, $user_id = 0)
    {
        $identity = Yii::$app->user->identity;
        if ($user_id == 0) {
            $user_id = $identity->id;
        }
        $description = "管理员{{$identity->username}}在{{$route}}执行了{{$action_id}}操作 id为{{$item_id}}记录";
        $model = new static();
        $model->setAttributes([
            'route' => $route,
            'user_id' => $user_id,
            'description' => $description,
        ]);
        return $model->save();
    }
    public function getUser(){
        return $this->hasOne(UserObj::className() ,['id'=>'user_id']);
    }
    public function behaviors()
    {
        return [
            [
                'class' => 'yii\behaviors\TimestampBehavior',
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                    ActiveRecord::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
            ],
        ];
    }
}
