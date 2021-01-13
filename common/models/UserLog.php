<?php

namespace common\models;

use backend\models\UserObj;
use Yii;
use \yii\db\ActiveRecord;
use common\models\base\BaseModel;
/**
 * This is the model class for table "{{%zz_user_log}}".
 *
 * @property int $id
 * @property int|null $type 类别
 * @property int|null $user_id 用户ID
 * @property string|null $content 内容
 * @property string|null $item_id 关联ID
 * @property string|null $created_ip
 * @property int|null $created_at
 */
class UserLog extends BaseModel
{
    CONST TYPE_LOGIN = 1;

    public static $typeNames = [
        self::TYPE_LOGIN => '登录',
    ];
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%user_log}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['type', 'user_id', 'created_at'], 'integer'],
            [['content'], 'string'],
            [['item_id'], 'string', 'max' => 190],
            [['created_ip'], 'string', 'max' => 15],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type' => 'Type',
            'user_id' => 'User ID',
            'content' => 'Content',
            'item_id' => 'Item ID',
            'created_ip' => 'Created Ip',
            'created_at' => 'Created At',
        ];
    }
    public function behaviors()
    {
        return [
            ['class' => '\yii\behaviors\TimestampBehavior', 'updatedAtAttribute' => false],
            [
                'class' => '\yii\behaviors\AttributeBehavior',
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => 'created_ip',
                ],
                'value' => Yii::$app->request->userIP,
            ],
        ];
    }

    public static function log($type, $content, $user_id = 0)
    {
        if ($user_id == 0) {
            $user_id = Yii::$app->user->id;
        }
        $model = new static();
        $model->setAttributes([
            'type' => $type,
            'user_id' => $user_id,
            'content' => $content,
        ]);
        return $model->save();
    }

    public static function adminLog($content, $item_id = '')
    {
        $model = new static();
        $model->setAttributes([
            'user_id' => 0,
            'content' => $content,
            'item_id' => $item_id,
        ]);
        return $model->save();
    }

    public function getUser(){
        return $this->hasOne(UserObj::className() , ['id'=>'user_id']);
    }
}
