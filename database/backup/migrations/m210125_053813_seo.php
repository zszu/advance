<?php

use yii\db\Migration;

class m210125_053813_seo extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%seo}}', [
            'id' => "int(10) NOT NULL AUTO_INCREMENT",
            'action' => "varchar(30) NOT NULL",
            'order_by' => "smallint(6) NOT NULL DEFAULT '0'",
            'name' => "varchar(50) NOT NULL",
            'title' => "varchar(255) NOT NULL",
            'keywords' => "varchar(255) NULL",
            'description' => "text NULL",
            'code' => "varchar(255) NULL",
            'status' => "tinyint(1) unsigned NOT NULL DEFAULT '1'",
            'created_at' => "int(10) unsigned NULL",
            'updated_at' => "int(10) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='官网-SEO'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%seo}}',['id'=>'1','action'=>'site/index','order_by'=>'0','name'=>'首页','title'=>'{sitetitle}','keywords'=>'','description'=>'','code'=>NULL,'status'=>'0','created_at'=>'1576488082','updated_at'=>'1566547484']);
        $this->insert('{{%seo}}',['id'=>'17','action'=>'site/news','order_by'=>'0','name'=>'文章列表','title'=>'{title}-{sitetitle}','keywords'=>'','description'=>'','code'=>'','status'=>'1','created_at'=>'1576488082','updated_at'=>'1576488082']);
        $this->insert('{{%seo}}',['id'=>'18','action'=>'site/news-detail','order_by'=>'0','name'=>'文章详情','title'=>'{title}-{sitetitle}','keywords'=>'','description'=>'','code'=>'','status'=>'1','created_at'=>'1576488105','updated_at'=>'1576488105']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%seo}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

