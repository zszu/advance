<?php

use yii\db\Migration;

class m210125_053813_type extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%type}}', [
            'id' => "int(10) unsigned NOT NULL AUTO_INCREMENT",
            'up_id' => "int(10) unsigned NULL DEFAULT '0'",
            'level' => "smallint(1) NULL DEFAULT '1'",
            'order_by' => "int(10) NULL DEFAULT '0'",
            'name' => "varchar(20) NULL",
            'title' => "varchar(50) NOT NULL",
            'subtitle' => "varchar(50) NULL",
            'cover' => "varchar(255) NULL",
            'summary' => "varchar(255) NULL",
            'url' => "varchar(255) NULL",
            'status' => "tinyint(1) unsigned NULL DEFAULT '1'",
            'updated_at' => "int(10) unsigned NULL",
            'created_at' => "int(10) unsigned NULL",
            'covers' => "varchar(255) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%type}}',['id'=>'1','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>NULL,'title'=>'php','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1590742304','created_at'=>'1590742304','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'2','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>NULL,'title'=>'thinkphp','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1590742318','created_at'=>'1590742318','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'3','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>NULL,'title'=>'yii2','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1590742322','created_at'=>'1590742322','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'4','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>NULL,'title'=>'ci','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1590742325','created_at'=>'1590742325','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'5','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>NULL,'title'=>'laraval','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1590742340','created_at'=>'1590742340','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'27','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>'news','title'=>'php','subtitle'=>'php是世界上最好的语言','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1600411398','created_at'=>'1600411398','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'28','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>'news','title'=>'yii2','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1600411408','created_at'=>'1600411408','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'29','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>'news','title'=>'ci','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1600411415','created_at'=>'1600411415','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'30','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>'news','title'=>'tp','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1600411419','created_at'=>'1600411419','covers'=>NULL]);
        $this->insert('{{%type}}',['id'=>'31','up_id'=>'0','level'=>'1','order_by'=>'0','name'=>'news','title'=>'lavarel','subtitle'=>'','cover'=>'','summary'=>NULL,'url'=>NULL,'status'=>'1','updated_at'=>'1600411427','created_at'=>'1600411427','covers'=>NULL]);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%type}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

