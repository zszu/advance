<?php

namespace common\models\auth;

use Yii;

/**
 * This is the model class for table "tsj_auth_assignment".
 *
 * @property int $role_id
 * @property int $user_id
 */
class Assignment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tsj_auth_assignment';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['role_id', 'user_id'], 'required'],
            [['role_id', 'user_id'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'role_id' => 'Role ID',
            'user_id' => 'User ID',
        ];
    }
}
