<?php

namespace common\models;

use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "{{%express}}".
 *
 * @property int $id
 * @property int $order_by 排序
 * @property string $name 名称
 * @property string $code 代码
 * @property int $count_order 已发数量
 * @property int $is_default 预设
 * @property int $status 状态
 * @property int $created_at
 * @property int $updated_at
 */
class Express extends BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%express}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['order_by', 'count_order', 'created_at', 'updated_at'], 'integer'],
            [['name'], 'required'],
            [['name', 'code'], 'string', 'max' => 255],
            [['is_default', 'status'], 'string', 'max' => 3],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by' => '排序',
            'name' => '名称',
            'code' => '代码',
            'count_order' => '已发数量',
            'is_default' => '预设',
            'status' => '状态',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }


    public static function listData()
    {
        return self::find()
            ->select('name, id')
            ->where(['status' => STATUS_ACTIVE])
            ->orderBy('is_default DESC, order_by DESC, id')
            ->indexBy('id')
            ->column();
    }
}
