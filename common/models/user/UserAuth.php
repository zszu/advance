<?php

namespace common\models\user;

use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "zz_user_auth".
 *
 * @property int $id
 * @property int $user_id 用户 ID
 * @property int|null $unionid 唯一ID
 * @property string|null $oauth_client 绑定平台
 * @property int|null $oauth_client_user_id 授权id
 * @property int|null $gender 性别 0 ：未知 1:男 2：女
 * @property int|null $status
 * @property int|null $created_at
 * @property int|null $updated_at
 */
class UserAuth extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'zz_user_auth';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id'], 'required'],
            [['user_id', 'unionid', 'oauth_client_user_id', 'gender', 'status', 'created_at', 'updated_at'], 'integer'],
            [['oauth_client'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'member_id' => '用户id',
            'unionid' => '第三方用户唯一id',
            'oauth_client' => '类型',
            'oauth_client_user_id' => '第三方用户id',
            'gender' => '性别',
            'status' => '状态',
            'created_at' => '创建时间',
            'updated_at' => '更新时间',
        ];
    }
}
