<?php

use yii\db\Migration;

class m210125_053813_active extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%active}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'order_by' => "int(11) NULL",
            'title' => "varchar(255) NULL",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'active_start' => "varchar(255) NULL",
            'active_end' => "varchar(255) NULL",
            'people_sum' => "int(11) NULL",
            'status' => "tinyint(1) NULL",
            'cover' => "varchar(255) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%active}}',['id'=>'2','order_by'=>NULL,'title'=>'test','created_at'=>'1604468170','updated_at'=>'1607412829','active_start'=>'2020-11-04 13:35:45','active_end'=>'2020-11-02 02:10:45','people_sum'=>'2','status'=>'1','cover'=>'']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%active}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

