<?php

use yii\db\Migration;

class m210125_053813_user extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%user}}', [
            'id' => "int(11) NOT NULL AUTO_INCREMENT",
            'username' => "varchar(50) NOT NULL COMMENT '用户名'",
            'auth_key' => "varchar(32) NOT NULL COMMENT 'cookie key'",
            'password_hash' => "varchar(128) NOT NULL COMMENT '登录密码'",
            'password_reset_token' => "varchar(128) NULL COMMENT '重置token'",
            'access_token' => "varchar(128) NULL COMMENT 'api token'",
            'invalid_at' => "int(11) NULL COMMENT 'api 有效期'",
            'mobile' => "varchar(11) NULL COMMENT '手机'",
            'email' => "varchar(191) NULL COMMENT '邮箱'",
            'group' => "tinyint(1) NOT NULL COMMENT '群组'",
            'avatar' => "varchar(191) NULL COMMENT '头像'",
            'status' => "tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态'",
            'created_ip' => "varchar(15) NULL COMMENT '注册IP'",
            'last_login_ip' => "varchar(15) NULL COMMENT '最后登录IP'",
            'last_login_at' => "int(11) NULL COMMENT '最后登录时间'",
            'login_times' => "int(11) NULL DEFAULT '0' COMMENT '登录次数'",
            'created_at' => "int(11) NULL",
            'created_by' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'updated_by' => "int(11) NULL",
            'name' => "varchar(20) NULL COMMENT '姓名'",
            'gender' => "tinyint(3) NULL DEFAULT '0' COMMENT '性别'",
            'nickname' => "varchar(50) NULL COMMENT '昵称'",
            'open_id' => "varchar(128) NULL COMMENT 'OPEN ID'",
            'union_id' => "varchar(128) NULL COMMENT 'UNION ID'",
            'order_by' => "int(11) NULL",
            'verification_token' => "varchar(128) NULL",
            'profile' => "text NULL COMMENT '简介'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT");
        
        /* 索引设置 */
        $this->createIndex('username','{{%user}}','username',1);
        $this->createIndex('password_reset_token','{{%user}}','password_reset_token',1);
        $this->createIndex('access_token','{{%user}}','access_token',1);
        $this->createIndex('mobile','{{%user}}','mobile',1);
        $this->createIndex('email','{{%user}}','email',1);
        
        
        /* 表数据 */
        $this->insert('{{%user}}',['id'=>'1','username'=>'admin','auth_key'=>'x6xVZi7iauGqzXwxSGPLNHz8nHWDWE75','password_hash'=>'$2y$13$XFBCi3DOjStRRgXXbfJQ7ey.DL/Wu9e1rjl0IMbFvLFd2DGdWWYoW','password_reset_token'=>NULL,'access_token'=>NULL,'invalid_at'=>NULL,'mobile'=>NULL,'email'=>'admin@qq.com','group'=>'9','avatar'=>'/attachment//2021/01/12/21011217294170594.jpg','status'=>'1','created_ip'=>NULL,'last_login_ip'=>'127.0.0.1','last_login_at'=>'1611551683','login_times'=>'0','created_at'=>'1588063671','created_by'=>NULL,'updated_at'=>'1611551683','updated_by'=>NULL,'name'=>NULL,'gender'=>'0','nickname'=>'12','open_id'=>NULL,'union_id'=>NULL,'order_by'=>NULL,'verification_token'=>NULL,'profile'=>'超级管理员

']);
        $this->insert('{{%user}}',['id'=>'2','username'=>'front','auth_key'=>'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W','password_hash'=>'$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC','password_reset_token'=>NULL,'access_token'=>NULL,'invalid_at'=>NULL,'mobile'=>NULL,'email'=>'12342@qq.com','group'=>'1','avatar'=>'/images/users/avatar.jpg','status'=>'-1','created_ip'=>NULL,'last_login_ip'=>'127.0.0.1','last_login_at'=>'1600412979','login_times'=>'4','created_at'=>'1589004836','created_by'=>NULL,'updated_at'=>'1610527752','updated_by'=>NULL,'name'=>NULL,'gender'=>'0','nickname'=>'front','open_id'=>NULL,'union_id'=>NULL,'order_by'=>NULL,'verification_token'=>NULL,'profile'=>'']);
        $this->insert('{{%user}}',['id'=>'7','username'=>'test','auth_key'=>'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W','password_hash'=>'$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC','password_reset_token'=>NULL,'access_token'=>NULL,'invalid_at'=>NULL,'mobile'=>NULL,'email'=>'1234222@qq.com','group'=>'8','avatar'=>'/attachment//2021/01/13/21011317093284062.jpg','status'=>'1','created_ip'=>NULL,'last_login_ip'=>'127.0.0.1','last_login_at'=>'1610938433','login_times'=>'0','created_at'=>'1588063671','created_by'=>NULL,'updated_at'=>'1610938433','updated_by'=>NULL,'name'=>NULL,'gender'=>'0','nickname'=>'test','open_id'=>NULL,'union_id'=>NULL,'order_by'=>NULL,'verification_token'=>NULL,'profile'=>'']);
        $this->insert('{{%user}}',['id'=>'12','username'=>'woker','auth_key'=>'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W','password_hash'=>'$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC','password_reset_token'=>NULL,'access_token'=>NULL,'invalid_at'=>NULL,'mobile'=>NULL,'email'=>'1234@qq.com','group'=>'8','avatar'=>'/attachment/2020/05/29/20052916410793084.jpg','status'=>'-1','created_ip'=>NULL,'last_login_ip'=>'58.39.224.20','last_login_at'=>'1600414060','login_times'=>'0','created_at'=>'1589004836','created_by'=>NULL,'updated_at'=>'1610527754','updated_by'=>NULL,'name'=>NULL,'gender'=>'0','nickname'=>'woker','open_id'=>NULL,'union_id'=>NULL,'order_by'=>NULL,'verification_token'=>NULL,'profile'=>'后台操作人员

']);
        $this->insert('{{%user}}',['id'=>'13','username'=>'张三','auth_key'=>'lxymhs-8FjiY0i4E0nZ5_hiZcuzK7K1P','password_hash'=>'$2y$13$l4DDZO6vzqCH5gZEHUDF6eKtQbkINKhMPY6785QksNwpQsQzWIRGe','password_reset_token'=>NULL,'access_token'=>NULL,'invalid_at'=>NULL,'mobile'=>NULL,'email'=>'2835152688@qq.com','group'=>'1','avatar'=>NULL,'status'=>'-1','created_ip'=>NULL,'last_login_ip'=>'127.0.0.1','last_login_at'=>'1604646632','login_times'=>'18','created_at'=>'1600412938','created_by'=>NULL,'updated_at'=>'1607329753','updated_by'=>NULL,'name'=>NULL,'gender'=>'0','nickname'=>NULL,'open_id'=>NULL,'union_id'=>NULL,'order_by'=>NULL,'verification_token'=>'F4LY-2cGInNCWF02Pu4EiUnif37WgCee_1600412936','profile'=>NULL]);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%user}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

