<?php

use yii\db\Migration;

class m210125_053813_comment extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%comment}}', [
            'id' => "int(10) unsigned NOT NULL AUTO_INCREMENT",
            'order_by' => "smallint(6) unsigned NULL DEFAULT '0' COMMENT '排序'",
            'type' => "smallint(6) unsigned NULL DEFAULT '0' COMMENT '分类id'",
            'content' => "text NULL COMMENT '内容'",
            'url' => "varchar(255) NULL COMMENT '链接'",
            'tags' => "varchar(255) NULL COMMENT '标签'",
            'created_at' => "int(11) unsigned NULL DEFAULT '0'",
            'updated_at' => "int(11) NULL",
            'status' => "tinyint(1) unsigned zerofill NULL DEFAULT '0' COMMENT '状态：1 已审核 0 未审核'",
            'user_id' => "int(11) NULL COMMENT '用户id'",
            'news_id' => "int(11) NULL COMMENT '文章id'",
            'up_id' => "int(11) NULL",
            'level' => "smallint(6) NULL DEFAULT '1'",
            'cover' => "varchar(255) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%comment}}',['id'=>'17','order_by'=>'10','type'=>'0','content'=>'是呀','url'=>NULL,'tags'=>NULL,'created_at'=>'1600413055','updated_at'=>'1607413810','status'=>'1','user_id'=>'13','news_id'=>'24','up_id'=>'16','level'=>'2','cover'=>NULL]);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%comment}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

