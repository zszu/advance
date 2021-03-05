<?php

use yii\db\Migration;

class m210125_053813_address extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%address}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'user_id' => "int(11) NULL",
            'order_by' => "int(11) NULL",
            'user_name' => "varchar(255) NULL",
            'mobile' => "varchar(255) NULL",
            'province_id' => "int(11) NULL",
            'province' => "varchar(255) NULL",
            'city_id' => "int(11) NULL",
            'city' => "varchar(255) NULL",
            'district_id' => "int(11) NULL",
            'district' => "varchar(255) NULL",
            'summary' => "varchar(255) NULL",
            'is_default' => "tinyint(1) NULL DEFAULT '0' COMMENT '默认地址'",
            'status' => "tinyint(1) NULL",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        $this->createIndex('user_id','{{%address}}','user_id',0);
        
        
        /* 表数据 */
        $this->insert('{{%address}}',['id'=>'1','user_id'=>NULL,'order_by'=>NULL,'user_name'=>NULL,'mobile'=>'','province_id'=>'41','province'=>'河南省','city_id'=>'4115','city'=>'信阳市','district_id'=>'411528','district'=>'息县','summary'=>'','is_default'=>'1','status'=>NULL,'created_at'=>NULL,'updated_at'=>'1611382841']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%address}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

