<?php

namespace common\models\auth;

use common\models\base\BaseModel;
use Yii;
use common\models\auth\ItemRole;
/**
 * This is the model class for table "tsj_auth_role".
 *
 * @property int $id ID
 * @property string|null $title 标题
 * @property int|null $order_by 排序
 * @property int $pid 父级 ID
 * @property int|null $level 等级
 * @property int|null $status 状态 0：未启用 1：已启用
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 编辑时间
 * @property string|null $summary 描述
 */
class Role extends BaseModel
{
    //角色的权限
    public $rules;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tsj_auth_role';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_by', 'pid', 'level', 'status', 'created_at', 'updated_at'], 'integer'],
            [['title'], 'string', 'max' => 255],
            [['summary'], 'string', 'max' => 128],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'order_by' => 'Order By',
            'pid' => 'Pid',
            'level' => 'Level',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'summary' => 'Summary',
        ];
    }

    public function saveRules($data , $id){

        $data = $data['userTreeIds'] ?? [];
        ItemRole::deleteAll(['role_id' =>$id]);
        $items = [];

        foreach ($data as $v){
            $items[] = [
                $id,
                $v,
                time(),
                time(),
            ];
        }

        $fields = ['role_id' ,'item_id','created_at','updated_at'];
        !empty($items)&&Yii::$app->db->createCommand()->batchInsert(ItemRole::tableName() , $fields , $items)->execute();
    }
}
