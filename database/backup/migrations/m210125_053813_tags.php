<?php

use yii\db\Migration;

class m210125_053813_tags extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%tags}}', [
            'article_id' => "int(11) NULL",
            'title' => "varchar(255) NULL",
            'name' => "varchar(255) NULL",
            'frequency' => "int(11) NULL COMMENT '标签数'",
        ], "ENGINE=MyISAM DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%tags}}',['article_id'=>'27','title'=>'Hashtable','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'27','title'=>'PHP函数','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'26','title'=>'abb','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'26','title'=>'数据中心','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'25','title'=>'qq','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'25','title'=>'php','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'24','title'=>'yii2','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'23','title'=>'composer','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'23','title'=>'yii','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'23','title'=>'web','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'22','title'=>'应用结构','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'22','title'=>'yii2','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'21','title'=>'Laravel','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'21','title'=>'php','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'20','title'=>'Homestead','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'20','title'=>'lavarel','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'20','title'=>'开发环境','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'19','title'=>'环境配置','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'19','title'=>'lavarel配置','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'15','title'=>'严格模式','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'15','title'=>'SESSION','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'15','title'=>'tp6','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'14','title'=>'composer','name'=>NULL,'frequency'=>NULL]);
        $this->insert('{{%tags}}',['article_id'=>'14','title'=>'PHP','name'=>NULL,'frequency'=>NULL]);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%tags}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

