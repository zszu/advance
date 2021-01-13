<?php

namespace common\models\auth;

use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "tsj_auth_item_role".
 *
 * @property int $role_id 角色 ID
 * @property int $item_id 权限ID
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 编辑时间
 */
class ItemRole extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tsj_auth_item_role';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['role_id', 'item_id'], 'required'],
            [['role_id', 'item_id','created_at', 'updated_at'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'role_id' => 'Role ID',
            'item_id' => 'Item ID',

            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
