<?php

namespace common\models;

use common\components\ArrayHelper;
use Yii;
use common\models\base\BaseModel;
/**
 * This is the model class for table "{{%address}}".
 *
 * @property int $id
 * @property int $user_id
 * @property int|null $order_by
 * @property string|null $user_name
 * @property string|null $mobile
 * @property int|null $province_id
 * @property string|null $province
 * @property int|null $city_id
 * @property string|null $city
 * @property int|null $district_id
 * @property string|null $district
 * @property string|null $summary
 * @property int|null $is_default 默认地址
 * @property int|null $status
 * @property int|null $created_at
 * @property int|null $updated_at
 */
class Address extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%address}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'order_by', 'province_id', 'city_id', 'district_id', 'is_default', 'status', 'created_at', 'updated_at'], 'integer'],
            [['user_name', 'mobile', 'province', 'city', 'district', 'summary'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => '用户ID',
            'order_by' => '排序',
            'name' => '姓名',
            'mobile' => '电话',
            'phone' => '电话',
            'gender' => '性别',
            'province_id' => '省份ID',
            'province' => '省份',
            'city_id' => '城市ID',
            'city' => '城市',
            'district_id' => '范围ID',
            'district' => '范围',
            'summary' => '详细地址',
            'is_default' => '默认地址',
            'status' => '状态',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
                $listRegion = Region::find()
                    ->select('name, id')
                    ->where(['id' => [$this->province_id, $this->city_id, $this->district_id]])
                    ->indexBy('id')
                    ->column();
                $this->province = ArrayHelper::getValue($listRegion, $this->province_id);
                $this->city = ArrayHelper::getValue($listRegion, $this->city_id);
                $this->district = ArrayHelper::getValue($listRegion, $this->district_id);

            if ($insert) {
                if (Address::find()->where(['user_id' => $this->user_id])->count() == 0) {
                    $this->is_default = 1;
                }
            }

            return true;
        }

        return false;
    }
}
