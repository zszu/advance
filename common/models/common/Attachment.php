<?php

namespace common\models\common;

use Yii;

/**
 * This is the model class for table "{{%common_attachment}}".
 *
 * @property int $id
 * @property int|null $user_id 商户id
 * @property string|null $drive 驱动
 * @property string|null $upload_type 上传类型
 * @property string $specific_type 类别
 * @property string|null $base_url url
 * @property string|null $path 本地路径
 * @property string|null $md5 md5校验码
 * @property string|null $name 文件原始名
 * @property string|null $extension 扩展名
 * @property int|null $size 长度
 * @property int|null $year 年份
 * @property int|null $month 月份
 * @property int|null $day 日
 * @property int|null $width 宽度
 * @property int|null $height 高度
 * @property string|null $upload_ip 上传者ip
 * @property int $status 状态[-1:删除;0:禁用;1启用]
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 修改时间
 */
class Attachment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%common_attachment}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'size', 'year', 'month', 'day', 'width', 'height', 'status', 'created_at', 'updated_at'], 'integer'],
            [['drive', 'extension'], 'string', 'max' => 50],
            [['upload_type'], 'string', 'max' => 10],
            [['specific_type', 'md5'], 'string', 'max' => 100],
            [['base_url', 'path', 'name'], 'string', 'max' => 1000],
            [['upload_ip'], 'string', 'max' => 16],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'drive' => 'Drive',
            'upload_type' => 'Upload Type',
            'specific_type' => 'Specific Type',
            'base_url' => 'Base Url',
            'path' => 'Path',
            'md5' => 'Md5',
            'name' => 'Name',
            'extension' => 'Extension',
            'size' => 'Size',
            'year' => 'Year',
            'month' => 'Month',
            'day' => 'Day',
            'width' => 'Width',
            'height' => 'Height',
            'upload_ip' => 'Upload Ip',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
