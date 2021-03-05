<?php

use yii\db\Migration;

class m210125_053813_user_log extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%user_log}}', [
            'id' => "int(11) NOT NULL AUTO_INCREMENT",
            'type' => "tinyint(1) NULL DEFAULT '0' COMMENT '类别'",
            'user_id' => "int(11) NULL COMMENT '用户ID'",
            'content' => "text NULL COMMENT '内容'",
            'item_id' => "varchar(190) NULL COMMENT '关联ID'",
            'created_ip' => "varchar(15) NULL",
            'created_at' => "int(11) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='用户登录日志表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%user_log}}',['id'=>'1','type'=>'1','user_id'=>'8','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588930348']);
        $this->insert('{{%user_log}}',['id'=>'2','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588930357']);
        $this->insert('{{%user_log}}',['id'=>'3','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588987204']);
        $this->insert('{{%user_log}}',['id'=>'4','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588993477']);
        $this->insert('{{%user_log}}',['id'=>'5','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588993698']);
        $this->insert('{{%user_log}}',['id'=>'6','type'=>'1','user_id'=>'8','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588993708']);
        $this->insert('{{%user_log}}',['id'=>'7','type'=>'1','user_id'=>'8','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588993822']);
        $this->insert('{{%user_log}}',['id'=>'8','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1588993829']);
        $this->insert('{{%user_log}}',['id'=>'9','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589245453']);
        $this->insert('{{%user_log}}',['id'=>'10','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589245453']);
        $this->insert('{{%user_log}}',['id'=>'11','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589245629']);
        $this->insert('{{%user_log}}',['id'=>'12','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589245654']);
        $this->insert('{{%user_log}}',['id'=>'13','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589245724']);
        $this->insert('{{%user_log}}',['id'=>'14','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589245732']);
        $this->insert('{{%user_log}}',['id'=>'15','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589246689']);
        $this->insert('{{%user_log}}',['id'=>'16','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589246704']);
        $this->insert('{{%user_log}}',['id'=>'17','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589246764']);
        $this->insert('{{%user_log}}',['id'=>'18','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589246772']);
        $this->insert('{{%user_log}}',['id'=>'19','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589276608']);
        $this->insert('{{%user_log}}',['id'=>'20','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589523168']);
        $this->insert('{{%user_log}}',['id'=>'21','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589523170']);
        $this->insert('{{%user_log}}',['id'=>'22','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789094']);
        $this->insert('{{%user_log}}',['id'=>'23','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789096']);
        $this->insert('{{%user_log}}',['id'=>'24','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789160']);
        $this->insert('{{%user_log}}',['id'=>'25','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789170']);
        $this->insert('{{%user_log}}',['id'=>'26','type'=>'1','user_id'=>'7','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789851']);
        $this->insert('{{%user_log}}',['id'=>'27','type'=>'1','user_id'=>'12','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789930']);
        $this->insert('{{%user_log}}',['id'=>'28','type'=>'1','user_id'=>'12','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789956']);
        $this->insert('{{%user_log}}',['id'=>'29','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589789963']);
        $this->insert('{{%user_log}}',['id'=>'30','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589790007']);
        $this->insert('{{%user_log}}',['id'=>'31','type'=>'1','user_id'=>'12','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589790016']);
        $this->insert('{{%user_log}}',['id'=>'32','type'=>'1','user_id'=>'12','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589790034']);
        $this->insert('{{%user_log}}',['id'=>'33','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589790041']);
        $this->insert('{{%user_log}}',['id'=>'34','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589880117']);
        $this->insert('{{%user_log}}',['id'=>'35','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589936986']);
        $this->insert('{{%user_log}}',['id'=>'36','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589936986']);
        $this->insert('{{%user_log}}',['id'=>'37','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589941836']);
        $this->insert('{{%user_log}}',['id'=>'38','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1589954693']);
        $this->insert('{{%user_log}}',['id'=>'39','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590046040']);
        $this->insert('{{%user_log}}',['id'=>'40','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590051114']);
        $this->insert('{{%user_log}}',['id'=>'41','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590051524']);
        $this->insert('{{%user_log}}',['id'=>'42','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590111308']);
        $this->insert('{{%user_log}}',['id'=>'43','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590115179']);
        $this->insert('{{%user_log}}',['id'=>'44','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590115180']);
        $this->insert('{{%user_log}}',['id'=>'45','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590115772']);
        $this->insert('{{%user_log}}',['id'=>'46','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116196']);
        $this->insert('{{%user_log}}',['id'=>'47','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116198']);
        $this->insert('{{%user_log}}',['id'=>'48','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116211']);
        $this->insert('{{%user_log}}',['id'=>'49','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116721']);
        $this->insert('{{%user_log}}',['id'=>'50','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116732']);
        $this->insert('{{%user_log}}',['id'=>'51','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116784']);
        $this->insert('{{%user_log}}',['id'=>'52','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590116791']);
        $this->insert('{{%user_log}}',['id'=>'53','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117101']);
        $this->insert('{{%user_log}}',['id'=>'54','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117246']);
        $this->insert('{{%user_log}}',['id'=>'55','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117449']);
        $this->insert('{{%user_log}}',['id'=>'56','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117450']);
        $this->insert('{{%user_log}}',['id'=>'57','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117455']);
        $this->insert('{{%user_log}}',['id'=>'58','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117522']);
        $this->insert('{{%user_log}}',['id'=>'59','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117545']);
        $this->insert('{{%user_log}}',['id'=>'60','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117862']);
        $this->insert('{{%user_log}}',['id'=>'61','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590117883']);
        $this->insert('{{%user_log}}',['id'=>'62','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590129670']);
        $this->insert('{{%user_log}}',['id'=>'63','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590373993']);
        $this->insert('{{%user_log}}',['id'=>'64','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590373996']);
        $this->insert('{{%user_log}}',['id'=>'65','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590463414']);
        $this->insert('{{%user_log}}',['id'=>'66','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590483484']);
        $this->insert('{{%user_log}}',['id'=>'67','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590483493']);
        $this->insert('{{%user_log}}',['id'=>'68','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590483497']);
        $this->insert('{{%user_log}}',['id'=>'69','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590483515']);
        $this->insert('{{%user_log}}',['id'=>'70','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590484925']);
        $this->insert('{{%user_log}}',['id'=>'71','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590541616']);
        $this->insert('{{%user_log}}',['id'=>'72','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590566625']);
        $this->insert('{{%user_log}}',['id'=>'73','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590572230']);
        $this->insert('{{%user_log}}',['id'=>'74','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590655525']);
        $this->insert('{{%user_log}}',['id'=>'75','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590655527']);
        $this->insert('{{%user_log}}',['id'=>'76','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590655530']);
        $this->insert('{{%user_log}}',['id'=>'77','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590722668']);
        $this->insert('{{%user_log}}',['id'=>'78','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590722670']);
        $this->insert('{{%user_log}}',['id'=>'79','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590722675']);
        $this->insert('{{%user_log}}',['id'=>'80','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590725017']);
        $this->insert('{{%user_log}}',['id'=>'81','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590730639']);
        $this->insert('{{%user_log}}',['id'=>'82','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590732873']);
        $this->insert('{{%user_log}}',['id'=>'83','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590736179']);
        $this->insert('{{%user_log}}',['id'=>'84','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590740947']);
        $this->insert('{{%user_log}}',['id'=>'85','type'=>'1','user_id'=>'12','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590740964']);
        $this->insert('{{%user_log}}',['id'=>'86','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590740965']);
        $this->insert('{{%user_log}}',['id'=>'87','type'=>'1','user_id'=>'12','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741022']);
        $this->insert('{{%user_log}}',['id'=>'88','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741030']);
        $this->insert('{{%user_log}}',['id'=>'89','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741346']);
        $this->insert('{{%user_log}}',['id'=>'90','type'=>'1','user_id'=>'12','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741363']);
        $this->insert('{{%user_log}}',['id'=>'91','type'=>'1','user_id'=>'12','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741574']);
        $this->insert('{{%user_log}}',['id'=>'92','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741583']);
        $this->insert('{{%user_log}}',['id'=>'93','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741637']);
        $this->insert('{{%user_log}}',['id'=>'94','type'=>'1','user_id'=>'12','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741647']);
        $this->insert('{{%user_log}}',['id'=>'95','type'=>'1','user_id'=>'12','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741700']);
        $this->insert('{{%user_log}}',['id'=>'96','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590741706']);
        $this->insert('{{%user_log}}',['id'=>'97','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590743534']);
        $this->insert('{{%user_log}}',['id'=>'98','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590743542']);
        $this->insert('{{%user_log}}',['id'=>'99','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1590973170']);
        $this->insert('{{%user_log}}',['id'=>'100','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600238612']);
        $this->insert('{{%user_log}}',['id'=>'101','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600240489']);
        $this->insert('{{%user_log}}',['id'=>'102','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600399916']);
        $this->insert('{{%user_log}}',['id'=>'103','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600400219']);
        $this->insert('{{%user_log}}',['id'=>'104','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600400462']);
        $this->insert('{{%user_log}}',['id'=>'105','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600400508']);
        $this->insert('{{%user_log}}',['id'=>'106','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600400639']);
        $this->insert('{{%user_log}}',['id'=>'107','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600402051']);
        $this->insert('{{%user_log}}',['id'=>'108','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600402292']);
        $this->insert('{{%user_log}}',['id'=>'109','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600408594']);
        $this->insert('{{%user_log}}',['id'=>'110','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600408611']);
        $this->insert('{{%user_log}}',['id'=>'111','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600409431']);
        $this->insert('{{%user_log}}',['id'=>'112','type'=>'1','user_id'=>'2','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600412979']);
        $this->insert('{{%user_log}}',['id'=>'113','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600413041']);
        $this->insert('{{%user_log}}',['id'=>'114','type'=>'1','user_id'=>'2','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600413362']);
        $this->insert('{{%user_log}}',['id'=>'115','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600413385']);
        $this->insert('{{%user_log}}',['id'=>'116','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600413395']);
        $this->insert('{{%user_log}}',['id'=>'117','type'=>'1','user_id'=>'7','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600413643']);
        $this->insert('{{%user_log}}',['id'=>'118','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1600413651']);
        $this->insert('{{%user_log}}',['id'=>'119','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600413958']);
        $this->insert('{{%user_log}}',['id'=>'120','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600413978']);
        $this->insert('{{%user_log}}',['id'=>'121','type'=>'1','user_id'=>'7','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600413998']);
        $this->insert('{{%user_log}}',['id'=>'122','type'=>'1','user_id'=>'12','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600414060']);
        $this->insert('{{%user_log}}',['id'=>'123','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600414625']);
        $this->insert('{{%user_log}}',['id'=>'124','type'=>'1','user_id'=>'12','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600414739']);
        $this->insert('{{%user_log}}',['id'=>'125','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600414751']);
        $this->insert('{{%user_log}}',['id'=>'126','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600419274']);
        $this->insert('{{%user_log}}',['id'=>'127','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'211.161.245.194','created_at'=>'1600600179']);
        $this->insert('{{%user_log}}',['id'=>'128','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600755522']);
        $this->insert('{{%user_log}}',['id'=>'129','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600917459']);
        $this->insert('{{%user_log}}',['id'=>'130','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1600917465']);
        $this->insert('{{%user_log}}',['id'=>'131','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1601192726']);
        $this->insert('{{%user_log}}',['id'=>'132','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1601192726']);
        $this->insert('{{%user_log}}',['id'=>'133','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1601192797']);
        $this->insert('{{%user_log}}',['id'=>'134','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602227158']);
        $this->insert('{{%user_log}}',['id'=>'135','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602227194']);
        $this->insert('{{%user_log}}',['id'=>'136','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602485136']);
        $this->insert('{{%user_log}}',['id'=>'137','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602485180']);
        $this->insert('{{%user_log}}',['id'=>'138','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602487253']);
        $this->insert('{{%user_log}}',['id'=>'139','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602487310']);
        $this->insert('{{%user_log}}',['id'=>'140','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602487321']);
        $this->insert('{{%user_log}}',['id'=>'141','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602490983']);
        $this->insert('{{%user_log}}',['id'=>'142','type'=>'1','user_id'=>'13','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'58.39.224.20','created_at'=>'1602490984']);
        $this->insert('{{%user_log}}',['id'=>'143','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.226.81','created_at'=>'1602646228']);
        $this->insert('{{%user_log}}',['id'=>'144','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.226.81','created_at'=>'1602842393']);
        $this->insert('{{%user_log}}',['id'=>'145','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'58.39.226.81','created_at'=>'1603161893']);
        $this->insert('{{%user_log}}',['id'=>'146','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'116.238.44.87','created_at'=>'1603950779']);
        $this->insert('{{%user_log}}',['id'=>'147','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'116.238.44.87','created_at'=>'1603963938']);
        $this->insert('{{%user_log}}',['id'=>'148','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'116.238.44.87','created_at'=>'1603963966']);
        $this->insert('{{%user_log}}',['id'=>'149','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1603964356']);
        $this->insert('{{%user_log}}',['id'=>'150','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604022784']);
        $this->insert('{{%user_log}}',['id'=>'151','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604280676']);
        $this->insert('{{%user_log}}',['id'=>'152','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604370203']);
        $this->insert('{{%user_log}}',['id'=>'153','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604452417']);
        $this->insert('{{%user_log}}',['id'=>'154','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604461346']);
        $this->insert('{{%user_log}}',['id'=>'155','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604467102']);
        $this->insert('{{%user_log}}',['id'=>'156','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604537695']);
        $this->insert('{{%user_log}}',['id'=>'157','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604553818']);
        $this->insert('{{%user_log}}',['id'=>'158','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604555760']);
        $this->insert('{{%user_log}}',['id'=>'159','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604561218']);
        $this->insert('{{%user_log}}',['id'=>'160','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604562745']);
        $this->insert('{{%user_log}}',['id'=>'161','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604569081']);
        $this->insert('{{%user_log}}',['id'=>'162','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604569709']);
        $this->insert('{{%user_log}}',['id'=>'163','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604623909']);
        $this->insert('{{%user_log}}',['id'=>'164','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604623910']);
        $this->insert('{{%user_log}}',['id'=>'165','type'=>'1','user_id'=>'13','content'=>'前台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604646632']);
        $this->insert('{{%user_log}}',['id'=>'166','type'=>'1','user_id'=>'13','content'=>'前台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1604646973']);
        $this->insert('{{%user_log}}',['id'=>'167','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1605163187']);
        $this->insert('{{%user_log}}',['id'=>'168','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1605489622']);
        $this->insert('{{%user_log}}',['id'=>'169','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1605489623']);
        $this->insert('{{%user_log}}',['id'=>'170','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1605599081']);
        $this->insert('{{%user_log}}',['id'=>'171','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1606979294']);
        $this->insert('{{%user_log}}',['id'=>'172','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607310491']);
        $this->insert('{{%user_log}}',['id'=>'173','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607324356']);
        $this->insert('{{%user_log}}',['id'=>'174','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607324363']);
        $this->insert('{{%user_log}}',['id'=>'175','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607392489']);
        $this->insert('{{%user_log}}',['id'=>'176','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607392490']);
        $this->insert('{{%user_log}}',['id'=>'177','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607495814']);
        $this->insert('{{%user_log}}',['id'=>'178','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1607495815']);
        $this->insert('{{%user_log}}',['id'=>'179','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1608016118']);
        $this->insert('{{%user_log}}',['id'=>'180','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1608104386']);
        $this->insert('{{%user_log}}',['id'=>'181','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1608104387']);
        $this->insert('{{%user_log}}',['id'=>'182','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1608187310']);
        $this->insert('{{%user_log}}',['id'=>'183','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1608187310']);
        $this->insert('{{%user_log}}',['id'=>'184','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1609901727']);
        $this->insert('{{%user_log}}',['id'=>'185','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1609990703']);
        $this->insert('{{%user_log}}',['id'=>'186','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610093667']);
        $this->insert('{{%user_log}}',['id'=>'187','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610093668']);
        $this->insert('{{%user_log}}',['id'=>'188','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610328686']);
        $this->insert('{{%user_log}}',['id'=>'189','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610328687']);
        $this->insert('{{%user_log}}',['id'=>'190','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610427785']);
        $this->insert('{{%user_log}}',['id'=>'191','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610427786']);
        $this->insert('{{%user_log}}',['id'=>'192','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610506102']);
        $this->insert('{{%user_log}}',['id'=>'193','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610506102']);
        $this->insert('{{%user_log}}',['id'=>'194','type'=>'1','user_id'=>'1','content'=>'商家后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610519480']);
        $this->insert('{{%user_log}}',['id'=>'195','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610519486']);
        $this->insert('{{%user_log}}',['id'=>'196','type'=>'1','user_id'=>'1','content'=>'商家后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610519607']);
        $this->insert('{{%user_log}}',['id'=>'197','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610519612']);
        $this->insert('{{%user_log}}',['id'=>'198','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610520208']);
        $this->insert('{{%user_log}}',['id'=>'199','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610520255']);
        $this->insert('{{%user_log}}',['id'=>'200','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610527759']);
        $this->insert('{{%user_log}}',['id'=>'201','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610527766']);
        $this->insert('{{%user_log}}',['id'=>'202','type'=>'1','user_id'=>'7','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610531646']);
        $this->insert('{{%user_log}}',['id'=>'203','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610531654']);
        $this->insert('{{%user_log}}',['id'=>'204','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610585405']);
        $this->insert('{{%user_log}}',['id'=>'205','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610585405']);
        $this->insert('{{%user_log}}',['id'=>'206','type'=>'1','user_id'=>'1','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610585569']);
        $this->insert('{{%user_log}}',['id'=>'207','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610585583']);
        $this->insert('{{%user_log}}',['id'=>'208','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610605046']);
        $this->insert('{{%user_log}}',['id'=>'209','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610938433']);
        $this->insert('{{%user_log}}',['id'=>'210','type'=>'1','user_id'=>'7','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610938433']);
        $this->insert('{{%user_log}}',['id'=>'211','type'=>'1','user_id'=>'7','content'=>'后台退出!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610938440']);
        $this->insert('{{%user_log}}',['id'=>'212','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610938446']);
        $this->insert('{{%user_log}}',['id'=>'213','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1610954319']);
        $this->insert('{{%user_log}}',['id'=>'214','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611018561']);
        $this->insert('{{%user_log}}',['id'=>'215','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611037664']);
        $this->insert('{{%user_log}}',['id'=>'216','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611287442']);
        $this->insert('{{%user_log}}',['id'=>'217','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611287442']);
        $this->insert('{{%user_log}}',['id'=>'218','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611292946']);
        $this->insert('{{%user_log}}',['id'=>'219','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611307338']);
        $this->insert('{{%user_log}}',['id'=>'220','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611369840']);
        $this->insert('{{%user_log}}',['id'=>'221','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611369841']);
        $this->insert('{{%user_log}}',['id'=>'222','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611392664']);
        $this->insert('{{%user_log}}',['id'=>'223','type'=>'1','user_id'=>'1','content'=>'后台登录!','item_id'=>NULL,'created_ip'=>'127.0.0.1','created_at'=>'1611551683']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%user_log}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

