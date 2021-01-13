<?php

namespace common\models;

use Yii;
use common\components\ArrayHelper;
use common\models\base\BaseModel;
/**
 * This is the model class for table "{{%param}}".
 *
 * @property int $id
 * @property int $order_by 排序
 * @property int $type 类别
 * @property string $title 名称
 * @property string $name
 * @property string|null $hint 提示
 * @property string|null $value 内容
 * @property string $input_type input类别
 * @property string|null $input_list input 列表内容
 * @property int|null $width 宽度
 * @property int|null $status 状态
 * @property int|null $created_at
 * @property int|null $updated_by
 */
class Param extends BaseModel
{
    const CACHE_KEY = 'model.param';
    const CACHE_TIME = 120;

    const TYPE_SYSTEM = 1;  //系统参数
    const TYPE_SITE = 2;// 站点设置
    const TYPE_COMPANY = 3; //公司设置
    const TYPE_MAIL = 4;  //邮箱设置
    const TYPE_SYSTEM_ITEM = 5;  //条数
    const TYPE_SYSTEM_WH = 6;//尺寸
    const TYPE_DATA = 8;   //订单状态
    const TYPE_PASSWORD = 9;
    public static $typeNames = [
        self::TYPE_SYSTEM => '系统',
        self::TYPE_SITE => '站点',
        self::TYPE_COMPANY => '公司',
        self::TYPE_MAIL => '邮件',
    ];
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%param}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_by', 'type', 'width', 'status', 'created_at', 'updated_by'], 'integer'],
            [['value'], 'string'],
            [['title', 'name'], 'string', 'max' => 50],
            [['hint', 'input_list'], 'string', 'max' => 255],
            [['input_type'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by' => 'Order By',
            'type' => 'Type',
            'title' => 'Title',
            'name' => 'Name',
            'hint' => 'Hint',
            'value' => 'Value',
            'input_type' => 'Input Type',
            'input_list' => 'Input List',
            'width' => 'Width',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
        ];
    }
    public function behaviors()
    {
        return [
            ['class' => '\yii\behaviors\TimestampBehavior', 'createdAtAttribute' => false],
        ];
    }
    public static function findValue($name){
        return Param::find()->where(['name'=>$name])->one()['value'];
    }

    public function afterSave($insert, $changedAttributes)
    {
        self::deleteCache();
    }

    public static function getValue($name, $defaultValue = null)
    {
        $params = self::listData();
        return ArrayHelper::getValue($params, $name, $defaultValue);
    }

    public static function setValue($id, $value)
    {
        $model = self::findOne(['id' => $id]);
        if ($model) {
            $model->value = strval($value);
            if (!$model->save()) {
                Yii::error($model->errors);
            }
        }
    }

    public static function listData($type = null)
    {
        $models = Yii::$app->cache->get(self::CACHE_KEY);
        if ($models === false) {
            $models = self::find()
                ->select(['name', 'value', 'type'])
                ->where(['status' => 1])
                ->andFilterWhere(['type' => $type])
                ->asArray()
                ->all();
            Yii::$app->cache->set(self::CACHE_KEY, $models, self::CACHE_TIME);
        }
        return ArrayHelper::map(array_filter($models, function($row) use ($type) {
            return empty($type) || $row['type'] == $type;
        }), 'name', 'value');
    }

    public static function deleteCache()
    {
        Yii::$app->cache->delete(self::CACHE_KEY);
    }
}
