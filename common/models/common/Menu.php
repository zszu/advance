<?php

namespace common\models\common;

use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "{{%menu}}".
 *
 * @property int $id
 * @property int|null $pid 父id
 * @property string|null $title 名称
 * @property string|null $url 路径
 * @property int|null $order_by 排序 
 * @property string|null $type 1内部 2外部
 * @property string|null $is_menu 是否为菜单 1是
 * @property string|null $summary 描述
 * @property string|null $icon 图标
 * @property int|null $created_at
 * @property int|null $updated_at
 * @property int|null $status
 */
class Menu extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%menu}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pid', 'order_by', 'created_at', 'updated_at', 'status'], 'integer'],
            [['summary'], 'string'],
            [['title', 'icon'], 'string', 'max' => 32],
            [['url'], 'string', 'max' => 128],
            [['type', 'is_menu'], 'string', 'max' => 1],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pid' => 'Pid',
            'title' => '名称',
            'url' => '路径',
            'order_by' => '排序',
            'type' => 'Type',
            'is_menu' => 'Is Menu',
            'summary' => '简介',
            'icon' => '图标',
            'created_at' => '添加时间',
            'updated_at' => '创建时间',
            'status' => '状态',
        ];
    }
}
