<?php

namespace common\models;

use Yii;
use yii\helpers\ArrayHelper;
use common\models\base\BaseModel;
/**
 * This is the model class for table "{{%region}}".
 *
 * @property string $id 编号
 * @property string $parent_id 上级编号
 * @property int $level 层级
 * @property int $order_by 排序
 * @property string $name 名称
 * @property int $count_sub 子类数
 * @property int $count_item 项目数
 * @property int $status 状态
 * @property int $created_at
 * @property int $updated_at
 */
class Region extends BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%region}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'name'], 'required'],
            [['order_by', 'count_sub', 'count_item', 'created_at', 'updated_at'], 'integer'],
            [['id', 'parent_id'], 'string', 'max' => 11],
            [['level', 'status'], 'string', 'max' => 3],
            [['name'], 'string', 'max' => 100],
            [['id'], 'unique'],
        ];
    }

    public function getParent()
    {
        return $this->hasOne(self::className(), ['id' => 'parent_id']);
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '编号',
            'parent_id' => '上级编号',
            'level' => '层级',
            'order_by' => '排序',
            'name' => '名称',
            'count_sub' => '子类数',
            'count_item' => '项目数',
            'status' => '状态',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    public function behaviors()
    {
        return [
            ['class' => 'yii\behaviors\TimestampBehavior'],
        ];
    }

    private static $_level2Group;
    public static function listDataForMultipleSelect()
    {
        if (empty(static::$_level2Group)) {
            static::$_level2Group = ArrayHelper::map(self::find()
                ->where(['level' => 2, 'status' => STATUS_ACTIVE])
                ->with('parent')
                ->all(),
                'id',
                'name',
                function ($row) {
                    return $row->parent->name;
                }
            );
        }
        return static::$_level2Group;
    }

    public static function cityTitles($ids)
    {
        $allNames = self::listDataForMultipleSelect();
        $result = '';
        foreach ($allNames as $k => $v) {
            $itemArr = [];
            $all = true;
            foreach ($v as $k1 => $v1) {
                if (in_array($k1, $ids)) {
                    array_push($itemArr, $v1);
                } else {
                    $all = false;
                }
            }
            if ($itemArr) {
                $result .= ',' . $k;
                if (!$all) {
                    $result .= '[' . implode(',', $itemArr) . ']';
                }
            }
        }

        return substr($result, 1);
    }

    public static function reserveCityId($province, $city)
    {
        $province = strtr($province, [
            '省' => '',
            '市' => '',
            '自治区' => '',
            '特别行政区' => '',
            '壮族' => '',
            '回族' => '',
        ]);
        if (empty($province) || empty($city)) {
            return null;
        }

        $provinceId = self::find()
            ->select('id')
            ->filterWhere(['like', 'name', $province])
            ->andWhere(['level' => 1])
            ->scalar();
        $cityId = self::find()
            ->select('id')
            ->filterWhere(['like', 'name', $city])
            ->andWhere(['level' => 2, 'parent_id' => $provinceId])
            ->scalar();
        if (!$cityId && $provinceId) {
            $cityId = $provinceId . '01';
        }

        return $cityId;
    }
}
