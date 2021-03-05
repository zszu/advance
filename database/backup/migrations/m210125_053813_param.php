<?php

use yii\db\Migration;

class m210125_053813_param extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%param}}', [
            'id' => "int(255) NOT NULL AUTO_INCREMENT",
            'order_by' => "int(11) NOT NULL DEFAULT '100' COMMENT '排序'",
            'type' => "tinyint(1) NOT NULL COMMENT '类别'",
            'title' => "varchar(50) NOT NULL COMMENT '名称'",
            'name' => "varchar(50) NOT NULL",
            'hint' => "varchar(255) NULL COMMENT '提示'",
            'value' => "text NULL COMMENT '内容'",
            'input_type' => "varchar(20) NOT NULL COMMENT 'input类别'",
            'input_list' => "varchar(255) NULL COMMENT 'input 列表内容'",
            'width' => "smallint(4) NULL COMMENT '宽度'",
            'status' => "tinyint(1) NULL DEFAULT '1' COMMENT '状态'",
            'created_at' => "int(11) NULL",
            'updated_by' => "int(11) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='参数表'");
        
        /* 索引设置 */
        $this->createIndex('id','{{%param}}','name',1);
        
        
        /* 表数据 */
        $this->insert('{{%param}}',['id'=>'1','order_by'=>'50','type'=>'2','title'=>'手机号','name'=>'company_mobile','hint'=>'','value'=>'138888888881','input_type'=>'','input_list'=>NULL,'width'=>'127','status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'2','order_by'=>'10','type'=>'2','title'=>'联系地址','name'=>'company_address','hint'=>NULL,'value'=>'浙江省台州市玉环县龙溪镇','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'3','order_by'=>'30','type'=>'2','title'=>'邮箱','name'=>'company_email','hint'=>NULL,'value'=>'vip@spuwansu.com1','input_type'=>'','input_list'=>NULL,'width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'4','order_by'=>'80','type'=>'2','title'=>'百度地图坐标','name'=>'company_mappoint','hint'=>NULL,'value'=>'121.297804, 31.3385591','input_type'=>'','input_list'=>NULL,'width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'5','order_by'=>'20','type'=>'2','title'=>'联 系 人','name'=>'company_contact_person','hint'=>NULL,'value'=>'1','input_type'=>'','input_list'=>NULL,'width'=>'127','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'7','order_by'=>'40','type'=>'2','title'=>'咨询热线','name'=>'company_service','hint'=>NULL,'value'=>'0576-874966331','input_type'=>'','input_list'=>NULL,'width'=>'127','status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'9','order_by'=>'70','type'=>'2','title'=>'工作结束时间','name'=>'company_work_end','hint'=>NULL,'value'=>'18:0011','input_type'=>'','input_list'=>NULL,'width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'10','order_by'=>'60','type'=>'2','title'=>'工作开始时间','name'=>'company_work_start','hint'=>NULL,'value'=>'08:301','input_type'=>'','input_list'=>NULL,'width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'11','order_by'=>'10','type'=>'4','title'=>'发件人地址','name'=>'mail_from_address','hint'=>NULL,'value'=>'2835152688@qq.com','input_type'=>'','input_list'=>NULL,'width'=>'400','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'12','order_by'=>'30','type'=>'4','title'=>'发件人','name'=>'mail_from_name','hint'=>NULL,'value'=>'zsz','input_type'=>'','input_list'=>NULL,'width'=>'200','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'13','order_by'=>'40','type'=>'4','title'=>'服务器地址','name'=>'mail_host','hint'=>NULL,'value'=>'smtp.qq.com','input_type'=>'','input_list'=>NULL,'width'=>'200','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'14','order_by'=>'50','type'=>'4','title'=>'密码','name'=>'mail_password','hint'=>NULL,'value'=>'vgqqprqbklnfdhbh','input_type'=>'password','input_list'=>NULL,'width'=>'200','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'15','order_by'=>'60','type'=>'4','title'=>'服务器端口','name'=>'mail_port','hint'=>NULL,'value'=>'465','input_type'=>'','input_list'=>NULL,'width'=>'50','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'16','order_by'=>'70','type'=>'4','title'=>'SSL链接','name'=>'mail_ssl','hint'=>NULL,'value'=>'1','input_type'=>'radio','input_list'=>'a:2:{i:1;s:3:"是";i:0;s:3:"否";}','width'=>'0','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'17','order_by'=>'20','type'=>'4','title'=>'收件邮箱','name'=>'mail_to_address','hint'=>'多个邮箱请使用;分隔','value'=>'2143018962@qq.com','input_type'=>'','input_list'=>NULL,'width'=>'400','status'=>'1','created_at'=>'1553254615','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'18','order_by'=>'120','type'=>'2','title'=>'版权信息','name'=>'site_copyright','hint'=>'','value'=>'zszu@copyright','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'19','order_by'=>'170','type'=>'2','title'=>'SEO Description','name'=>'site_description','hint'=>NULL,'value'=>'分享php 基础知识，tp，yii2,laravel框架等。','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'20','order_by'=>'110','type'=>'2','title'=>'站点地址','name'=>'site_domain','hint'=>NULL,'value'=>'http://advance.test/','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'21','order_by'=>'130','type'=>'2','title'=>'网站备案号','name'=>'site_icp','hint'=>NULL,'value'=>'豫ICP20016838号-1','input_type'=>'','input_list'=>NULL,'width'=>'300','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'22','order_by'=>'160','type'=>'2','title'=>'SEO Keywords','name'=>'site_keywords','hint'=>NULL,'value'=>'文章博客，php,yii2,laravel,tp。','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'23','order_by'=>'100','type'=>'2','title'=>'站点名称','name'=>'site_name','hint'=>NULL,'value'=>'yii2-advance','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'24','order_by'=>'150','type'=>'2','title'=>'SEO Title','name'=>'site_title','hint'=>NULL,'value'=>'文章博客','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'25','order_by'=>'20','type'=>'6','title'=>'轮播图尺寸','name'=>'system_slides_cover','hint'=>'','value'=>'1920*778','input_type'=>'','input_list'=>NULL,'width'=>'150','status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'29','order_by'=>'20','type'=>'1','title'=>'系统关闭提示','name'=>'site_info','hint'=>NULL,'value'=>'抱歉！该站点已经被管理员停止运行，请联系管理员了解详情！','input_type'=>'','input_list'=>NULL,'width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'40','order_by'=>'10','type'=>'1','title'=>'系统状态','name'=>'site_status','hint'=>NULL,'value'=>'1','input_type'=>'radio','input_list'=>'a:2:{i:1;s:6:"开启";i:0;s:6:"关闭";}','width'=>'0','status'=>'1','created_at'=>'1550195795','updated_by'=>'1']);
        $this->insert('{{%param}}',['id'=>'68','order_by'=>'90','type'=>'2','title'=>'地图层级','name'=>'company_appoint','hint'=>NULL,'value'=>'151','input_type'=>'','input_list'=>NULL,'width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'75','order_by'=>'140','type'=>'2','title'=>'ICP备案号','name'=>'site_icp_two','hint'=>NULL,'value'=>'','input_type'=>'','input_list'=>NULL,'width'=>'300','status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'77','order_by'=>'10','type'=>'6','title'=>'图片裁切设置','name'=>'system_images_crop','hint'=>NULL,'value'=>'0','input_type'=>'radio','input_list'=>'a:2:{i:1;s:12:"开启裁切";i:0;s:12:"关闭裁切";}','width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'78','order_by'=>'190','type'=>'2','title'=>'网站服务器类型','name'=>'site_host_type','hint'=>'','value'=>'0','input_type'=>'radio','input_list'=>'a:2:{i:1;s:9:"服务器";i:0;s:12:"虚拟主机";}','width'=>NULL,'status'=>'0','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'79','order_by'=>'200','type'=>'2','title'=>'虚拟主机大小','name'=>'site_host_size','hint'=>'单位为M，更改此配置后请更新缓存。','value'=>'2000','input_type'=>'','input_list'=>NULL,'width'=>'100','status'=>'0','created_at'=>NULL,'updated_by'=>NULL]);
        $this->insert('{{%param}}',['id'=>'80','order_by'=>'100','type'=>'2','title'=>'图片','name'=>'cover','hint'=>NULL,'value'=>'','input_type'=>'file','input_list'=>NULL,'width'=>NULL,'status'=>'1','created_at'=>NULL,'updated_by'=>NULL]);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%param}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

