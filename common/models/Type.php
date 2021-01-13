<?php

namespace common\models;

use common\components\AppHelper;
use common\components\ArrayHelper;
use Yii;
use common\models\base\BaseModel;

/**
 * This is the model class for table "{{%type}}".
 *
 * @property int $id
 * @property int|null $up_id
 * @property int|null $level
 * @property int|null $order_by
 * @property string|null $name
 * @property string $title
 * @property string|null $subtitle
 * @property string|null $cover
 * @property string|null $summary
 * @property string|null $url
 * @property int|null $status
 * @property int|null $updated_at
 * @property int|null $created_at
 * @property string|null $covers
 */
class Type extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%type}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['up_id', 'level', 'order_by', 'status', 'updated_at', 'created_at'], 'integer'],
            [['title'], 'required'],
            [['name'], 'string', 'max' => 20],
            [['title', 'subtitle'], 'string', 'max' => 50],
            [['cover', 'summary', 'url', 'covers'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'up_id' => '上级ID',
            'level' => '等级',
            'order_by' => '排序',
            'name' => 'Name',
            'title' => '标题',
            'subtitle' => '副标题',
            'cover' => '封面',
            'summary' => '简介',
            'url' => '路由',
            'status' => '状态',
            'updated_at' => '修改时间',
            'created_at' => '创建时间',
            'covers' => '多图',
        ];
    }
    public function beforeSave($insert)
    {
        $this->name = Yii::$app->request->get('name');
        return parent::beforeSave($insert);
    }

    public static  function listData($name = 'news'){
        $models = self::find()->select(['id','up_id','level','title','status'])->where(['status'=>1 , 'name' => $name])->asArray()->all();
        $models = AppHelper::category($models);
        return ArrayHelper::map($models , 'id' ,'title');
    }
}
