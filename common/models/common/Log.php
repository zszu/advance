<?php

namespace common\models\common;

use \common\models\base\BaseModel;
use common\models\User;

/**
 * This is the model class for table "{{%common_log}}".
 *
 * @property int $id
 * @property string|null $app_id 应用id
 * @property int|null $merchant_id 商户id
 * @property int|null $user_id 用户id
 * @property string|null $method 提交类型
 * @property string|null $module 模块
 * @property string|null $controller 控制器
 * @property string|null $action 方法
 * @property string|null $url 提交url
 * @property string|null $get_data get数据
 * @property string|null $post_data post数据
 * @property string|null $header_data header数据
 * @property string|null $ip ip地址
 * @property int|null $error_code 报错code
 * @property string|null $error_msg 报错信息
 * @property string|null $error_data 报错日志
 * @property string|null $req_id 对外id
 * @property string|null $device 设备信息
 * @property int $status 状态(-1:已删除,0:禁用,1:正常)
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 修改时间
 */
class Log extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%common_log}}';
    }


    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['merchant_id', 'user_id', 'error_code', 'status', 'created_at', 'updated_at', 'ip'], 'integer'],
            [['get_data', 'post_data', 'error_data', 'header_data'], 'safe'],
            [['method'], 'string', 'max' => 20],
            [['module', 'action', 'req_id', 'app_id'], 'string', 'max' => 50],
            [['controller'], 'string', 'max' => 100],
            [['device'], 'string', 'max' => 200],
            [['url', 'error_msg'], 'string', 'max' => 1000],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'merchant_id' => '商户id',
            'user_id' => '用户id',
            'app_id' => '应用id',
            'method' => '提交方法',
            'module' => '模块',
            'controller' => '控制器',
            'action' => '方法',
            'url' => '访问链接',
            'get_data' => 'Get 数据',
            'post_data' => 'Post 数据',
            'header_data' => 'Header 数据',
            'ip' => 'ip',
            'req_id' => '对外id',
            'error_code' => '报错编码',
            'error_msg' => '报错信息',
            'error_data' => '报错内容',
            'status' => '状态',
            'created_at' => '创建时间',
            'updated_at' => '更新时间',
        ];
    }
    public function getMember(){
        return $this->hasOne(User::className() , ['id'=>"user_id"]);
    }
}
