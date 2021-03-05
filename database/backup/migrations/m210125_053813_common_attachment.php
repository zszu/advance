<?php

use yii\db\Migration;

class m210125_053813_common_attachment extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%common_attachment}}', [
            'id' => "int(11) NOT NULL AUTO_INCREMENT",
            'user_id' => "int(10) unsigned NULL DEFAULT '0' COMMENT '商户id'",
            'drive' => "varchar(50) NULL DEFAULT '' COMMENT '驱动'",
            'upload_type' => "varchar(10) NULL DEFAULT '' COMMENT '上传类型'",
            'specific_type' => "varchar(100) NOT NULL DEFAULT '' COMMENT '类别'",
            'base_url' => "varchar(1000) NULL DEFAULT '' COMMENT 'url'",
            'path' => "varchar(1000) NULL DEFAULT '' COMMENT '本地路径'",
            'md5' => "varchar(100) NULL DEFAULT '' COMMENT 'md5校验码'",
            'name' => "varchar(1000) NULL DEFAULT '' COMMENT '文件原始名'",
            'extension' => "varchar(50) NULL DEFAULT '' COMMENT '扩展名'",
            'size' => "int(11) NULL DEFAULT '0' COMMENT '长度'",
            'year' => "int(10) unsigned NULL DEFAULT '0' COMMENT '年份'",
            'month' => "int(10) NULL DEFAULT '0' COMMENT '月份'",
            'day' => "int(10) unsigned NULL DEFAULT '0' COMMENT '日'",
            'width' => "int(10) unsigned NULL DEFAULT '0' COMMENT '宽度'",
            'height' => "int(10) unsigned NULL DEFAULT '0' COMMENT '高度'",
            'upload_ip' => "varchar(16) NULL DEFAULT '' COMMENT '上传者ip'",
            'status' => "tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态[-1:删除;0:禁用;1启用]'",
            'created_at' => "int(10) unsigned NULL DEFAULT '0' COMMENT '创建时间'",
            'updated_at' => "int(10) unsigned NULL DEFAULT '0' COMMENT '修改时间'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='公用_文件管理'");
        
        /* 索引设置 */
        $this->createIndex('md5','{{%common_attachment}}','md5',0);
        
        
        /* 表数据 */
        $this->insert('{{%common_attachment}}',['id'=>'3','user_id'=>'0','drive'=>'','upload_type'=>'video','specific_type'=>'','base_url'=>'','path'=>'/attachment/2021/01/13/21011311254484447.mp4','md5'=>'','name'=>'','extension'=>'','size'=>'0','year'=>'0','month'=>'0','day'=>'0','width'=>'0','height'=>'0','upload_ip'=>'','status'=>'1','created_at'=>'0','updated_at'=>'0']);
        $this->insert('{{%common_attachment}}',['id'=>'4','user_id'=>'0','drive'=>'','upload_type'=>'video','specific_type'=>'','base_url'=>'','path'=>'/attachment/2021/01/13/21011311291066182.mov','md5'=>'','name'=>'','extension'=>'','size'=>'0','year'=>'0','month'=>'0','day'=>'0','width'=>'0','height'=>'0','upload_ip'=>'','status'=>'1','created_at'=>'0','updated_at'=>'0']);
        $this->insert('{{%common_attachment}}',['id'=>'5','user_id'=>'0','drive'=>'','upload_type'=>'video','specific_type'=>'','base_url'=>'','path'=>'/attachment/2021/01/13/21011311453242011.mov','md5'=>'','name'=>'','extension'=>'','size'=>'0','year'=>'0','month'=>'0','day'=>'0','width'=>'0','height'=>'0','upload_ip'=>'','status'=>'1','created_at'=>'0','updated_at'=>'0']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%common_attachment}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

