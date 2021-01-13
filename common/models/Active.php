<?php

namespace common\models;

use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "zz_active".
 *
 * @property int $id
 * @property int|null $order_by
 * @property string|null $title 标题
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 修改时间
 * @property string|null $active_start 活动开始时间
 * @property string|null $active_end 活动结束时间
 * @property int|null $people_sum 拼团人数
 * @property int|null $status 状态
 * @property string|null $cover 活动图片
 */
class Active extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'zz_active';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title' , 'people_sum', 'active_start', 'active_end'], 'required'],
            ['active_end' , 'validateActiveEnd'],


            [['order_by', 'created_at', 'updated_at', 'people_sum', 'status'], 'integer'],

            [['active_start', 'active_end'], 'safe'],
            [['title', 'cover'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by' => '排序',
            'title' => '标题',
            'created_at' => '创建时间',
            'updated_at' => '修改时间',
            'active_start' => '活动开始时间',
            'active_end' => '活动结束时间',
            'people_sum' => '拼团人数',
            'status' => '状态',
            'cover' => '活动图片',
        ];
    }

    public function validateActiveEnd($attribute , $params){
        $end = strtotime($this->active_end);
        $start = strtotime($this->active_start);

        if($end <= $start){
            return $this->addError($attribute , '活动结束时间必须大于开始时间');
        }
    }

}
