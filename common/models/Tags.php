<?php

namespace common\models;

use Yii;
use common\models\base\BaseModel;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "{{%tags}}".
 *
 * @property int|null $article_id
 * @property string|null $title
 * @property string|null $name
 * @property int|null $frequency 标签数
 */
class Tags extends ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%tags}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['article_id', 'frequency'], 'integer'],
            [['title', 'name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'article_id' => '文章ID',
            'title' => 'Title',
            'name' => 'Name',
            'frequency' => '频率',
        ];
    }
}
