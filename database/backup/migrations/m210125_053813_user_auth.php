<?php

use yii\db\Migration;

class m210125_053813_user_auth extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%user_auth}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'user_id' => "int(11) NOT NULL COMMENT '用户 ID'",
            'unionid' => "int(11) NULL COMMENT '唯一ID'",
            'oauth_client' => "varchar(20) NULL COMMENT '绑定平台'",
            'oauth_client_user_id' => "int(100) NULL COMMENT '授权id'",
            'gender' => "tinyint(1) NULL COMMENT '性别 0 ：未知 1:男 2：女'",
            'status' => "tinyint(1) NULL",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='第三方 授权表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%user_auth}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

