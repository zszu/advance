/*
Navicat MySQL Data Transfer

Source Server         : zszu.xyz
Source Server Version : 50731
Source Host           : 106.14.223.67:3306
Source Database       : www_zszu_xyz

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-10-26 13:26:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zz_action_log
-- ----------------------------
DROP TABLE IF EXISTS `zz_action_log`;
CREATE TABLE `zz_action_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL COMMENT '用户操作路由',
  `description` text COMMENT '操作的描述',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_action_log
-- ----------------------------
INSERT INTO `zz_action_log` VALUES ('1', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589246358', '1589246358');
INSERT INTO `zz_action_log` VALUES ('2', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589276754', '1589276754');
INSERT INTO `zz_action_log` VALUES ('3', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589276970', '1589276970');
INSERT INTO `zz_action_log` VALUES ('4', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589277033', '1589277033');
INSERT INTO `zz_action_log` VALUES ('5', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589277061', '1589277061');
INSERT INTO `zz_action_log` VALUES ('6', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589277087', '1589277087');
INSERT INTO `zz_action_log` VALUES ('7', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589336187', '1589336187');
INSERT INTO `zz_action_log` VALUES ('8', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589336255', '1589336255');
INSERT INTO `zz_action_log` VALUES ('9', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589336406', '1589336406');
INSERT INTO `zz_action_log` VALUES ('10', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589336470', '1589336470');
INSERT INTO `zz_action_log` VALUES ('11', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589336501', '1589336501');
INSERT INTO `zz_action_log` VALUES ('12', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589337133', '1589337133');
INSERT INTO `zz_action_log` VALUES ('13', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589337166', '1589337166');
INSERT INTO `zz_action_log` VALUES ('14', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589337276', '1589337276');
INSERT INTO `zz_action_log` VALUES ('15', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589337826', '1589337826');
INSERT INTO `zz_action_log` VALUES ('16', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589337875', '1589337875');
INSERT INTO `zz_action_log` VALUES ('17', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589337983', '1589337983');
INSERT INTO `zz_action_log` VALUES ('18', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338047', '1589338047');
INSERT INTO `zz_action_log` VALUES ('19', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338159', '1589338159');
INSERT INTO `zz_action_log` VALUES ('20', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338240', '1589338240');
INSERT INTO `zz_action_log` VALUES ('21', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338423', '1589338423');
INSERT INTO `zz_action_log` VALUES ('22', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338452', '1589338452');
INSERT INTO `zz_action_log` VALUES ('23', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338540', '1589338540');
INSERT INTO `zz_action_log` VALUES ('24', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338646', '1589338646');
INSERT INTO `zz_action_log` VALUES ('25', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338789', '1589338789');
INSERT INTO `zz_action_log` VALUES ('26', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338915', '1589338915');
INSERT INTO `zz_action_log` VALUES ('27', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589338961', '1589338961');
INSERT INTO `zz_action_log` VALUES ('28', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589339240', '1589339240');
INSERT INTO `zz_action_log` VALUES ('29', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589339363', '1589339363');
INSERT INTO `zz_action_log` VALUES ('30', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589339745', '1589339745');
INSERT INTO `zz_action_log` VALUES ('53', '1', '/backend/comment/edit?id=16', '管理员{admin}在{/backend/comment/edit?id=16}执行了{编辑}操作 id为{16}记录', '1589363724', '1589363724');
INSERT INTO `zz_action_log` VALUES ('32', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589340735', '1589340735');
INSERT INTO `zz_action_log` VALUES ('33', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589340800', '1589340800');
INSERT INTO `zz_action_log` VALUES ('34', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589340958', '1589340958');
INSERT INTO `zz_action_log` VALUES ('35', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589340990', '1589340990');
INSERT INTO `zz_action_log` VALUES ('36', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341025', '1589341025');
INSERT INTO `zz_action_log` VALUES ('37', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341084', '1589341084');
INSERT INTO `zz_action_log` VALUES ('38', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341181', '1589341181');
INSERT INTO `zz_action_log` VALUES ('39', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341280', '1589341280');
INSERT INTO `zz_action_log` VALUES ('40', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341305', '1589341305');
INSERT INTO `zz_action_log` VALUES ('41', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341430', '1589341430');
INSERT INTO `zz_action_log` VALUES ('42', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589341561', '1589341561');
INSERT INTO `zz_action_log` VALUES ('43', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347312', '1589347312');
INSERT INTO `zz_action_log` VALUES ('44', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347392', '1589347392');
INSERT INTO `zz_action_log` VALUES ('45', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347441', '1589347441');
INSERT INTO `zz_action_log` VALUES ('46', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347601', '1589347601');
INSERT INTO `zz_action_log` VALUES ('47', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347614', '1589347614');
INSERT INTO `zz_action_log` VALUES ('48', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347684', '1589347684');
INSERT INTO `zz_action_log` VALUES ('49', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589347694', '1589347694');
INSERT INTO `zz_action_log` VALUES ('50', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589349751', '1589349751');
INSERT INTO `zz_action_log` VALUES ('52', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589363719', '1589363719');
INSERT INTO `zz_action_log` VALUES ('54', '1', '/backend/news/edit?id=18', '管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录', '1589363761', '1589363761');

-- ----------------------------
-- Table structure for zz_active
-- ----------------------------
DROP TABLE IF EXISTS `zz_active`;
CREATE TABLE `zz_active` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_by` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `active_start` varchar(255) DEFAULT NULL,
  `active_end` varchar(255) DEFAULT NULL,
  `people_sum` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_active
-- ----------------------------

-- ----------------------------
-- Table structure for zz_address
-- ----------------------------
DROP TABLE IF EXISTS `zz_address`;
CREATE TABLE `zz_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0' COMMENT '默认地址',
  `status` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_address
-- ----------------------------
INSERT INTO `zz_address` VALUES ('1', null, null, null, '', '12', '天津市', '1201', '市辖区', '120103', '河西区', '', '1', null, null, null);

-- ----------------------------
-- Table structure for zz_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `zz_auth_assignment`;
CREATE TABLE `zz_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `zz_idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `zz_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `zz_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of zz_auth_assignment
-- ----------------------------
INSERT INTO `zz_auth_assignment` VALUES ('admin', '12', '1590483533');
INSERT INTO `zz_auth_assignment` VALUES ('worker', '7', '1589006687');

-- ----------------------------
-- Table structure for zz_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `zz_auth_item`;
CREATE TABLE `zz_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `zz_idx-auth_item-type` (`type`),
  CONSTRAINT `zz_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `zz_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of zz_auth_item
-- ----------------------------
INSERT INTO `zz_auth_item` VALUES ('admin', '1', '后台管理员', null, null, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/comment/delete', '2', '评论删除', null, 0x693A313032353B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/comment/edit', '2', '评论修改', null, 0x693A313032343B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/comment/index', '2', '评论管理', null, 0x693A313032333B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/feedback/delete', '2', '留言删除', null, 0x693A313032323B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/feedback/edit', '2', '留言修改', null, 0x693A313032313B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/feedback/index', '2', '留言管理', null, 0x693A313032303B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/log/index', '2', '日志管理', null, null, '1589790158', '1589790158');
INSERT INTO `zz_auth_item` VALUES ('backend/main/company-param', '2', '设置公司信息', null, 0x693A313030333B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/main/email-param', '2', '设置邮箱参数', null, 0x693A313030343B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/main/site-param', '2', '设置站点参数', null, 0x693A313030313B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/main/system-param', '2', '设置系统参数', null, 0x693A313030323B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/member/delete', '2', '会员删除', null, 0x693A313032383B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/member/edit', '2', '会员修改', null, 0x693A313032373B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/member/index', '2', '会员管理', null, 0x693A313032363B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/news/delete', '2', '新闻删除', null, 0x693A313031333B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/news/edit', '2', '新闻修改', null, 0x693A313031323B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/news/index', '2', '新闻管理', null, 0x693A313031313B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/page/delete', '2', '单页删除', null, 0x693A313030373B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/page/edit', '2', '单页修改', null, 0x693A313030363B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/page/index', '2', '单页管理', null, 0x693A313030353B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/slide/delete', '2', '焦点图删除', null, 0x693A313031303B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/slide/edit', '2', '焦点图修改', null, 0x693A313030393B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/slide/index', '2', '焦点图管理', null, 0x693A313030383B, '1589006632', '1589006632');
INSERT INTO `zz_auth_item` VALUES ('backend/type/delete', '2', '分类删除', null, 0x693A313031363B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/type/edit', '2', '分类修改', null, 0x693A313031353B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/type/index', '2', '分类管理', null, 0x693A313031343B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/user/delete', '2', '用户删除', null, 0x693A313033313B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/user/edit', '2', '用户修改', null, 0x693A313033303B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/user/index', '2', '用户管理', null, 0x693A313032393B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/user/permission', '2', '用户权限设置', null, 0x693A313033323B, '1589006633', '1589006633');
INSERT INTO `zz_auth_item` VALUES ('backend/user/user-info', '2', '个人信息', null, null, '1590741272', '1590741272');
INSERT INTO `zz_auth_item` VALUES ('backend/user/user-reset-pwd', '2', '修改密码', null, null, '1590741305', '1590741305');
INSERT INTO `zz_auth_item` VALUES ('worker', '1', '客服人员', null, null, '1589006632', '1589006632');

-- ----------------------------
-- Table structure for zz_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `zz_auth_item_child`;
CREATE TABLE `zz_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `zz_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `zz_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `zz_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `zz_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of zz_auth_item_child
-- ----------------------------
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/comment/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/comment/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/comment/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/feedback/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/feedback/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/feedback/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/main/company-param');
INSERT INTO `zz_auth_item_child` VALUES ('worker', 'backend/main/company-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/main/email-param');
INSERT INTO `zz_auth_item_child` VALUES ('worker', 'backend/main/email-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/main/site-param');
INSERT INTO `zz_auth_item_child` VALUES ('worker', 'backend/main/site-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/main/system-param');
INSERT INTO `zz_auth_item_child` VALUES ('worker', 'backend/main/system-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/member/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/member/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/member/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/news/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/news/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/news/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/page/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/page/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/page/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/slide/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/slide/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/slide/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/type/delete');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/type/edit');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/type/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/user/user-info');
INSERT INTO `zz_auth_item_child` VALUES ('worker', 'backend/user/user-info');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/user/user-reset-pwd');
INSERT INTO `zz_auth_item_child` VALUES ('worker', 'backend/user/user-reset-pwd');

-- ----------------------------
-- Table structure for zz_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `zz_auth_rule`;
CREATE TABLE `zz_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of zz_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for zz_comment
-- ----------------------------
DROP TABLE IF EXISTS `zz_comment`;
CREATE TABLE `zz_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_by` smallint(6) unsigned DEFAULT '0' COMMENT '排序',
  `type` smallint(6) unsigned DEFAULT '0' COMMENT '分类id',
  `content` text COMMENT '内容',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `created_at` int(11) unsigned DEFAULT '0',
  `updated_at` int(11) DEFAULT NULL,
  `status` tinyint(1) unsigned zerofill DEFAULT '0' COMMENT '状态：1 已审核 0 未审核',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `news_id` int(11) DEFAULT NULL COMMENT '文章id',
  `up_id` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT '1',
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表';

-- ----------------------------
-- Records of zz_comment
-- ----------------------------
INSERT INTO `zz_comment` VALUES ('16', '0', '0', '写的不错\r\n', null, null, '1600413000', '1600413000', '1', '2', '24', '0', '1', null);
INSERT INTO `zz_comment` VALUES ('17', '0', '0', '是呀', null, null, '1600413055', '1600413080', '1', '13', '24', '16', '2', null);

-- ----------------------------
-- Table structure for zz_common_action_behavior
-- ----------------------------
DROP TABLE IF EXISTS `zz_common_action_behavior`;
CREATE TABLE `zz_common_action_behavior` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(50) DEFAULT '' COMMENT '应用id',
  `url` varchar(200) DEFAULT '' COMMENT '提交url',
  `method` varchar(20) DEFAULT '' COMMENT '提交类型 *为不限',
  `behavior` varchar(50) DEFAULT '' COMMENT '行为类别',
  `action` tinyint(4) unsigned DEFAULT '1' COMMENT '前置/后置',
  `level` varchar(20) DEFAULT '' COMMENT '级别',
  `is_record_post` tinyint(4) unsigned DEFAULT '1' COMMENT '是否记录post[0;否;1是]',
  `is_ajax` tinyint(4) unsigned DEFAULT '2' COMMENT '是否ajax请求[1;否;2是;3不限]',
  `remark` varchar(100) DEFAULT '' COMMENT '备注',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态[-1:删除;0:禁用;1启用]',
  `created_at` int(10) DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='系统_行为表';

-- ----------------------------
-- Records of zz_common_action_behavior
-- ----------------------------
INSERT INTO `zz_common_action_behavior` VALUES ('14', 'backend', 'site/logout', '*', 'logout', '1', 'info', '1', '2', '退出登录', '1', '1564215882', '1565316801');
INSERT INTO `zz_common_action_behavior` VALUES ('15', 'backend', 'sys/manager/ajax-edit', 'POST', 'updateAccountPassword', '1', 'info', '0', '0', '创建/修改管理员账号密码', '1', '1564221741', '1565316796');
INSERT INTO `zz_common_action_behavior` VALUES ('16', 'backend', 'member/member/ajax-edit', 'POST', 'updateMemberAccountPassword', '1', 'info', '0', '0', '创建/修改用户账号密码', '1', '1564221792', '1565316793');
INSERT INTO `zz_common_action_behavior` VALUES ('17', 'backend', 'sys/manager/destroy', '*', 'deleteManager', '1', 'warning', '1', '2', '删除管理员', '1', '1564223374', '1565317686');
INSERT INTO `zz_common_action_behavior` VALUES ('18', 'backend', 'sys/manager/up-password', 'POST', 'updatePassword', '1', 'info', '0', '0', '修改管理员密码', '1', '1564223463', '1565316780');
INSERT INTO `zz_common_action_behavior` VALUES ('19', 'backend', 'member/member/recharge', 'POST', 'rechargeMemberMoney', '1', 'info', '1', '0', '充值/减少会员积分余额', '1', '1564224361', '1565316771');
INSERT INTO `zz_common_action_behavior` VALUES ('20', 'backend', 'member/member/destroy', '*', 'memberDelete', '1', 'warning', '1', '2', '删除会员信息', '1', '1564224439', '1565317674');
INSERT INTO `zz_common_action_behavior` VALUES ('21', 'backend', 'common/config/update-info', 'POST', 'configUpdateInfo', '1', 'info', '1', '1', '修改配置信息', '1', '1564224508', '1565269552');

-- ----------------------------
-- Table structure for zz_common_attachment
-- ----------------------------
DROP TABLE IF EXISTS `zz_common_attachment`;
CREATE TABLE `zz_common_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `drive` varchar(50) DEFAULT '' COMMENT '驱动',
  `upload_type` varchar(10) DEFAULT '' COMMENT '上传类型',
  `specific_type` varchar(100) NOT NULL DEFAULT '' COMMENT '类别',
  `base_url` varchar(1000) DEFAULT '' COMMENT 'url',
  `path` varchar(1000) DEFAULT '' COMMENT '本地路径',
  `md5` varchar(100) DEFAULT '' COMMENT 'md5校验码',
  `name` varchar(1000) DEFAULT '' COMMENT '文件原始名',
  `extension` varchar(50) DEFAULT '' COMMENT '扩展名',
  `size` int(11) DEFAULT '0' COMMENT '长度',
  `year` int(10) unsigned DEFAULT '0' COMMENT '年份',
  `month` int(10) DEFAULT '0' COMMENT '月份',
  `day` int(10) unsigned DEFAULT '0' COMMENT '日',
  `width` int(10) unsigned DEFAULT '0' COMMENT '宽度',
  `height` int(10) unsigned DEFAULT '0' COMMENT '高度',
  `upload_ip` varchar(16) DEFAULT '' COMMENT '上传者ip',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态[-1:删除;0:禁用;1启用]',
  `created_at` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `md5` (`md5`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='公用_文件管理';

-- ----------------------------
-- Records of zz_common_attachment
-- ----------------------------
INSERT INTO `zz_common_attachment` VALUES ('1', '0', '', 'video', '', '', '/attachment/2020/09/16/20091615053595626.mp4', '', '', '', '0', '0', '0', '0', '0', '0', '', '1', '0', '0');
INSERT INTO `zz_common_attachment` VALUES ('2', '0', '', 'video', '', '', '/attachment/2020/09/18/20091806275123346.mp4', '', '', '', '0', '0', '0', '0', '0', '0', '', '1', '0', '0');

-- ----------------------------
-- Table structure for zz_common_log
-- ----------------------------
DROP TABLE IF EXISTS `zz_common_log`;
CREATE TABLE `zz_common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(50) DEFAULT '' COMMENT '应用id',
  `merchant_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `method` varchar(20) DEFAULT '' COMMENT '提交类型',
  `module` varchar(50) DEFAULT '' COMMENT '模块',
  `controller` varchar(100) DEFAULT '' COMMENT '控制器',
  `action` varchar(50) DEFAULT '' COMMENT '方法',
  `url` varchar(1000) DEFAULT '' COMMENT '提交url',
  `get_data` json DEFAULT NULL COMMENT 'get数据',
  `post_data` json DEFAULT NULL COMMENT 'post数据',
  `header_data` json DEFAULT NULL COMMENT 'header数据',
  `ip` varchar(16) DEFAULT '' COMMENT 'ip地址',
  `error_code` int(10) DEFAULT '0' COMMENT '报错code',
  `error_msg` varchar(1000) DEFAULT '' COMMENT '报错信息',
  `error_data` json DEFAULT NULL COMMENT '报错日志',
  `req_id` varchar(50) DEFAULT '' COMMENT '对外id',
  `device` varchar(200) DEFAULT '' COMMENT '设备信息',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(-1:已删除,0:禁用,1:正常)',
  `created_at` int(10) DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `error_code` (`error_code`),
  KEY `req_id` (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COMMENT='公用_日志';

-- ----------------------------
-- Records of zz_common_log
-- ----------------------------

-- ----------------------------
-- Table structure for zz_goods
-- ----------------------------
DROP TABLE IF EXISTS `zz_goods`;
CREATE TABLE `zz_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_by` int(11) DEFAULT NULL COMMENT '排序',
  `type` int(11) DEFAULT NULL COMMENT '类别',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `subtitle` varchar(255) DEFAULT NULL COMMENT '副标题',
  `summary` text COMMENT '简介',
  `content` text COMMENT '内容',
  `cover` varchar(255) DEFAULT NULL COMMENT '图片',
  `covers` text COMMENT '多图',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `index_show` tinyint(1) DEFAULT NULL COMMENT '首页显示',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '状态：1 启用 0停用',
  `name` varchar(255) DEFAULT NULL COMMENT '所属栏目',
  `up_id` int(11) DEFAULT NULL COMMENT ' 上级 id',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `price_original` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `price_discount` decimal(10,0) DEFAULT NULL COMMENT '抢购价',
  `count_stock` int(11) DEFAULT NULL COMMENT '库存',
  `count_init` int(11) DEFAULT NULL COMMENT '初始销量',
  `count_order` int(11) DEFAULT NULL COMMENT '订单数',
  `shipping_id` int(11) DEFAULT NULL COMMENT '运费模板 id ',
  `sticky` tinyint(1) DEFAULT NULL COMMENT '推荐',
  `count_view` int(11) DEFAULT NULL COMMENT '查看数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='商品表';

-- ----------------------------
-- Records of zz_goods
-- ----------------------------

-- ----------------------------
-- Table structure for zz_integral
-- ----------------------------
DROP TABLE IF EXISTS `zz_integral`;
CREATE TABLE `zz_integral` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_integral
-- ----------------------------
INSERT INTO `zz_integral` VALUES ('1', null, '2', '10000', '1600410643', '1600410731', '1');

-- ----------------------------
-- Table structure for zz_migration
-- ----------------------------
DROP TABLE IF EXISTS `zz_migration`;
CREATE TABLE `zz_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_migration
-- ----------------------------
INSERT INTO `zz_migration` VALUES ('m000000_000000_base', '1588065056');
INSERT INTO `zz_migration` VALUES ('m140506_102106_rbac_init', '1588065060');
INSERT INTO `zz_migration` VALUES ('m170907_052038_rbac_add_index_on_auth_assignment_user_id', '1588065060');
INSERT INTO `zz_migration` VALUES ('m180523_151638_rbac_updates_indexes_without_prefix', '1588065061');

-- ----------------------------
-- Table structure for zz_news
-- ----------------------------
DROP TABLE IF EXISTS `zz_news`;
CREATE TABLE `zz_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_by` smallint(6) unsigned DEFAULT '0' COMMENT '排序',
  `type` smallint(6) unsigned DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `subtitle` varchar(255) DEFAULT NULL COMMENT '副标题',
  `publisher` varchar(255) DEFAULT NULL COMMENT '作者',
  `summary` text COMMENT '简介',
  `content` text COMMENT '内容',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `covers` varchar(255) DEFAULT NULL COMMENT '多图',
  `qr_code` varchar(255) DEFAULT NULL COMMENT '二维码',
  `bg_color` varchar(255) DEFAULT NULL COMMENT '背景色',
  `bg_pic` varchar(255) DEFAULT NULL COMMENT '背景图',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `views` int(10) unsigned DEFAULT '0' COMMENT '查看数',
  `index_show` tinyint(1) DEFAULT '0' COMMENT '首页显示',
  `created_at` int(11) unsigned DEFAULT '0',
  `updated_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态：1 启用 0停用',
  `name` varchar(255) DEFAULT NULL COMMENT '所属栏目',
  `title_size` smallint(6) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻表';

-- ----------------------------
-- Records of zz_news
-- ----------------------------
INSERT INTO `zz_news` VALUES ('19', '0', '31', 'lavarel 配置信息', null, null, 'lavarel 配置信息', '<p>\r\n	介绍<br />\r\nLaravel 框架的所有配置文件都保存在 config 目录中。每个选项都有说明，你可随时查看这些文件并熟悉都有哪些配置选项可供你使用。<br />\r\n<br />\r\n<br />\r\n环境配置<br />\r\n对于应用程序运行的环境来说，不同的环境有不同的配置通常是很有用的。 例如，你可能希望在本地使用的缓存驱动不同于生产服务器所使用的缓存驱动。<br />\r\n<br />\r\nLaravel 利用 Vance Lucas 的 PHP 库 DotEnv 使得此项功能的实现变得非常简单。在新安装好的 Laravel 应用程序中，其根目录会包含一个 .env.example 文件。如果是通过 Composer 安装的 Laravel，该文件会自动更名为 .env。否则，需要你手动更改一下文件名。<br />\r\n<br />\r\n你的 .env 文件不应该提交到应用程序的源代码控制系统中，因为每个使用你的应用程序的开发人员 / 服务器可能需要有一个不同的环境配置。此外，在入侵者获得你的源代码控制仓库的访问权的情况下，这会成为一个安全隐患，因为任何敏感的凭据都被暴露了。<br />\r\n<br />\r\n如果是团队开发，则可能希望应用程序中仍包含 .env.example 文件。因为通过在示例配置文件中放置占位值，团队中的其他开发人员可以清楚地看到哪些环境变量是运行应用程序所必需的。你也可以创建一个 .env.testing 文件，当运行 PHPUnit 测试或以 --env=testing 为选项执行 Artisan 命令时，该文件将覆盖 .env 文件中的值。<br />\r\n<br />\r\n技巧：.env 文件中的所有变量都可被外部环境变量（比如服务器级或系统级环境变量）所覆盖。<br />\r\n<br />\r\n<br />\r\n环境变量类型<br />\r\n因为 .env 文件里所有的变量值都会被解析成字符串类型，所以可以使用 env() 函数，函数里创建了一些保留值，可提供更大范围的变量类型：<br />\r\n<br />\r\n.env Value<span> </span>env() Value<br />\r\ntrue<span> </span>(bool) true<br />\r\n(true)<span> </span>(bool) true<br />\r\nfalse<span> </span>(bool) false<br />\r\n(false)<span> </span>(bool) false<br />\r\nempty<span> </span>(string) ‘’<br />\r\n(empty)<span> </span>(string) ‘’<br />\r\nnull<span> </span>(null) null<br />\r\n(null)<span> </span>(null) null<br />\r\n如果你需要使用包含空格的值来定义环境变量，可以通过将值括在双引号中来实现。<br />\r\n<br />\r\nAPP_NAME=\"My Application\"<br />\r\n<br />\r\n检索环境配置<br />\r\n当你的应用程序收到请求时，此文件中列出的所有变量都将被加载到 PHP $_ENV 超全局变量中。 但是，你可以使用 env 的 helper 方法从配置文件中的这些变量中检索值。 实际上，如果您查看 Laravel 配置文件，您会注意到很多配置中已经使用了 helper 方法：<br />\r\n<br />\r\n\'debug\' =&gt; env(\'APP_DEBUG\', false),<br />\r\n传递给 env 函数的第二个值是 “默认值”。 如果给定的环境参数找不到对应的值，或不存在，则将使用此 “默认值”。<br />\r\n<br />\r\n<br />\r\n确定当前环境<br />\r\n当前的应用程序环境是通过 .env 文件中的 APP_ENV 变量值确定的。你可以通过 App facade 的 environment 方法访问此值：<br />\r\n<br />\r\n$environment = App::environment();<br />\r\n你也可以将参数传递给 environment 方法，以检查环境是否匹配给定值，如果环境匹配任何给定值，则该方法将返回 true：<br />\r\n<br />\r\nif (App::environment(\'local\')) {<br />\r\n&nbsp; &nbsp; // 本地环境<br />\r\n}<br />\r\n<br />\r\nif (App::environment([\'local\', \'staging\'])) {<br />\r\n&nbsp; &nbsp; // 本地环境或临时环境...<br />\r\n}<br />\r\n技巧：服务器级别的 APP_ENV 环境变量可以覆盖当前的应用程序环境检测。当你需要为不同的环境配置共享同一应用程序时，这很有用，因此你可以设置给定的主机以匹配服务器配置中的给定环境。<br />\r\n<br />\r\n<br />\r\n在调试页面隐藏环境变量<br />\r\n当一个异常未被捕获并且 APP_DEBUG 环境变量为 true 时，调试页面会显示所有的环境变量和内容。在某些情况下你可能想隐藏某些变量。你可以通过设置 config/app.php 配置文件中的 debug_blacklist 选项来完成这个操作。<br />\r\n<br />\r\n环境变量、服务器或者请求数据中都有一些变量是可用的。因此，你可能需要将 $_ENV 和 $_SERVER 的变量加入到黑名单中：<br />\r\n<br />\r\nreturn [<br />\r\n<br />\r\n&nbsp; &nbsp; // ...<br />\r\n<br />\r\n&nbsp; &nbsp; \'debug_hide\' =&gt; [<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; \'_ENV\' =&gt; [<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'APP_KEY\',<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'DB_PASSWORD\',<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; ],<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; \'_SERVER\' =&gt; [<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'APP_KEY\',<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'DB_PASSWORD\',<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; ],<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; \'_POST\' =&gt; [<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'password\',<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; ],<br />\r\n&nbsp; &nbsp; ],<br />\r\n];<br />\r\n<br />\r\n访问配置值<br />\r\n你可以轻松地在应用程序的任何位置使用全局 config 函数来访问配置值。配置值的访问可以使用「点」语法，这其中包含了要访问的文件和选项的名称。还可以指定默认值，如果配置选项不存在，则返回默认值：<br />\r\n<br />\r\n$value = config(\'app.timezone\');<br />\r\n要在运行时设置配置值，传递一个数组给 config 函数：<br />\r\n<br />\r\nconfig([\'app.timezone\' =&gt; \'America/Chicago\']);<br />\r\n<br />\r\n配置缓存<br />\r\n为了给你的应用程序提升速度，你应该使用 Artisan 命令 config:cache 将所有的配置文件缓存到单个文件中。这会把你的应用程序中所有的配置选项合并成一个单一的文件，然后框架会快速加载这个文件。<br />\r\n<br />\r\n通常来说，你应该把运行 php artisan config:cache（配置缓存）命令作为生产环境部署工作常态的一部分。而另一方面，由于在应用程序开发过程中经常需要修改配置选项，故该命令不应在本地开发环境下执行。<br />\r\n<br />\r\n注意：如果在部署过程中执行 config:cache 命令，那么你应该确保只从配置文件内部调用 env 函数。一旦配置被缓存，.env 文件将不再被加载，所有对 env 函数的调用都将返回 null。<br />\r\n<br />\r\n<br />\r\n维护模式<br />\r\n当应用程序处于维护模式时，所有对应用程序的请求都显示为一个自定义视图。这样可以在更新或执行维护时轻松地「停用」你的应用程序。 维护模式的检测包含在应用程序的默认中间件栈中。如果应用程序处于维护模式，则将抛出一个状态码为 503 的 MaintenanceModeException 异常。<br />\r\n<br />\r\n要启用维护模式，只需执行下面的 Artisan 的 down 命令：<br />\r\n<br />\r\nphp artisan down<br />\r\n你还可以向 down 命令提供 message 和 retry 选项。其中 message 选项的值可用于显示或记录自定义消息，而 retry 值可用于设置 HTTP 请求头中 Retry-After 的值：<br />\r\n<br />\r\nphp artisan down --message=\"Upgrading Database\" --retry=60<br />\r\n绕过维护模式<br />\r\n即使在维护模式下，你也可以使用 secret 选项指定维护模式的绕过令牌：<br />\r\n<br />\r\nphp artisan down --secret=\"1630542a-246b-4b66-afa1-dd72a4c43515\"<br />\r\n将应用程序置于维护模式后，您可以访问与该令牌匹配的应用程序 URL，Laravel 将向您的浏览器发出一个维护模式绕过 cookie:<br />\r\n<br />\r\nhttps://example.com/1630542a-246b-4b66-afa1-dd72a4c43515<br />\r\n当访问这个隐藏的路由时，您将被重定向到应用程序的 / 路由。一旦 cookie 被发布到您的浏览器，您将能够正常浏览应用程序，就好像它没有处于维护模式一样。<br />\r\n<br />\r\n预渲染维护模式视图<br />\r\n如果在部署环境中使用 php artisan down 命令，当你的 Composer 依懒或其基础组件更新的时候，你的用户可能遇到偶然性的错误。这是因为 Laravel 框架的重要部分必须启动才能确定应用程序处于维护模式，并使用模板引擎呈现维护模式视图。<br />\r\n<br />\r\n因此，Laravel 允许您预先呈现一个维护模式视图，该视图将在请求周期的最开始返回。此视图在加载应用程序的任何依赖项之前呈现。可以使用 down 命令的 render 选项预渲染所选模板：<br />\r\n<br />\r\nphp artisan down --render=\"errors::503\"<br />\r\n重定向维护模式请求<br />\r\n在维护模式下，Laravel 将显示用户尝试访问的所有应用程序 url 的维护模式视图。如果您愿意，您可以指示 Laravel 将所有请求重定向到特定的 URL。这可以使用 redirect 选项来完成。例如，您可能希望将所有请求重定向到 / URI：<br />\r\n<br />\r\nphp artisan down --redirect=/<br />\r\n关闭维护模式<br />\r\n要关闭维护模式，请使用 up 命令：<br />\r\n<br />\r\nphp artisan up<br />\r\n技巧：你可以通过修改 resources/views/errors/503.blade.php 模板文件来自定义默认维护模式模板。<br />\r\n<br />\r\n维护模式 &amp; 队列<br />\r\n当应用程序处于维护模式时，不会处理 队列任务。而这些任务会在应用程序退出维护模式后再继续处理。<br />\r\n<br />\r\n维护模式的替代方案<br />\r\n维护模式会导致应用程序有数秒的停机（不响应）时间，因此你可以考虑使用像 Envoyer 这样的替代方案，以便与 Laravel 完成零停机时间部署。<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'lavarel配置,环境配置', '0', '0', '1578130782', '1600600199', '1', null, null, 'ABB全球开放创新中心在深圳启动引领技术变革', '1');
INSERT INTO `zz_news` VALUES ('20', '0', '31', 'Laravel  开发环境 -- Homestead ', null, null, 'Laravel  开发环境', '<p>\r\n	如何统一开发环境？<br />\r\n在日常的团队开发中，由于开发环境的不一致，往往会导致出现各种各样的问题。即便是经验丰富的工程师，在遇到这种问题时也会特别头疼。为了解决这种问题，Vagrant 顺势而生！Vagrant 是一个用于创建和部署虚拟化开发环境的工具，其依赖于 VirtualBox 虚拟机，致力于帮助开发者快速构建一个环境统一的虚拟系统。Vagrant 最强大的地方是在于它在构建虚拟系统时的快捷简便，使开发者可以在短短几分钟内完成一个虚拟系统的删除与构建。<br />\r\n<br />\r\nLaravel 希望在 Vagrant 的基础上让开发环境更加统一，让开发者都能在指定的具体开发环境下使用 Laravel，这时便有了 Homestead。Homestead 是一个基于 Ubuntu 构建的虚拟机，它包含了所有 Laravel 开发时需要用到的东西，你可以很轻松的通过指定的 Laravel 版本来找到相对应版本的 Homestead 并进行安装。Homestead 提供的默认开发环境还会装上很多常用的开发工具来辅助 Laravel 进行项目开发，包括 PHP7, Nginx, Redis, Memcached, MySQL, Git, Node.js, NPM 等等。或许你对这里提到的一些专有词汇所涉及到的知识并不太了解，但是别担心，这些我们在后面章节都会作相关介绍。<br />\r\n<br />\r\n可以不使用 Homestead 吗？<br />\r\n不可以。<br />\r\n<br />\r\nHomestead 是 Laravel 官方推荐的开发环境。在本书里，我们会强制读者使用 Homestead，原因主要有以下：<br />\r\n<br />\r\nHomestead 是本书很重要的技能点之一，学完此书，你必须学会 Homestead；<br />\r\nHomestead 统一了环境，避免歧义，减少新手在学习中遇到不必要的卡顿；<br />\r\n统一环境带来的好处还有：当你遇到问题的时候，其他同学能很容易的帮助到你；<br />\r\n最大程度接近线上生产环境，为后续的课程做铺垫；<br />\r\n这是最佳实践，是需要从一开始培养起来的好习惯。<br />\r\n在现实的 Laravel 项目开发中，比较正经的团队都会把 Homestead 当做绝对的开发环境要求。你在此处学完 Homestead，是一劳永逸的事情。<br />\r\n<br />\r\n因为 Homestead 有以上优点，我们会竭力为 Homestead 的学习扫清障碍。本书作者甚至为读者定制了专属的 Homestead 环境，定制版的 Homestead 环境预装了必须的软件，软件的配置也依照国内网络环境做了优化，如配置了 NPM 和 Composer 国内镜像加速等。<br />\r\n<br />\r\n需要郑重提醒的是：你必须使用『定制版的 Homestead』，你如果在 非定制版 Homestead 环境下、或者其他开发环境下遇到问题，我们将不会为你解答。原因是变量太多了，我们无法擅长所有系统以及各种版本软件搭配会出现的问题。最重要的，人生苦短，熟知这些 Bug，并没有意义。推荐阅读 为什么你一定要使用 Homestead 来开发 Larave...<br />\r\n<br />\r\n接下来我们会分别为你讲解 Windows 和 Mac 下的开发环境部署，请你根据系统类型选择阅读，使用 Ubuntu 的同学请参考 Mac 版的进行部署。<br />\r\n<br />\r\n————————————————<br />\r\n原文作者：Summer<br />\r\n转自链接：https://learnku.com/docs/laravel-development-environment/7.x/how-to-unify-the-development-environment/8442<br />\r\n版权声明：著作权归作者所有。商业转载请联系作者获得授权，非商业转载请保留以上作者信息和原文链接。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'Homestead,lavarel,开发环境', '0', '0', '1578130907', '1600412027', '1', null, null, 'ABB在“改革开放再启动中国制造奖”中获多项大奖', '1');
INSERT INTO `zz_news` VALUES ('21', '0', '31', 'Laravel 与 PHP', null, null, 'Laravel 与 PHP', '<p>\r\n	为什么是 PHP？<br />\r\nPHP 全称是 PHP: Hypertext Preprocessor，译为：『超文本预处理器』。是一门开源脚本语言，专为『动态 Web 开发』而生。<br />\r\n<br />\r\nPHP 在服务器脚本语言市场占有率中遥遥领先于其他对手：<br />\r\n<br />\r\n<br />\r\n<br />\r\n上图是由 W3Techs 网站提供的 服务器端脚本语言市场占有率 排名，数据样本是 Alexa 世界排名 前一千万 的网站，其中 82.6% 使用 PHP 构建，此数据每日更新。可以看出 PHP 惊人的市场占有率。世界上大部分的商业网站在使用 PHP，可想而知这些企业对 PHP 的人才需求能有多巨大。<br />\r\n<br />\r\n扩展阅读：为什么 PHP 是最好的语言？现在是，将来也会是<br />\r\n<br />\r\n作为职业<br />\r\n如果你在选择职业，巨大的市场占有率有以下好处：<br />\r\n<br />\r\n人才需求大 - 好找工作，可以看下 社区招聘列表；<br />\r\n学习的人多 - 资料多，社区 活跃；<br />\r\n解决方案多 - 开发中基本上遇不到什么技术难题。<br />\r\n架构选型<br />\r\n如果你是创业者或者技术负责人，在做技术架构选型，PHP 的巨大的市场占有率有以下好处：<br />\r\n<br />\r\n招人好招 - 笔者喜爱 ROR（基于 Ruby 语言），但是在 PHP 有了 Laravel 后毫不犹豫就把公司的整个技术堆栈切到 PHP，最大原因就是 人好招，创业公司里，组建团队是个头痛的问题；<br />\r\n解决方案多 - PHP 有很多优质的开源软件，拿过来直接就能使用。另外，作为日常开发，也是非常方便。举个有趣的例子：很多第三方开发者服务 SDK 包优先考虑的就是先出个 PHP 的 SDK，原因就是：PHP 占有率高。<br />\r\n什么是 Laravel？<br />\r\nLaravel 是 Taylor Otwell 开发的一款基于 PHP 语言的 Web 开源框架，采用了 MVC 的架构模式，在 2011 年 6 月正式发布了首个版本。<br />\r\n<br />\r\n由于 Laravel 具备 Rails 敏捷开发等优秀特质，深度集成 PHP 强大的扩展包（Composer）生态与 PHP 开发者广大的受众群，让 Laravel 在发布之后的短短几年时间得到了极其迅猛的发展。我们通过 Google Trends 提供的趋势图（图 1.1）可以看出，Laravel 框架在过去七年，其增长速度在各类 PHP 框架中都是有史以来最快的，这也从正面直接反映出了 Laravel 的强大，以及其未来非常可观的发展前景。<br />\r\n<br />\r\n图 1.1 - Google 趋势（Laravel 为绿色）<br />\r\n<br />\r\n<br />\r\n<br />\r\n扩展阅读：数据说话 - 最火的 PHP 框架是哪个？<br />\r\n<br />\r\n为何 Laravel 如此受欢迎？<br />\r\n一个优秀的工程师在构建一个语言框架时，应该懂得如何去协调好框架和语言之间的关系，并借助前人的智慧来思考框架的合理性与可扩展性。Laravel 的作者 Taylor Otwell 无疑做到了这一点。<br />\r\n<br />\r\n若你之前对 Web 开发有所了解，那么你可能会知道有个叫 Ruby on Rails（简称 Rails）的知名 Web 开发框架。Rails 是基于 Ruby 语言构建的一个 Web 开发框架，该框架有以下原则：<br />\r\n<br />\r\n强调与注重敏捷开发；<br />\r\n约定高于配置（Convention over configuration）；<br />\r\nDRY（Don’t repeat yourself）不要重复自己，提倡代码重用；<br />\r\n重视「编码愉悦性」。<br />\r\n自诞生之日起，Rails 便受到了技术社区的广泛关注与讨论。而 Laravel 正是由于结合了 Rails 框架的这几项优秀特质，才使得其在 PHP 社区中备受推崇。<br />\r\n<br />\r\n国内 Laravel 生态圈在哪？<br />\r\nLaravel 在国内的生态圈发展也日趋成熟，你可以很轻松的在网上找到很多 Laravel 相关的中文学习资料、技术讨论社区：<br />\r\n<br />\r\nLaravel China 社区 - 国内最大的 PHP / Laravel 开发者社区，由 Summer 在 2014 年创建；<br />\r\nLaravel 中文文档 - Laravel China 社区维护的中文文档，涵盖所有版本<br />\r\nLaravel 资讯专栏 - 为 Laravel 开发者提供最新最热的技术资讯<br />\r\nLaravel CheatSheet - Laravel 速查表<br />\r\nComposer 中文镜像 - Packagist 中国全量镜像，让 Composer 速度如飞。<br />\r\nLaravel 版本类型有哪些？<br />\r\nLaravel 有两个版本类型：<br />\r\n<br />\r\nLTS 版本 - 长期支持版本，英文 Long Term Support 的缩写，此类版本是 Laravel 能提供的最长时间维护版本。<br />\r\n一般发行版 - 只提供 6 个月的 Bug 修复支持，一年的安全修复支持。<br />\r\n什么是『长期支持』？<br />\r\n长期支持 （英语：Long-term support，缩写：LTS）是一种软件的产品生命周期政策，特别是开源软件，它增加了软件开发过程及软件版本周期的可靠度。长期支持延长了软件维护的周期；它也改变了软件更新（补丁）的类型及频率以降低风险、费用及软件部署的中断时间，同时提升了软件的可靠性。但这并不必然包含技术支持。<br />\r\n<br />\r\n在长期支持周期的开始，软件设计师会将软件特性冻结：他们制作补丁来修复程序错误及计算机安全隐患，但不会加入新的，可能会造成软件破坏的功能。软件维护者可能会单独发布补丁，或是将其置于维护版本、小数点版本或是服务包中发布。支持周期结束后，其称之为产品的生命周期结束。<br />\r\n<br />\r\n“长期支持” 这个术语通常是保留给特殊的软件版本，其他版本会有更短的生命周期。通常来说，长期支持版本至少会被维护两年。<br />\r\nFrom 维基百科<br />\r\n<br />\r\nLaravel 有着怎样的版本计划？<br />\r\n版本<span> </span>发布日期<span> </span>版本类型<span> </span>维护周期<br />\r\nLaravel 5.1<span> </span>2015 年 6 月<span> </span>LTS 长久支持<span> </span>Bug 修复 2017 年 6 月份，安全修复 2018 年 6 月份<br />\r\nLaravel 5.2<span> </span>2015 年 12 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />\r\nLaravel 5.3<span> </span>2016 年 8 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />\r\nLaravel 5.4<span> </span>2017 年 1 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />\r\nLaravel 5.5<span> </span>2017 年 8 月<span> </span>LTS 长久支持<span> </span>Bug 修复 2019 年 8 月份，安全修复 2020 年 8 月份<br />\r\nLaravel 5.6<span> </span>2018 年 2 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />\r\nLaravel 5.7<span> </span>2018 年 8 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />\r\nLaravel 5.8<span> </span>2019 年 2 月<span> </span>一般发行<span> </span>Bug 修复 2019 年 8 月份，安全修复 2020 年 2 月份<br />\r\nLaravel 6.0<span> </span>2019 年 9 月<span> </span>LTS 长久支持<span> </span>Bug 修复 2021 年 9 月份，安全修复 2022 年 9 月份<br />\r\nLaravel 7.0<span> </span>2020 年 3 月<span> </span>一般发行<span> </span>Bug 修复 2020 年 9 月份，安全修复 2021 年 3 月份<br />\r\n需要注意的是，以上只是大致的计划，版本的最终发布时间会有所变动。<br />\r\n<br />\r\n如何选择 Laravel 版本？<br />\r\n不同角色，不同项目类型，有不同的建议：<br />\r\n<br />\r\n如果你是新手，目的只是为了学习，请直接选用最新版本；<br />\r\n如果是现有项目，目的是学成后能对项目进行二次开发，请选用与项目匹配的版本进行学习；<br />\r\n如果是商业项目，请优先考虑 LTS 版本；<br />\r\n<br />\r\n————————————————<br />\r\n原文作者：Summer<br />\r\n转自链接：https://learnku.com/courses/laravel-essential-training/7.x/laravel-and-php/8360<br />\r\n版权声明：著作权归作者所有。商业转载请联系作者获得授权，非商业转载请保留以上作者信息和原文链接。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'Laravel,php', '0', '0', '1578131016', '1600411941', '1', null, null, 'ABB支持中国单一较大海上风电项目', '1');
INSERT INTO `zz_news` VALUES ('22', '0', '27', 'yii2 运行应用', null, null, 'yii2 运行应用', '<p>\r\n	<br />\r\n</p>\r\n<h1 style=\"font-weight:500;font-size:1.875rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	运行应用<span id=\"\"></span> \r\n</h1>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	安装 Yii 后，就有了一个可运行的 Yii 应用， 根据配置的不同，可以通过&nbsp;http://hostname/basic/web/index.php&nbsp;或&nbsp;http://hostname/index.php&nbsp;访问。 本章节将介绍应用的内建功能，如何组织代码， 以及一般情况下应用如何处理请求。\r\n</p>\r\n<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">\r\n	<p>\r\n		<span style=\"font-weight:bolder;\">信息：&nbsp;</span>为简单起见，在整个“入门”板块都假定你已经把&nbsp;basic/web&nbsp;设为 Web 服务器根目录并配置完毕， 你访问应用的地址会是&nbsp;http://hostname/index.php&nbsp;或类似的。 请按需调整 URL。\r\n	</p>\r\n</blockquote>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	注意项目模板和框架完全不同，安装完之后全都归你了。你可以根据你的需要自由的添加或删除代码和 修改全部的。\r\n</p>\r\n<h2 id=\"functionality\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	功能\r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	一个安装完的基本应用包含四页：\r\n</p>\r\n<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		主页，当你访问&nbsp;http://hostname/index.php&nbsp;时显示,\r\n	</li>\r\n	<li>\r\n		“About”页，\r\n	</li>\r\n	<li>\r\n		“Contact”页， 显示一个联系表单，允许终端用户通过 Email 联系你，\r\n	</li>\r\n	<li>\r\n		“Login”页， 显示一个登录表单，用来验证终端用户。试着用“admin/admin”登录， 你可以看到当前是登录状态，已经可以“退出登录”了。\r\n	</li>\r\n</ul>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	这些页面使用同一个头部和尾部。 头部包含了一个可以在不同页面间切换的导航栏。\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	在浏览器底部可以看到一个工具栏。这是 Yii 提供的很有用的<a href=\"https://www.yiichina.com/doc/guide/2.0/tool-debugger\">调试工具</a>， 可以记录并显示大量的调试信息，例如日志信息，响应状态，数据库查询等等。\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	除了 web 应用程序，还有一个控制台脚本叫&nbsp;yii&nbsp;,它位于应用程序根目录。 它可以用于程序的后台运行和维护任务，在<a href=\"https://www.yiichina.com/doc/guide/2.0/tutorial-console\">控制台应用程序章节</a>&nbsp;中描述。\r\n</p>\r\n<h2 id=\"application-structure\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	应用结构\r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	应用中最重要的目录和文件（假设应用根目录是&nbsp;basic）：\r\n</p>\r\n<pre>basic/                  应用根目录\r\n    composer.json       Composer 配置文件, 描述包信息\r\n    config/             包含应用配置及其它配置 <span class=\"hljs-built_in\" style=\"color:#DC322F;\">console</span>.php     控制台应用配置信息\r\n        web.php         Web 应用配置信息\r\n    commands/           包含控制台命令类\r\n    controllers/        包含控制器类\r\n    models/             包含模型类\r\n    runtime/            包含 Yii 在运行时生成的文件，例如日志和缓存文件\r\n    vendor/             包含已经安装的 Composer 包，包括 Yii 框架自身\r\n    views/              包含视图文件\r\n    web/                Web 应用根目录，包含 Web 入口文件\r\n        assets/         包含 Yii 发布的资源文件（javascript 和 css）\r\n        index.php       应用入口文件\r\n    yii                 Yii 控制台命令执行脚本</pre>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	一般来说，应用中的文件可被分为两类：在&nbsp;basic/web&nbsp;下的和在其它目录下的。 前者可以直接通过 HTTP 访问（例如浏览器），后者不能也不应该被直接访问。\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	Yii 实现了<a href=\"http://wikipedia.org/wiki/Model-view-controller\">模型-视图-控制器 (MVC)</a>设计模式，这点在上述目录结构中也得以体现。&nbsp;models&nbsp;目录包含了所有<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-models\">模型类</a>，&nbsp;views&nbsp;目录包含了所有<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-views\">视图脚本</a>，&nbsp;controllers&nbsp;目录包含了所有<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-controllers\">控制器类</a>。\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	以下图表展示了一个应用的静态结构：\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	<img class=\"img-responsive\" src=\"https://www.yiichina.com/doc/guide/2.0/images/application-structure.png\" alt=\"应用静态结构\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	每个应用都有一个入口脚本&nbsp;web/index.php，这是整个应用中唯一可以访问的 PHP 脚本。 入口脚本接受一个 Web 请求并创建<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-application\">应用</a>实例去处理它。&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-applications\">应用</a>在它的<a href=\"https://www.yiichina.com/doc/guide/2.0/concept-components\">组件</a>辅助下解析请求， 并分派请求至 MVC 元素。<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-views\">视图</a>使用<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-widgets\">小部件</a>&nbsp;去创建复杂和动态的用户界面。\r\n</p>\r\n<h2 id=\"request-lifecycle\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	请求生命周期\r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	以下图表展示了一个应用如何处理请求：\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	<img class=\"img-responsive\" src=\"https://www.yiichina.com/doc/guide/2.0/images/request-lifecycle.png\" alt=\"请求生命周期\" style=\"height:auto;\" /> \r\n</p>\r\n<ol style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		用户向<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-entry-scripts\">入口脚本</a>&nbsp;web/index.php&nbsp;发起请求。\r\n	</li>\r\n	<li>\r\n		入口脚本加载应用<a href=\"https://www.yiichina.com/doc/guide/2.0/concept-configurations\">配置</a>并创建一个<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-applications\">应用</a>&nbsp;实例去处理请求。\r\n	</li>\r\n	<li>\r\n		应用通过<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-request\">请求</a>组件解析请求的&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-routing\">路由</a>。\r\n	</li>\r\n	<li>\r\n		应用创建一个<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-controllers\">控制器</a>实例去处理请求。\r\n	</li>\r\n	<li>\r\n		控制器创建一个<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-controllers\">动作</a>实例并针对操作执行过滤器。\r\n	</li>\r\n	<li>\r\n		如果任何一个过滤器返回失败，则动作取消。\r\n	</li>\r\n	<li>\r\n		如果所有过滤器都通过，动作将被执行。\r\n	</li>\r\n	<li>\r\n		动作会加载一个数据模型，或许是来自数据库。\r\n	</li>\r\n	<li>\r\n		动作会渲染一个视图，把数据模型提供给它。\r\n	</li>\r\n	<li>\r\n		渲染结果返回给<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-responses\">响应</a>组件。\r\n	</li>\r\n	<li>\r\n		响应组件发送渲染结果给用户浏览器。\r\n	</li>\r\n</ol>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'yii2,应用结构', '7', '0', '1578131184', '1600412310', '1', null, null, 'ABB能力？高精度气体泄漏检测系统在世博会首次亮相', '1');
INSERT INTO `zz_news` VALUES ('23', '0', '27', '安装 Yii', null, null, '安装 Yii教程', '<p>\r\n	<h1 id=\"yii\" style=\"font-weight:500;font-size:1.875rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		安装 Yii\r\n	</h1>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		你可以通过两种方式安装 Yii：使用&nbsp;<a href=\"http://getcomposer.org/\">Composer</a>&nbsp;或下载一个归档文件。 推荐使用前者，这样只需执行一条简单的命令就可以安装新的<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-extensions\">扩展</a>或更新 Yii 了。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		标准安装完Yii之后，框架和一个项目模板两者都下载并安装好了。 一个项目模板是实现了一些基本特性的一个 可行的Yii项目，比如登录，联系表单，等等。 它的代码是以推荐的方式组织的。因此，它能够适合作为你项目的一个好的起点。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		在本章节和以后的章节，我们将会介绍如何去安装Yii和所谓的<em>基本的应用程序模板</em>和如何去实现这个模板上的新特性。 Yii当然也提供了其它模板叫&nbsp;<a href=\"https://github.com/yiisoft/yii2-app-advanced/blob/master/docs/guide-zh-CN/README.md\">高级的应用程序模板</a>， 它是更好应用于在一个团队开发环境中去开发多层级的应用程序。\r\n	</p>\r\n	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>这个基本的应用程序模板是适合于开发90%的Web应用程序。 它不同于高级的应用程序模板主要地在如何使它们的代码是有组织的。 如果你是刚接触Yii，我们强烈建议你坚持使用简单并有足够的功能的基础的应用程序模板。\r\n		</p>\r\n	</blockquote>\r\n	<h2 id=\"installing-via-composer\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		通过 Composer 安装\r\n	</h2>\r\n	<h3 id=\"composer\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		安装 Composer\r\n	</h3>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		如果还没有安装 Composer，你可以按&nbsp;<a href=\"https://getcomposer.org/download/\">getcomposer.org</a>&nbsp;中的方法安装。 在 Linux 和 Mac OS X 中可以运行如下命令：\r\n	</p>\r\n<pre>curl <span class=\"hljs-operator\">-s</span>S https://getcomposer.org/installer | php\r\nmv composer.phar /usr/<span class=\"hljs-built_in\" style=\"color:#DC322F;\">local</span>/bin/composer</pre>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		在 Windows 中，你需要下载并运行&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\">Composer-Setup.exe</a>。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		如果遇到任何问题或者想更深入地学习 Composer， 请参考&nbsp;<a href=\"https://getcomposer.org/doc/\">Composer 文档</a>。 如果你已经安装有 Composer 请确保使用的是最新版本， 你可以用&nbsp;composer self-update&nbsp;命令更新 Composer 为最新版本。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		在本指南中，所有 composer 命令都假定您已经安装了<a href=\"https://getcomposer.org/doc/00-intro.md#globally\">全局</a>&nbsp;的 composer， 这样它可以作为&nbsp;composer&nbsp;命令。如果您在本地目录中使用&nbsp;composer.phar， 则必须相应地调整示例命令。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		如果您之前已安装 Composer，请确保使用最新版本。 您可以通过运行&nbsp;composer self-update&nbsp;来更新Composer。\r\n	</p>\r\n	<blockquote class=\"note\" style=\"background-color:#FFF3CD;color:#856404;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">注意：&nbsp;</span>在安装 Yii 期间，Composer 需要从 Github API 请求很多信息。 请求的数量取决于您的应用程序所依赖的数量， 并可能大于&nbsp;<span style=\"font-weight:bolder;\">Github API 速率限制</span>。如果达到此限制，Composer 可能会要求您提供 Github 登录凭据以获取 Github API 访问令牌。在快速连接上，您可能比 Composer 能够处理的时间早， 因此我们建议您在安装 Yii 之前配置访问令牌。 有关如何执行此操作的说明，请参阅&nbsp;<a href=\"https://getcomposer.org/doc/articles/troubleshooting.md#api-rate-limit-and-oauth-tokens\">Composer documentation about Github API tokens</a>。\r\n		</p>\r\n	</blockquote>\r\n	<h3 id=\"installing-from-composer\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		安装 Yii\r\n	</h3>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		安装 Composer 后，您可以通过在 Web 可访问的文件夹下运行以下命令来 安装Yii应用程序模板：\r\n	</p>\r\n<pre>composer create-project --prefer-dist yiisoft/yii2-app-basic basic</pre>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		这将在一个名为&nbsp;basic&nbsp;的目录中安装Yii应用程序模板的最新稳定版本。 如果需要，您可以选择不同的目录名称。\r\n	</p>\r\n	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>如果&nbsp;composer create-project&nbsp;命令失败，您也可以参考&nbsp;<a href=\"https://getcomposer.org/doc/articles/troubleshooting.md\">Composer 文档的疑难解答</a>&nbsp;部分中的常见错误。修复错误后， 您可以通过在&nbsp;basic&nbsp;目录内运行&nbsp;composer update&nbsp;来恢复中止安装。\r\n		</p>\r\n	</blockquote>\r\n	<blockquote class=\"tip\" style=\"background-color:#D4EDDA;color:#155724;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">提示：&nbsp;</span>如果你想安装 Yii 的最新开发版本，可以使用以下命令代替， 它添加了一个&nbsp;<a href=\"https://getcomposer.org/doc/04-schema.md#minimum-stability\">stability 选项</a>：\r\n		</p>\r\n<pre>composer create-project --prefer-dist --stability=dev yiisoft/yii2-app-basic basic</pre>\r\n		<p>\r\n			请注意，Yii的开发版本不应该用于生产，因为它可能会破坏您的运行代码。\r\n		</p>\r\n	</blockquote>\r\n	<h2 id=\"installing-from-archive-file\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		通过归档文件安装\r\n	</h2>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		通过归档文件安装 Yii 包括三个步骤：\r\n	</p>\r\n	<ol style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		<li>\r\n			从&nbsp;<a href=\"http://www.yiiframework.com/download/\">yiiframework.com</a>&nbsp;下载归档文件。\r\n		</li>\r\n		<li>\r\n			将下载的文件解压缩到 Web 访问的文件夹中。\r\n		</li>\r\n		<li>\r\n			<p>\r\n				修改&nbsp;config/web.php&nbsp;文件，给&nbsp;cookieValidationKey&nbsp;配置项 添加一个密钥（若你通过 Composer 安装，则此步骤会自动完成）：\r\n			</p>\r\n<pre><span class=\"hljs-comment\" style=\"color:#586E75;\">// !!! 在下面插入一段密钥（若为空） - 以供 cookie validation 的需要</span> <span class=\"hljs-string\" style=\"color:#2AA198;\">\'cookieValidationKey\'</span> =&gt; <span class=\"hljs-string\" style=\"color:#2AA198;\">\'在此处输入你的密钥\'</span>,</pre>\r\n		</li>\r\n	</ol>\r\n	<h2 id=\"other-installation-options\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		其他安装方式\r\n	</h2>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		上文介绍了两种安装 Yii 的方法， 安装的同时也会创建一个立即可用的 Web 应用程序。 这个方法对大多数的大或者小的项目是一个不错的起点。如果你正好开始学习Yii，这是特别适合的。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		但是其他的安装方式也存在：\r\n	</p>\r\n	<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		<li>\r\n			如果你只想安装核心框架，然后从零开始构建整个属于你自己的应用程序模版， 可以参考<a href=\"https://www.yiichina.com/doc/guide/2.0/tutorial-start-from-scratch\">从头构建自定义模版</a>一节的介绍。\r\n		</li>\r\n		<li>\r\n			如果你要开发一个更复杂的应用，可以更好地适用于团队开发环境的， 你可以考虑安装<a href=\"https://github.com/yiisoft/yii2-app-advanced/blob/master/docs/guide-zh-CN/README.md\">高级应用模版</a>。\r\n		</li>\r\n	</ul>\r\n	<h2 id=\"installing-assets\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		安装 Assets\r\n	</h2>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		Yii依靠&nbsp;<a href=\"http://bower.io/\">Bower</a>&nbsp;和/或&nbsp;<a href=\"https://www.npmjs.org/\">NPM</a>&nbsp;软件包来安装 asset（CSS 和 JavaScript）库。 它使用Composer来获取这些库，允许 PHP 和 CSS/JavaScript 包版本同时解析。 这可以通过使用&nbsp;<a href=\"https://asset-packagist.org/\">asset-packagist.org</a>&nbsp;或&nbsp;<a href=\"https://github.com/francoispluchino/composer-asset-plugin/\">composer asset plugin</a>&nbsp;来实现。 有关更多详细信息，请参阅&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-assets\">Assets 文档</a>。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		您可能希望通过本地 Bower/NPM 客户端管理您的 assets，使用 CDN 或完全避免 assets 的安装。 为了防止通过 Composer 安装 assets，请将以下几行添加到您的 \'composer.json\' 中：\r\n	</p>\r\n<pre><span class=\"hljs-string\" style=\"color:#2AA198;\">\"replace\"</span>: { <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/jquery</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\">\"&gt;=1.11.0\"</span></span>, <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/inputmask</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\">\"&gt;=3.2.0\"</span></span>, <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/punycode</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\">\"&gt;=1.3.0\"</span></span>, <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/yii2-pjax</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\"><span class=\"hljs-string\">\"&gt;=2.0.0\"</span></span> </span>},</pre>\r\n	<blockquote class=\"note\" style=\"background-color:#FFF3CD;color:#856404;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">注意：&nbsp;</span>在通过 Composer 绕过 assets 安装的情况下，您负责 assets 的安装和解决版本冲突。 准备来自不同扩展名的 assets 文件之间的可能不一致。\r\n		</p>\r\n	</blockquote>\r\n	<h2 id=\"verifying-installation\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		验证安装的结果\r\n	</h2>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		当安装完成之后， 或配置你的Web服务器(看下面的文章)或使用<a href=\"https://secure.php.net/manual/en/features.commandline.webserver.php\">内置Web Server</a>， 当在项目&nbsp;web&nbsp;目录下可以通过下面的命令:\r\n	</p>\r\n<pre>php yii serve</pre>\r\n	<blockquote class=\"note\" style=\"background-color:#FFF3CD;color:#856404;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">注意：&nbsp;</span>默认情况下Https-server将监听8080。可是如果这个端口已经使用或者你想通过这个方式运行多个应用程序，你可以指定使用哪些端口。 只加上 --port 参数：\r\n		</p>\r\n	</blockquote>\r\n<pre>php yii serve --port=<span class=\"hljs-number\" style=\"color:#2AA198;\">8888</span> </pre>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		安装完成后，就可以使用浏览器通过如下 URL 访问刚安装完的 Yii 应用了：\r\n	</p>\r\n<pre><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">http</span>:<span class=\"hljs-comment\" style=\"color:#586E75;\">//localhost:8080/</span> </pre>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		<img class=\"img-responsive\" src=\"https://www.yiichina.com/doc/guide/2.0/images/start-app-installed.png\" alt=\"Yii 安装成功\" style=\"height:auto;\" />\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		你应该可以在浏览器中看到如上所示的 “Congratulations!” 页面。如果没有， 请通过以下任意一种方式，检查当前 PHP 环境是否满足 Yii 最基本需求：\r\n	</p>\r\n	<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		<li>\r\n			复制&nbsp;/requirements.php&nbsp;到&nbsp;/web/requirements.php，然后通过浏览器访问 URL&nbsp;http://localhost/requirements.php\r\n		</li>\r\n		<li>\r\n			<p>\r\n				执行如下命令：\r\n			</p>\r\n<pre><span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">cd</span></span> basic\r\nphp requirements.php</pre>\r\n		</li>\r\n	</ul>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		你需要配置好 PHP 安装环境，使其符合 Yii 的最小需求。主要是需要 PHP 5.4 或 以上版本。 如果应用需要用到数据库，那还要安装&nbsp;<a href=\"http://www.php.net/manual/zh/pdo.installation.php\">PDO PHP 扩展</a>&nbsp;和相应的数据库驱动（例如访问 MySQL 数据库所需的&nbsp;pdo_mysql）。\r\n	</p>\r\n	<h2 id=\"configuring-web-servers\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		配置 Web 服务器\r\n	</h2>\r\n	<blockquote class=\"tip\" style=\"background-color:#D4EDDA;color:#155724;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">提示：&nbsp;</span>如果你现在只是要试用 Yii 而不是将其部署到生产环境中， 本小节可以跳过。\r\n		</p>\r\n	</blockquote>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		通过上述方法安装的应用程序在 Windows，Max OS X， Linux 中的&nbsp;<a href=\"http://httpd.apache.org/\">Apache HTTP 服务器</a>&nbsp;或&nbsp;<a href=\"http://nginx.org/\">Nginx HTTP 服务器</a>且PHP版本为5.4或更高都可以直接运行。 Yii 2.0 也兼容 Facebook 公司的&nbsp;<a href=\"http://hhvm.com/\">HHVM</a>， 由于 HHVM 和标准 PHP 在边界案例上有些地方略有不同，在使用 HHVM 时需稍作处理。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		在生产环境的服务器上，你可能会想配置服务器让应用程序可以通过 URL&nbsp;http://www.example.com/index.php&nbsp;访问而不是&nbsp;http://www.example.com/basic/web/index.php。 这种配置需要将 Web 服务器的文档根目录（document root）指向&nbsp;basic/web&nbsp;目录。 可能你还会想隐藏掉 URL 中的&nbsp;index.php，具体细节在&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-routing\">URL 解析和生成</a>一章中有介绍， 你将学到如何配置 Apache 或 Nginx 服务器实现这些目标。\r\n	</p>\r\n	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>将&nbsp;basic/web&nbsp;设置为文档根目录（document root），可以防止终端用户访问&nbsp;basic/web&nbsp;相邻目录中 的私有应用代码和敏感数据文件。 禁止对其他目录的访问是一个不错的安全改进。\r\n		</p>\r\n	</blockquote>\r\n	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>如果你的应用程序将来要运行在共享虚拟主机环境中， 没有修改其 Web 服务器配置的权限，你依然可以通过调整应用的结构来提升安全性。 详情请参考<a href=\"https://www.yiichina.com/doc/guide/2.0/tutorial-shared-hosting\">共享主机环境</a>&nbsp;一章。\r\n		</p>\r\n	</blockquote>\r\n	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">\r\n		<p>\r\n			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>如果您在反向代理后面运行Yii应用程序， 则可能需要在请求组件中配置&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-requests#trusted-proxies\">Trusted proxies and headers</a>。\r\n		</p>\r\n	</blockquote>\r\n	<h3 id=\"recommended-apache-configuration\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		推荐使用的 Apache 配置\r\n	</h3>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		在 Apache 的&nbsp;httpd.conf&nbsp;文件或在一个虚拟主机配置文件中使用如下配置。 注意，你应该将&nbsp;path/to/basic/web&nbsp;替换为实际的&nbsp;basic/web&nbsp;目录。\r\n	</p>\r\n<pre><span class=\"hljs-comment\" style=\"color:#586E75;\"># 设置文档根目录为 \"basic/web\"</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">DocumentRoot</span></span></span> <span class=\"hljs-string\" style=\"color:#2AA198;\">\"path/to/basic/web\"</span> <span class=\"hljs-tag\"><span class=\"hljs-section\" style=\"color:#268BD2;font-weight:bold;\">&lt;Directory \"path/to/basic/web\"&gt;</span></span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># 开启 mod_rewrite 用于美化 URL 功能的支持（译注：对应 pretty URL 选项）</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteEngine</span></span></span> <span class=\"hljs-literal\" style=\"color:#2AA198;\">on</span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># 如果请求的是真实存在的文件或目录，直接访问</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteCond</span></span></span> <span class=\"hljs-cbracket\"><span class=\"hljs-variable\" style=\"color:#B58900;\">%{REQUEST_FILENAME}</span></span> !-f <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteCond</span></span></span> <span class=\"hljs-cbracket\"><span class=\"hljs-variable\" style=\"color:#B58900;\">%{REQUEST_FILENAME}</span></span> !-d <span class=\"hljs-comment\" style=\"color:#586E75;\"># 如果请求的不是真实文件或目录，分发请求至 index.php</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteRule</span></span></span> . index.php <span class=\"hljs-comment\" style=\"color:#586E75;\"># if $showScriptName is false in UrlManager, do not allow accessing URLs with script name</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteRule</span></span></span> ^index.php/ -<span class=\"hljs-sqbracket\"><span class=\"hljs-meta\" style=\"color:#CB4B16;\"> [L,R=404]</span></span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># ...其它设置...</span> <span class=\"hljs-tag\"><span class=\"hljs-section\" style=\"color:#268BD2;font-weight:bold;\">&lt;/Directory&gt;</span></span> </pre>\r\n	<h3 id=\"recommended-nginx-configuration\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n		推荐使用的 Nginx 配置\r\n	</h3>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		为了使用&nbsp;<a href=\"http://wiki.nginx.org/\">Nginx</a>，你应该已经将 PHP 安装为&nbsp;<a href=\"http://php.net/install.fpm\">FPM SAPI</a>&nbsp;了。 你可以使用如下 Nginx 配置，将&nbsp;path/to/basic/web&nbsp;替换为实际的&nbsp;basic/web&nbsp;目录，&nbsp;mysite.local&nbsp;替换为实际的主机名以提供服务。\r\n	</p>\r\n<pre><span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\">server</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">charset</span></span> utf-<span class=\"hljs-number\" style=\"color:#2AA198;\">8</span>; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">client_max_body_size</span></span> <span class=\"hljs-number\" style=\"color:#2AA198;\">128M</span>; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">listen</span></span> <span class=\"hljs-number\" style=\"color:#2AA198;\">80</span>; <span class=\"hljs-comment\" style=\"color:#586E75;\">## listen for ipv4</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#listen [::]:80 default_server ipv6only=on; ## listen for ipv6</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">server_name</span></span> mysite.test; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">root</span></span> /path/to/basic/web; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">index</span></span> index.php; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">access_log</span></span> /path/to/basic/log/access.log; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">error_log</span></span> /path/to/basic/log/error.log; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> / { <span class=\"hljs-comment\" style=\"color:#586E75;\"># Redirect everything that isn\'t a real file to index.php</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">try_files</span></span> <span class=\"hljs-variable\" style=\"color:#B58900;\">$uri</span> <span class=\"hljs-variable\" style=\"color:#B58900;\">$uri</span>/ /index.php<span class=\"hljs-variable\" style=\"color:#B58900;\">$is_args</span><span class=\"hljs-variable\" style=\"color:#B58900;\">$args</span>;\r\n    } <span class=\"hljs-comment\" style=\"color:#586E75;\"># uncomment to avoid processing of calls to non-existing static files by Yii</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#location ~ \\.(js|css|png|jpg|gif|swf|ico|pdf|mov|fla|zip|rar)$ {</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#    try_files $uri =404;</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#}</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#error_page 404 /404.html;</span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># deny accessing php files for the /assets directory</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> <span class=\"hljs-regexp\" style=\"color:#2AA198;\">~ ^/assets/.*\\.php$</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">deny</span></span> all;\r\n    } <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> <span class=\"hljs-regexp\" style=\"color:#2AA198;\">~ \\.php$</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">include</span></span> fastcgi_params; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">fastcgi_param</span></span> SCRIPT_FILENAME <span class=\"hljs-variable\" style=\"color:#B58900;\">$document_root</span><span class=\"hljs-variable\" style=\"color:#B58900;\">$fastcgi_script_name</span>; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">fastcgi_pass</span></span> <span class=\"hljs-number\" style=\"color:#2AA198;\">127.0.0.1:9000</span>; <span class=\"hljs-comment\" style=\"color:#586E75;\">#fastcgi_pass unix:/var/run/php5-fpm.sock;</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">try_files</span></span> <span class=\"hljs-variable\" style=\"color:#B58900;\">$uri</span> =<span class=\"hljs-number\" style=\"color:#2AA198;\">404</span>;\r\n    } <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> <span class=\"hljs-regexp\" style=\"color:#2AA198;\">~* /\\.</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">deny</span></span> all;\r\n    }\r\n}</pre>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		使用该配置时，你还应该在&nbsp;php.ini&nbsp;文件中设置&nbsp;cgi.fix_pathinfo=0&nbsp;， 能避免掉很多不必要的&nbsp;stat()&nbsp;系统调用。\r\n	</p>\r\n	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n		还要注意当运行一个 HTTPS 服务器时，需要添加&nbsp;fastcgi_param HTTPS on;&nbsp;一行， 这样 Yii 才能正确地判断连接是否安全。\r\n	</p>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'composer,yii,web', '0', '0', '1578193795', '1600411831', '1', null, null, 'ABB赢得了升级巴西Copel水电站的合同', '1');
INSERT INTO `zz_news` VALUES ('24', '0', '28', 'Yii 是什么', null, null, 'Yii 是什么', '<p>\r\n	<br />\r\n</p>\r\n<h1 id=\"yii\" style=\"font-weight:500;font-size:1.875rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	Yii 是什么\r\n</h1>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	Yii 是一个高性能，基于组件的 PHP 框架，用于快速开发现代 Web 应用程序。 名字 Yii （读作&nbsp;易）在中文里有“极致简单与不断演变”两重含义， 也可看作&nbsp;<span style=\"font-weight:bolder;\">Yes It Is</span>! 的缩写。\r\n</p>\r\n<h2 id=\"yii\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	Yii 最适合做什么？\r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	Yii 是一个通用的 Web 编程框架，即可以用于开发各种用 PHP 构建的 Web 应用。 因为基于组件的框架结构和设计精巧的缓存支持，它特别适合开发大型应用， 如门户网站、社区、内容管理系统（CMS）、 电子商务项目和 RESTful Web 服务等。\r\n</p>\r\n<h2 id=\"yii\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	Yii 和其他框架相比呢？\r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	如果你有其它框架使用经验，那么你会很开心看到 Yii 所做的努力：\r\n</p>\r\n<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		和其他 PHP 框架类似，Yii 实现了 MVC（Model-View-Controller） 设计模式并基于该模式组织代码。\r\n	</li>\r\n	<li>\r\n		Yii 的代码简洁优雅，这是它的编程哲学。 它永远不会为了刻板地遵照某种设计模式而对代码进行过度的设计。\r\n	</li>\r\n	<li>\r\n		Yii 是一个全栈框架，提供了大量久经考验，开箱即用的特性： 对关系型和 NoSQL 数据库都提供了查询生成器和 ActiveRecord；RESTful API 的开发支持；多层缓存支持，等等。\r\n	</li>\r\n	<li>\r\n		Yii 非常易于扩展。你可以自定义或替换几乎任何一处核心代码。你还会受益于 Yii 坚实可靠的扩展架构，使用、再开发或再发布扩展。\r\n	</li>\r\n	<li>\r\n		高性能始终是 Yii 的首要目标之一。\r\n	</li>\r\n</ul>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	Yii 不是一场独角戏，它由一个<a href=\"http://www.yiiframework.com/about/\">强大的开发者团队</a>提供支持， 也有一个庞大的专家社区，持续不断地对 Yii 的开发作出贡献。 Yii 开发者团队始终对 Web 开发趋势和其他框架及项目中的最佳实践和特性保持密切关注， 那些有意义的最佳实践及特性会被不定期的整合进核心框架中， 并提供简单优雅的接口。\r\n</p>\r\n<h2 id=\"yii\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	Yii 版本\r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	Yii 当前有两个主要版本：1.1 和 2.0。 1.1 版是上代的老版本，现在处于维护状态。 2.0 版是一个完全重写的版本，采用了最新的技术和协议，包括依赖包管理器 Composer、PHP 代码规范 PSR、命名空间、Traits（特质）等等。 2.0 版代表新一代框架，是未来几年中我们的主要开发版本。 本指南主要基于 2.0 版编写。\r\n</p>\r\n<h2 style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">\r\n	系统要求和先决条件<span id=\"\"></span> \r\n</h2>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	Yii 2.0 需要 PHP 5.4.0 或以上版本支持。你可以通过运行任何 Yii 发行包中附带的系统要求检查器查看每个具体特性所需的 PHP 配置。\r\n</p>\r\n<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">\r\n	使用 Yii 需要对面向对象编程（OOP）有基本了解，因为 Yii 是一个纯面向对象的框架。Yii 2.0 还使用了 PHP 的最新特性， 例如<a href=\"http://www.php.net/manual/en/language.namespaces.php\">命名空间</a>&nbsp;和<a href=\"http://www.php.net/manual/en/language.oop5.traits.php\">Trait（特质）</a>。 理解这些概念将有助于你更快地掌握 Yii 2.0。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'yii2', '0', '0', '1578193886', '1600411771', '1', null, null, 'ABB为AGRANA的新小麦淀粉工厂提供安全性和可靠性', '1');
INSERT INTO `zz_news` VALUES ('25', '0', '27', 'php如何整合qq互联登录 ', null, null, 'php整合qq互联登录', '<p>\r\n	<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">php整合qq互联登录</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">接入QQ互联平台后，我们就可以让用户通过QQ帐号登录来登陆我们的网站，这样减少了注册的繁琐，可以更快 、更便捷的为了我带来更多的用户，下面我们一起来看下如何通过QQ互联来实现第三方登录。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">申请资质</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">首先去QQ互联官网：https://connect.qq.com/index.html 申请成为开发者，然后补充自己的信息之后就可以创建应用了。拿到APP ID以及APP Key</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">下载SDK</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这里我们去 http://wiki.connect.qq.com/sdk%E4%B8%8B%E8%BD%BD 网站对应的sdk。</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">安装并配置SDK</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">将我们下载好的SDK放到php运行环境中访问改SDK，会出现提示配置SDK，和查看官方文档选项。</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">代码实现</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">将 SDK 中的 example 文件夹中的 oauth 文件夹复制到API文件夹同级目录下，修改oauth 文件夹中 callback.php 以及 index.php 中的载入qqContentApi.php的路径。</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">前台页面显示QQ登录提示：</span><br />\r\n<br />\r\n<br />\r\n<a href=\"https://www.php.cn/php-weizijiaocheng-459690.html#\">QQ登录</a><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这样点击 [QQ登录] 就会打开QQ授权登录界面</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">回调处理</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">用回点击登录成功后会触发回调接口，这里我们可以对数据做一些操作，比如插入到自己的数据库中，或者要求绑定帐号等等。。</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">require_once(\"/API/qqConnectAPI.php\");</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$qc = new QC();</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$qc-&gt;qq_callback();&nbsp;&nbsp;&nbsp; //返回的验证值</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$openid = $qc-&gt;get_openid();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //qq分配的用户id</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$result = $qc-&gt;get_user_info(); //获取用户登录信息</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">---------------------</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">本文著作权归作者所有。</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">商业转载请联系作者获得授权，非商业转载请注明出处。</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">来源地址：https://www.php.cn/php-weizijiaocheng-459690.html</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">来源：php中文网(www.php.cn)</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&copy; 版权声明：转载请附上原文链接！</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'php,qq', '0', '0', '1578194027', '1602227277', '1', null, null, '用于ABB通用电机控制器的新软件，可更快，更轻松地配置设备', '1');
INSERT INTO `zz_news` VALUES ('26', '0', '27', '编译PHP扩展的方法 ', null, null, '托管数据中心和基础设施提供商Serverius选择ABB作为其两个主要站点的电力基础设施的翻新和扩展的战略合作伙伴。', '<p>\r\n	<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">构建PHP扩展</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">你已经知道如何去编译PHP本身，下一步我们将编译外部扩展。我们将讨论扩展的构建过程和可用的编译选项。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">载入共享扩展</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在前一个章节你已经知道，PHP 扩展既能构建成静态库也可以构建成动态库（.so）。大多数静态库是与 PHP 捆绑在一起编译的，动态库可以显式地传递参数 --enable-EXTNAME=shared 或 --with-EXTNAME=shared 给 ./configure。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">静态扩展默认是可用的，动态库需要增加 extension 或者 zend_extension 的 ini 配置。俩者可以是绝对路径，也可以是相对路径。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">例如编译 PHP 扩展用项目的配置项：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; ./configure --prefix=$HOME/myphp</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--enable-debug --enable-maintainer-zts</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--enable-opcache --with-gmp=shared</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这个例子中 opcache 扩展和 GMP 扩展都被编译为位于 modules/ 目录中的共享对象。 您可以通过更改extension_dir或通过传递绝对路径来加载：</span><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; sapi/cli/php -dzend_extension=`pwd`/modules/opcache.so</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-dextension=`pwd`/modules/gmp.so</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"># or</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; sapi/cli/php -dextension_dir=`pwd`/modules</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-dzend_extension=opcache.so -dextension=gmp.so</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在 make install 步骤中，这两个 .so 文件会被移进 PHP 安装的扩展目录，你使用 php-config --extension-dir 命令可能可以找到它。对于上面的构建选项，它将是 /home/myuser/myphp/lib/php/extensions/no-debug-non-zts-MODULE_API。这个值也是 extension_dir 配置选项的默认值，所以你无需明确地指定它，就可以直接加载进扩展：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp&gt; bin/php -dzend_extension=opcache.so -dextension=gmp.so</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这给我们留下了一个问题：你应该使用哪种机制？共享对象使你有一个基本的 PHP 二进制文件并通过 php.ini 加载其他扩展。发行版通过原始的 PHP 软件包和将扩展作为单独的软件包分发来利用此功能。另一方面，如果你编译自己的 PHP 二进制文件，则可能不需要这个，因为你已经知道需要哪些扩展。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">根据经验，你将对 PHP 本身捆绑的扩展使用静态链接，并将共享扩展用于其他地方。原因很简单，就像你稍后看到的，构建外部扩展为共享对象的更容易（或至少减少了侵入性）。另一个好处是你可以在不用重新构建 PHP 的情况下更新扩展。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">注意</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">如果你需要有关扩展和 Zend 扩展之间差异的信息，你可以查阅专门章节。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">从 PECL 安装扩展</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PECL，PHP 扩展社区库，提供了大量的 PHP 扩展。当扩展从主 PHP 发行版中删除，它们通常还在 PECL中。同样，现在与 PHP 捆绑一起的许多扩展以前都是 PECL 扩展。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">除非你在 PHP 构建的配置步骤指定 --without-pear，否则 make install 将PECL 作为 PEAR 的一部分下载并安装。你可以在 $PREFIX/bin 目录下找到 pecl 脚本。现在安装扩展很简单，就像运行 pecl install EXTNAME 一样，例如：</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp&gt; bin/pecl install apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">该命令将下载、编译并安装 APCu 扩展。结果会是 apcu.so 文件在扩展目录下，可以通过传递 extension=apcu.so 配置选项来加载此文件。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">虽然 pecl install 对终端用户非常方便，但扩展开发人员对它没什么兴趣。在下面，我们将会说明两种手动构建扩展的方式：通过将其导入主要的 PHP 源码树（允许静态链接）或通过外部构建（仅共享）。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">添加扩展到 PHP 源码树</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">第三方扩展和捆绑在 PHP 的扩展之间没有根本上的区别。因此你可以通过复制外部扩展到 PHP 源码树，并和通常的构建过程一样来构建。我们以APCu 作为例子来演示。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">首先，你要把扩展的源代码放到 PHP 源码树的 ext/EXTNAME 目录。如果扩展可通过 Git 获得，就像从 ext/ 中克隆仓库一样简单：</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src/ext&gt; git clone https://github.com/krakjoe/apcu.git</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">或者你也可以下载源码压缩包并解压它：</span><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; wget http://pecl.php.net/get/apcu-4.0.2.tgz</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; tar xzf apcu-4.0.2.tgz</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; mkdir ~/php-src/ext/apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; cp -r apcu-4.0.2/. ~/php-src/ext/apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">该扩展会包含一个 config.m4 文件，该文件指定autoconf文件使用的特定扩展构建指令。 为了将它们包含在 /configure 脚本，你必须再次运行 ./buildconf。为了确保配置文件已经重新生成，建议事先删除它：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; rm configure &amp;&amp; ./buildconf --force</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">现在你可以使用 ./config.nice 脚本将 APCu 添加到你的现有配置，或者从全新的配置行开始：</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; ./config.nice --enable-apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"># or</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; ./configure --enable-apcu # --other-options</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">最后，运行 make -jN 执行实际的构建。由于我们没有使用 --enable-apcu=shared，该扩展已经静态链接到 PHP 库，即不需要额外的操作即可使用它。显然，你也可以使用 make install 去安装最后的二进制文件。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">使用 phpize 构建扩展</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">还可以通过使用构建 PHP章节提及到的 phpize 脚本与 PHP 分开构建。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">phpize 的作用与 ./buildconf 用于 PHP 构建的脚本相似：第一，通过$PREFIX/lib/php/build 复制文件导入 PHP 构建系统到你的扩展中。这些文件是 acinclude.m4（PHP 的 M4宏）、phpize.m4（它会在你的扩展中重命名为 configure.in 并包含主要的构建说明）和 run-tests.php。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">然后 phpize 将调用 autoconf 生成 ./configure 文件，该文件可以自定义扩展构建。注意，没必要传递 --enable-apcu 给它，因为这是隐式假定的。相反，你应该使用 --with-php-config 指定你的 php-config 脚本路径：</span><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp/apcu-4.0.2&gt; ~/myphp/bin/phpize</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Configuring for:</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20121113</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Zend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20121113</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Zend Extension Api No:&nbsp;&nbsp; 220121113</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp/apcu-4.0.2&gt; ./configure --with-php-config=$HOME/myphp/bin/php-config</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp/apcu-4.0.2&gt; make -jN &amp;&amp; make install</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">当你构建扩展时，你应该总是指定 --with-php-config 选项（除非你只有一个全局的 PHP 安装），否则 ./configure 无法确定要构建的 PHP 版本和标志。指定 php-config 脚本也确保了 make install 将移动生成的 .so 文件（可以在 modules/ 目录找到）到正确的扩展目录。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">由于在 phpize 阶段还复制了 run-tests.php 文件，因此你可以使用 make test（或显示调用 run-tests）运行扩展测试。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">删除已编译对象的 make clean 也是可用的，并且允许你增量构建失败时强制重新构建扩展。 另外 phpize 提供了一个清理选项 phpize --clean。该命令将删除所有 phpize 导入的文件和通过 /configure 脚本生成的文件。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">显示关于扩展的信息</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP CLI 二进制文件提供了几个选项来显示关于扩展的信息。你已经知道 -m，该命令会列出所有已经下载的扩展。你可以利用它来确定扩展是否正确下载了：</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp/bin&gt; ./php -dextension=apcu.so -m | grep apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">还有其他一些以 --r 开头的参数都是具有 Reflection 功能。例如，你可以使用 --ri 去显示扩展的配置：</span><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp/bin&gt; ./php -dextension=apcu.so --ri apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">APCu Support =&gt; disabled</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Version =&gt; 4.0.2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">APCu Debugging =&gt; Disabled</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">MMAP Support =&gt; Enabled</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">MMAP File Mask =&gt;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Serialization Support =&gt; broken</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Revision =&gt; $Revision: 328290 $</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Build Date =&gt; Jan&nbsp; 1 2014 16:40:00</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Directive =&gt; Local Value =&gt; Master Value</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.enabled =&gt; On =&gt; On</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.shm_segments =&gt; 1 =&gt; 1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.shm_size =&gt; 32M =&gt; 32M</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.entries_hint =&gt; 4096 =&gt; 4096</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.gc_ttl =&gt; 3600 =&gt; 3600</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.ttl =&gt; 0 =&gt; 0</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"># ...</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">--re 参数列出扩展添加的所有初始设置、常数、函数和类：</span><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp/bin&gt; ./php -dextension=apcu.so --re apcu</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Extension [&nbsp;</span>extension #27 apcu version 4.0.2 ] {<br />\r\n<br />\r\n&nbsp;&nbsp;- INI {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Entry [ apc.enabled&nbsp;]<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Current = \'1\'<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Entry [ apc.shm_segments&nbsp;]<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Current = \'1\'<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;# ...<br />\r\n<br />\r\n&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;- Constants [1] {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Constant [ boolean APCU_APC_FULL_BC ] { 1 }<br />\r\n<br />\r\n&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;- Functions {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Function [&nbsp;function apcu_cache_info ] {<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Parameters [2] {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parameter #0 [&nbsp;$type ]<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parameter #1 [&nbsp;$limited ]<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;# ...<br />\r\n<br />\r\n&nbsp;&nbsp;}<br />\r\n<br />\r\n}<br />\r\n<br />\r\n--re 参数仅适用普通扩展，Zend 扩展使用 --rz 代替。 你可以在 opcache 上尝试：<br />\r\n<br />\r\n<br />\r\n~/myphp/bin&gt; ./php -dzend_extension=opcache.so --rz \"Zend OPcache\"<br />\r\n<br />\r\nZend Extension [ Zend OPcache 7.0.3-dev Copyright (c) 1999-2013 by Zend Technologies&nbsp;<http: www.zend.com=\"\" style=\"margin: 0px; padding: 0px;\">]<br />\r\n<br />\r\n如你所见， 该命令没有显示有用的信息。因为 opcache 同时注册了普通扩展和 Zend 扩展， 前者包含所有初始配置、常量和函数。因此在这个特殊的案例中，你仍然需要使用 --re。其他 Zend 扩展通过 --rz 可得到信息。<br />\r\n<br />\r\n扩展 API 兼容性<br />\r\n扩展对5个主要因素非常敏感。如果它们不合适，则该扩展将不会加载到 PHP中，并将无用：<br />\r\n<br />\r\nPHP Api 版本<br />\r\nZend 模块 Api 编号<br />\r\nZend 扩展 Api 编号<br />\r\n调试模式<br />\r\n线程安全<br />\r\nphpize 工具可让你回想它们的一些信息。所以，如果你在调试模式下构建 PHP，并试图加载和使用非调试模式构建的扩展，那它将无法工作。其他检查也一样。<br />\r\n<br />\r\nPHP Api 版本 是内部 API 版本号，Zend 模块 Api 编号 和 Zend 扩展 Api 编号 分别与 PHP 扩展和 Zend 扩展 API 有关。<br />\r\n<br />\r\n那些编号随后作为 C 宏传递给正在构建的扩展，以便它本身可以检查那些参数，并在 C 预处理器 #ifdef 的基础上采用不同的代码路径。当那些编号作为宏传给扩展代码，它们会被写在扩展结构中，以便你每次尝试在 PHP 二进制文件中加载该扩展时，都将对照 PHP 二进制文件本身的编号进行检查。如果不匹配，那么该扩展不会被加载，并显示一条错误信息。<br />\r\n<br />\r\n如果我们看一下扩展的 C 结构，它看起来像这样：<br />\r\n<br />\r\n<br />\r\n<br />\r\nzend_module_entry foo_module_entry = {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_HEADER,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;\"foo\",<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;foo_functions,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_MINIT(foo),<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_MSHUTDOWN(foo),<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;NULL,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;NULL,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_MINFO(foo),<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FOO_VERSION,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_PROPERTIES<br />\r\n<br />\r\n};<br />\r\n<br />\r\n至今，对我们来说有趣的是 STANDARD_MODULE_HEADER 宏。如果我们扩展它，我们可以看到：<br />\r\n<br />\r\n<br />\r\n<br />\r\n#define STANDARD_MODULE_HEADER_EX sizeof(zend_module_entry), ZEND_MODULE_API_NO, ZEND_DEBUG, USING_ZTS<br />\r\n<br />\r\n#define STANDARD_MODULE_HEADER STANDARD_MODULE_HEADER_EX, NULL, NULL<br />\r\n<br />\r\n注意 ZEND_MODULE_API_NO、ZEND_DEBUG、 USING_ZTS 是如何使用的。<br />\r\n<br />\r\n如果查看 PHP 扩展的默认目录，它应该像 no-debug-non-zts-20090626。如你所料，该目录由不同的部分组成：调试模式，其次是线程安全信息，然后是Zend 模块 Api 编号。所以默认情况下，PHP 试图帮你浏览扩展。<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n通常，当你成为一位内部开发人员或扩展开发人员，必须使用调试参数，并且如果必须处理 Windows 平台，线程也会显示出来。你可以针对那些参数的多种情况多次编译同一扩展。<br />\r\n记住，每次新的 PHP 主要/次要版本都会更改参数，比如 PHP Api 版本，这就是为什么你需要针对新的 PHP 版本重新编译的原因。<br />\r\n<br />\r\n<br />\r\n<br />\r\n&gt; /path/to/php70/bin/phpize -v<br />\r\n<br />\r\nConfiguring for:<br />\r\n<br />\r\nPHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20151012<br />\r\n<br />\r\nZend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20151012<br />\r\n<br />\r\nZend Extension Api No:&nbsp;&nbsp; 320151012<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&gt; /path/to/php71/bin/phpize -v<br />\r\n<br />\r\nConfiguring for:<br />\r\n<br />\r\nPHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20160303<br />\r\n<br />\r\nZend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20160303<br />\r\n<br />\r\nZend Extension Api No:&nbsp;&nbsp; 320160303<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&gt; /path/to/php56/bin/phpize -v<br />\r\n<br />\r\nConfiguring for:<br />\r\n<br />\r\nPHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20131106<br />\r\n<br />\r\nZend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20131226<br />\r\n<br />\r\nZend Extension Api No:&nbsp;&nbsp; 220131226<br />\r\n<br />\r\n注意<br />\r\n<br />\r\nZend 模块 Api 编号 本身是使用 年 月 日 的日期格式构建。这是 API 更改和并被标记的日期。Zend 扩展 Api 编号 是 Zend 版本，其次是 Zend 模块 Api 编号。<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n数字太多？是的，一个 API 编号绑定一个 PHP 版本，对任何人来说都足够了，并且可以简化对 PHP 的理解。不幸的是，除了 PHP 版本本身，还增加了3种不同的 API 编号。你应该找哪一个？答案是任何一个：当 PHP 版本演变时，它们三种同时演变。由于历史原因，我们有三种不同编号。<br />\r\n<br />\r\n但是，你是一位 C开发人员，不是吗？为什么不根据这些数字构建一个“兼容的”头文件？我们在我们的扩展中使用了类似这些：<br />\r\n<br />\r\n<br />\r\n<br />\r\n#include \"php.h\"<br />\r\n<br />\r\n#include \"Zend/zend_extensions.h\"<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define PHP_5_5_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 220121212<br />\r\n<br />\r\n#define PHP_5_6_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 220131226<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define PHP_7_0_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 320151012<br />\r\n<br />\r\n#define PHP_7_1_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 320160303<br />\r\n<br />\r\n#define PHP_7_2_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 320160731<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define IS_PHP_72&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_7_2_X_API_NO<br />\r\n<br />\r\n#define IS_AT_LEAST_PHP_72 ZEND_EXTENSION_API_NO &gt;= PHP_7_2_X_API_NO<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define IS_PHP_71&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_7_1_X_API_NO<br />\r\n<br />\r\n#define IS_AT_LEAST_PHP_71 ZEND_EXTENSION_API_NO &gt;= PHP_7_1_X_API_NO<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define IS_PHP_70&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_7_0_X_API_NO<br />\r\n<br />\r\n#define IS_AT_LEAST_PHP_70 ZEND_EXTENSION_API_NO &gt;= PHP_7_0_X_API_NO<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define IS_PHP_56&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_5_6_X_API_NO<br />\r\n<br />\r\n#define IS_AT_LEAST_PHP_56 (ZEND_EXTENSION_API_NO &gt;= PHP_5_6_X_API_NO &amp;&amp; ZEND_EXTENSION_API_NO &lt; PHP_7_0_X_API_NO)<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#define IS_PHP_55&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_5_5_X_API_NO<br />\r\n<br />\r\n#define IS_AT_LEAST_PHP_55 (ZEND_EXTENSION_API_NO &gt;= PHP_5_5_X_API_NO &amp;&amp; ZEND_EXTENSION_API_NO &lt; PHP_7_0_X_API_NO)<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n#if ZEND_EXTENSION_API_NO &gt;= PHP_7_0_X_API_NO<br />\r\n<br />\r\n#define IS_PHP_7 1<br />\r\n<br />\r\n#define IS_PHP_5 0<br />\r\n<br />\r\n#else<br />\r\n<br />\r\n#define IS_PHP_7 0<br />\r\n<br />\r\n#define IS_PHP_5 1<br />\r\n<br />\r\n#endif<br />\r\n<br />\r\n看见了？<br />\r\n<br />\r\n或者更简单（更好）的是使用 PHP_VERSION_ID ，这你可能更熟悉：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n#if PHP_VERSION_ID &gt;= 50600<br />\r\n<br />\r\n---------------------<br />\r\n本文著作权归作者所有。<br />\r\n商业转载请联系作者获得授权，非商业转载请注明出处。<br />\r\n来源地址：https://www.php.cn/php-weizijiaocheng-459724.html<br />\r\n来源：php中文网(www.php.cn)<br />\r\n&copy; 版权声明：转载请附上原文链接！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, '数据中心,abb', '0', '0', '1578194299', '1602227402', '1', null, null, 'ABB为荷兰托管数据中心的电气化提供动力', '1');
INSERT INTO `zz_news` VALUES ('15', '0', '30', 'tp 介绍', null, null, 'ABB电机是由瑞士制造的，因为ABB集团在瑞士苏黎世跻身全球500强企业之列。 ABB发明了许多产品和技术。 它们包括世界上第一个三相输电系统，世界上第一个自冷变压器，高压直流输电技术和第一个电动工业机器人，并带头使用它们。 ABB有广泛的产品线，包括全系列电力变压器和配电变压器。', '<p>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		ThinkPHP是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，是为了敏捷WEB应用开发和简化企业应用开发而诞生的。ThinkPHP从诞生以来一直秉承简洁实用的设计原则，在保持出色的性能和至简代码的同时，更注重易用性。遵循Apache2开源许可协议发布，意味着你可以免费使用ThinkPHP，甚至允许把你基于ThinkPHP开发的应用开源或商业产品发布/销售。\r\n	</p>\r\n	<blockquote class=\"default\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			<br />\r\n		</p>\r\n	</blockquote>\r\n	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			ThinkPHP6.0基于精简核心和统一用法两大原则在5.1的基础上对底层架构做了进一步的优化改进，并更加规范化。由于引入了一些新特性，ThinkPHP6.0运行环境要求PHP7.1+，不支持5.1的无缝升级（官方给出了<a href=\"https://www.kancloud.cn/manual/thinkphp6_0/1037654\">升级指导</a>用于项目的升级参考）。\r\n		</p>\r\n	</blockquote>\r\n	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">\r\n		<a id=\"_15\"></a>主要新特性\r\n	</h2>\r\n	<ul style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			采用PHP7强类型（严格模式）\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			支持更多的PSR规范\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			多应用支持\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			ORM组件独立\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			改进的中间件机制\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			更强大和易用的查询\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			全新的事件系统\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			支持容器invoke回调\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			模板引擎组件独立\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			内部功能中间件化\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			SESSION机制改进\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			缓存及日志支持多通道\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			引入Filesystem组件\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			对Swoole以及协程支持改进\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			对IDE更加友好\r\n		</li>\r\n		<li style=\"font-family:&quot;font-size:17px;\">\r\n			统一和精简大量用法\r\n		</li>\r\n	</ul>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'tp6,SESSION,严格模式', '0', '0', '1578129389', '1600412196', '1', null, null, '什么是abb电机', '1');
INSERT INTO `zz_news` VALUES ('14', '0', '30', 'tp6.0 安装', null, null, 'ThinkPHP6.0安装教程', '<p>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		ThinkPHP6.0的环境要求如下：\r\n	</p>\r\n	<blockquote class=\"info\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">\r\n		<ul>\r\n			<li style=\"font-family:&quot;font-size:17px;\">\r\n				PHP &gt;= 7.1.0\r\n			</li>\r\n		</ul>\r\n	</blockquote>\r\n	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			6.0版本开始，必须通过Composer方式安装和更新，所以你无法通过Git下载安装。\r\n		</p>\r\n	</blockquote>\r\n	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">\r\n		<a id=\"Composer_6\"></a>安装Composer\r\n	</h2>\r\n	<blockquote class=\"default\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			如果还没有安装&nbsp;Composer，在&nbsp;Linux&nbsp;和&nbsp;Mac OS X&nbsp;中可以运行如下命令：\r\n		</p>\r\n		<div class=\"ಠcopy-code-container\">\r\n<pre>curl <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>sS https<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>getcomposer<span class=\"token punctuation\" style=\"color:#999999;\">.</span>org<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>installer <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">|</span> php\r\nmv composer<span class=\"token punctuation\" style=\"color:#999999;\">.</span>phar <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>usr<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>local<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>bin<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>composer</pre>\r\n		</div>\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			在 Windows 中，你需要下载并运行&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\" target=\"_blank\">Composer-Setup.exe</a>。<br />\r\n如果遇到任何问题或者想更深入地学习 Composer，请参考Composer 文档（<a href=\"https://getcomposer.org/doc/\" target=\"_blank\">英文文档</a>，<a href=\"http://www.kancloud.cn/thinkphp/composer\" target=\"_blank\">中文文档</a>）。\r\n		</p>\r\n	</blockquote>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		由于众所周知的原因，国外的网站连接速度很慢。因此安装的时间可能会比较长，我们建议使用国内镜像（阿里云）。\r\n	</p>\r\n	<blockquote class=\"info\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			打开命令行窗口（windows用户）或控制台（Linux、Mac 用户）并执行如下命令：\r\n		</p>\r\n		<div class=\"ಠcopy-code-container\">\r\n<pre>composer config <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>g repo<span class=\"token punctuation\" style=\"color:#999999;\">.</span>packagist composer https<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>mirrors<span class=\"token punctuation\" style=\"color:#999999;\">.</span>aliyun<span class=\"token punctuation\" style=\"color:#999999;\">.</span>com<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>composer<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span> </pre>\r\n		</div>\r\n	</blockquote>\r\n	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">\r\n		<a id=\"_23\"></a>安装稳定版\r\n	</h2>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		如果你是第一次安装的话，在命令行下面，切换到你的WEB根目录下面并执行下面的命令：\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>composer create<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>project topthink<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>think tp</pre>\r\n	</div>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		这里的tp目录名你可以任意更改，这个目录就是我们后面会经常提到的应用根目录。\r\n	</p>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		如果你之前已经安装过，那么切换到你的<span style=\"font-weight:bolder;\">应用根目录</span>下面，然后执行下面的命令进行更新：\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>composer update topthink<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>framework</pre>\r\n	</div>\r\n	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			更新操作会删除thinkphp目录重新下载安装新版本，但不会影响app目录，因此不要在核心框架目录添加任何应用代码和类库。\r\n		</p>\r\n	</blockquote>\r\n	<blockquote class=\"info\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			安装和更新命令所在的目录是不同的，更新必须在你的应用根目录下面执行\r\n		</p>\r\n	</blockquote>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		如果出现错误提示，请根据提示操作或者参考<a href=\"http://www.kancloud.cn/thinkphp/composer\" target=\"_blank\">Composer中文文档</a>。\r\n	</p>\r\n	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">\r\n		<a id=\"_45\"></a>安装开发版\r\n	</h2>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		一般情况下，composer&nbsp;安装的是最新的稳定版本，不一定是最新版本，如果你需要安装实时更新的版本（适合学习过程），可以安装6.0.x-dev版本。\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>composer create<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>project topthink<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>think<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">=</span><span class=\"token number\" style=\"color:#990055;\">6.0</span><span class=\"token punctuation\" style=\"color:#999999;\">.</span>x<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>dev tp</pre>\r\n	</div>\r\n	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">\r\n		<a id=\"_53\"></a>开启调试模式\r\n	</h2>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		应用默认是部署模式，在开发阶段，可以修改环境变量APP_DEBUG开启调试模式，上线部署后切换到部署模式。\r\n	</p>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		本地开发的时候可以在应用根目录下面定义.env文件。\r\n	</p>\r\n	<blockquote class=\"default\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			通过create-project安装后在根目录会自带一个.example.env文件（环境变量示例），你可以直接更名为.env文件并根据你的要求进行修改，该示例文件已经开启调试模式\r\n		</p>\r\n	</blockquote>\r\n	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">\r\n		<a id=\"_61\"></a>测试运行\r\n	</h2>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		现在只需要做最后一步来验证是否正常运行。\r\n	</p>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		进入命令行下面，执行下面指令\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>php think run</pre>\r\n	</div>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		在浏览器中输入地址：\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>http<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>localhost<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token number\" style=\"color:#990055;\">8000</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span> </pre>\r\n	</div>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		会看到欢迎页面。恭喜你，现在已经完成ThinkPHP6.0的安装！\r\n	</p>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		如果你本地80端口没有被占用的话，也可以直接使用\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>php think run <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>p <span class=\"token number\" style=\"color:#990055;\">80</span> </pre>\r\n	</div>\r\n	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">\r\n		然后就可以直接访问：\r\n	</p>\r\n	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">\r\n<pre>http<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>localhost<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span> </pre>\r\n	</div>\r\n	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">\r\n		<p style=\"font-family:&quot;font-size:17px;\">\r\n			实际部署中，应该是绑定域名访问到public目录，确保其它目录不在WEB目录下面。\r\n		</p>\r\n	</blockquote>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/attachment/2020/05/13/20051313275340906.jpg', '', null, null, null, null, 'composer,PHP', '0', '0', '1578129256', '1600412262', '1', null, null, '直线电机的正向和反向控制的原理和作用！', '1');
INSERT INTO `zz_news` VALUES ('27', '0', '27', '小知识大学问的注册 PHP 函数  ', null, null, 'ABB已从瑞士火车制造商Stadler获得价值超过1.4亿美元的订单，为美国和一些欧洲国家的火车和机车提供最先进的牵引设备。这些订单已于2019年第二季度预订。', '<p>\r\n	<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"><span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP函数的注册和使用</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP扩展的主要目标是为用户注册新的PHP函数，PHP函数非常复杂，很难完全理解它们与Zend引擎密切相关的机制，但幸运的是， 我们在本章中不需要这些知识，因为PHP扩展机制提供了许多方法来抽象如此复杂的内容。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在扩展中注册并使用一个新的PHP函数是一个简单的步骤. 然而，要深刻理解整体情况，则要复杂得多。zend_function章节的第一步 可能会有所帮助.</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">显然，你需要掌握类型, 特别是 zendValues 和 内存管理. 当然, 了解你的钩子.</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">zend_function_entry 结构</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">不要和 zend_function 结构混淆，zend_function_entry 是用在扩展中针对引擎注册函数的。看这里：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">3</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">4</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">5</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">6</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">7</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">8</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">9</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">#define INTERNAL_FUNCTION_PARAMETERS zend_execute_data *execute_data, zval *return_value</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">typedef struct _zend_function_entry {</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *fname;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void (*handler)(INTERNAL_FUNCTION_PARAMETERS);</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_internal_arg_info *arg_info;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint32_t num_args;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint32_t flags;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">} zend_function_entry;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">你会发现该结构并不复杂，这就是声明和注册新功能所需要的。让我们一起详细介绍：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">函数的名字：fname。没什么好补充的，你知道它的用途对吧？只需注意是 const char * 类型。这不适用于引擎。此 fname是一个模型，引擎将会从 内部的 zend_string 创建。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">然后来看 handler。这是指向 C 代码的函数指针，它将会是函数的主体。这里，我们将使用宏来简化其声明（等等会看到）。进入此函数，我们能够解析函数接收的参数，并且生成一个返回值，就像任何 PHP 用户区的函数。注意，这个返回值作为参数传递到我们的处理程序。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">争论。arg_info 变量是关于声明我们的函数将接收的 API 参数。同样，这部分可能很难深入理解，但我们不需要理解太深，我们再次使用宏进行抽象和简化参数声明。你要知道的是，在这里你不需要声明任何参数即可使用该函数，但是我们强烈建议你这么做。我们将回到这里。参数是一组 arg_info，因此它的大小作为 num_args 传递。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">然后是 flags。在这章我们不详细说明它。这些是内部使用的，你可在 zend_function 章节了解详细信息。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">注册 PHP 函数</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">当加载扩展时，PHP 函数会被注册到 ZEND 引擎当中。一个扩展可以在扩展结构中声明一个函数向量。被扩展声明的函数被称为 核心 函数，与 用户 函数（在PHP用户中被声明和使用的函数）相反，它们在当前的请求结束时不会被注销：可以一直使用。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">提醒一下，以下是为了方便可读性对 PHP 扩展结构的简写</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">3</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">4</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">5</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">6</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">7</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">8</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">9</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">10</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">11</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">12</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">13</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">struct _zend_module_entry {</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned short size;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int zend_api;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned char zend_debug;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned char zts;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_ini_entry *ini_entry;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_module_dep *deps;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *name;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_function_entry *functions;&nbsp;&nbsp;&nbsp;&nbsp; /* 函数声明向量 */</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int (*module_startup_func)(INIT_FUNC_ARGS);</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int (*module_shutdown_func)(SHUTDOWN_FUNC_ARGS);</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;/* ... */</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">};</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">您将向函数向量传递一个已声明的函数向量。让我们一起来看一个简单的例子：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">3</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">4</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">5</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">6</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">7</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">8</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">9</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">10</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">11</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">12</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">13</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">14</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">15</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">16</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">17</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">18</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">19</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">20</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">21</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">22</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">23</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/* pib.c 头文件*/</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP_FUNCTION(fahrenheit_to_celsius)</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">}</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">static const zend_function_entry pib_functions[] =</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(fahrenheit_to_celsius, NULL)</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">};</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">zend_module_entry pib_module_entry = {</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_HEADER,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;\"pib\",</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;pib_functions,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;\"0.1\",</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_PROPERTIES</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">};</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">我们来试试一个简单的函数 fahrenheit_to_celsius() （名字告诉了我们它的作用）</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">通过使用 PHP_FUNCTION() 宏来定义一个函数。后者将传递它的参数并扩展成正确的结构。然后，我们把函数符号汇总并将其添加到 pib_functions 向量中。这就是通过 zend_module_entry 符号延伸的 zend_function_entry * 类型。在此向量中，我们通过 PHP_FE 宏添加我们的 PHP 函数。后者需要 PHP 函数名称，以及我们传递 NULL 值时的一个参数向量。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在 php_pib.h 头文件中，我们应该像 C 语言一样在这里声明我们的函数：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/* pib.h 头文件*/</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP_FUNCTION(fahrenheit_to_celsius);</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">如你所见，声明函数确实很容易。宏为我们干完了所有难活。以下是和上文相同的代码，但是却扩展了宏，因此你可以看下它们是如何运行的：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">3</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">4</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">5</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">6</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">7</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">8</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">9</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">10</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">11</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/* pib.c */</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">void zif_fahrenheit_to_celsius(zend_execute_data *execute_data, zval *return_value)</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">}</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">static const zend_function_entry pib_functions[] =</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;{ \"fahrenheit_to_celsius\", zif_fahrenheit_to_celsius, ((void *)0),</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(uint32_t) (sizeof(((void *)0))/sizeof(struct _zend_internal_arg_info)-1), 0 },</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">}</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">请注意 PHP_FUNCTION() 是如何以 zif_ 开头扩展为 C 符号的。‘zif’ 被添加到你的函数名称中，以防止PHP 及其模块在编译中造成符号名称冲突。因此，我们的 fahrenheit_to_celsius() PHP 函数使用了 zif_fahrenheit_to_celsius() 的处理程序。它几乎和每个 PHP 函数一样。如果你搜索 zif_var_dump，就可以阅读PHP var_dump() 的源码函数等。</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">声明函数参数</span><br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">到目前为止，如果 「你编译」 扩展并将其加载到PHP中，你可以看见函数呈现的反射机制：</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">3</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">4</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">5</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">6</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">7</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&gt; ~/php/bin/php -dextension=pib.so --re pib</span><br />\r\n<br />\r\n<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Extension [&nbsp;</span>extension #37 pib version 0.1 ] {<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;- Functions {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Function [&nbsp;function fahrenheit_to_celsius ] {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n}<br />\r\n<br />\r\n但是它缺少参数。如果我们发布一个 fahrenheit_to_celsius($fahrenheit) 函数签名，则需要一个强制参数。<br />\r\n<br />\r\n你必须了解，函数声明和函数内部的运行无关。这意味着即便没有声明参数，我们现在编写函数也可能会起作用。<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n声明参数虽然不是强制性的，但是我们强烈推荐使用。反射 API 可通过使用参数获取函数的信息。Zend 引擎也用到参数，尤其是当我们谈及引用传参或者返回引用的函数时。<br />\r\n<br />\r\n要声明参数，我们必须要熟悉 zend_internal_arg_info 结构：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\ntypedef struct _zend_internal_arg_info {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *name;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *class_name;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_uchar type_hint;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_uchar pass_by_reference;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool allow_null;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool is_variadic;<br />\r\n<br />\r\n} zend_internal_arg_info;<br />\r\n<br />\r\n没必要详细说明每个字段，但是想要理解参数却比这种单独结构复杂得多。幸运的是，我们再次为你提供了一些宏来抽象这艰巨的工作。<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\nZEND_BEGIN_ARG_INFO_EX(arginfo_fahrenheit_to_celsius, 0, 0, 1)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, fahrenheit)<br />\r\n<br />\r\nZEND_END_ARG_INFO()<br />\r\n<br />\r\n上面的代码详细的说明了如何创建参数，但当我们扩展宏时，我们会感到有些困难：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\nstatic const zend_internal_arg_info arginfo_fahrenheit_to_celsius[] = {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ (const char*)(zend_uintptr_t)(1), ((void *)0), 0, 0, 0, 0 },<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ \"fahrenheit\", ((void *)0), 0, 0, 0, 0 },<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;};<br />\r\n<br />\r\n正如我们所见，宏创建了一个 zend_internal_arg_info 结构。如果你阅读过这类宏的 API，那么对我们来说一切都变得清楚了：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n/* API only */<br />\r\n<br />\r\n#define ZEND_BEGIN_ARG_INFO_EX(name, _unused, return_reference, required_num_args)<br />\r\n<br />\r\n#define ZEND_ARG_INFO(pass_by_ref, name)<br />\r\n<br />\r\n#define ZEND_ARG_OBJ_INFO(pass_by_ref, name, classname, allow_null)<br />\r\n<br />\r\n#define ZEND_ARG_ARRAY_INFO(pass_by_ref, name, allow_null)<br />\r\n<br />\r\n#define ZEND_ARG_CALLABLE_INFO(pass_by_ref, name, allow_null)<br />\r\n<br />\r\n#define ZEND_ARG_TYPE_INFO(pass_by_ref, name, type_hint, allow_null)<br />\r\n<br />\r\n#define ZEND_ARG_VARIADIC_INFO(pass_by_ref, name)<br />\r\n<br />\r\n这一系列的宏可以让你处理每个用例。<br />\r\nThis bunch of macros allow you to deal with every use-case.<br />\r\n<br />\r\nZEND_BEGIN_ARG_INFO_EX() 允许你声明你的函数能接收多少个必要参数。它还允许你声明一个 &amp;return_by_ref() 函数。<br />\r\n那么你每个参数都需要 ZEND_ARG_***_INFO() 之一。使用它你可以判断参数是否为 &amp;$passed_by_ref 以及是否需要类型提示。<br />\r\n注意<br />\r\n<br />\r\n如果你不知道怎样去命名参数向量符号，则一种做法是使用 ‘arginfo_[function name]’ 模式。<br />\r\n<br />\r\n所以回到我们的 fahrenheit_to_celsius() 函数，我们这里申明一个简单的按值返回函数（非常经典的用例），其中一个参数称为 fahrenheit ，且未通过引用传递（又一次的传统用例）。<br />\r\n<br />\r\n这就创建了类型 zend_internal_arg_info[] (一个向量, 或一个数组, 都相同) 的 arginfo_fahrenheit_to_celsius 符号，现在我们必须要使用该符号回到函数声明中来添加给它一些参数。<br />\r\n<br />\r\n1<br />\r\n<br />\r\nPHP_FE(fahrenheit_to_celsius, arginfo_fahrenheit_to_celsius)<br />\r\n<br />\r\n至此我们完成了，现在反射可以看见参数了，并会告知引擎在引用不匹配的情况下该怎么做。太棒了！<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n还有其他宏。ZEND_BEGIN_ARG_WITH_RETURN_TYPE_INFO_EX() f.e. 你可以在 Zend/zend_api.h 的源代码中找到所有这些文件。<br />\r\n<br />\r\nC 语言的 PHP 函数结构和 API<br />\r\n好的。下面是一个 PHP 函数。你可以使用它，并用 PHP 语言声明它（用户区）：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\nfunction fahrenheit_to_celsius($fahrenheit)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;return 5/9 * ($fahrenheit - 32);<br />\r\n<br />\r\n}<br />\r\n<br />\r\n这是一个简单的函数，以便你可以理解它。这是用 C 编程时的样子：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\nPHP_FUNCTION(fahrenheit_to_celsius)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;/* code to go here */<br />\r\n<br />\r\n}<br />\r\n<br />\r\n宏展开后，将得到：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\nvoid zif_fahrenheit_to_celsius(zend_execute_data *execute_data, zval *return_value)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;/* code to go here */<br />\r\n<br />\r\n}<br />\r\n<br />\r\n休息一下，考虑一下主要差异。<br />\r\n<br />\r\n首先奇怪的是，在 C 中，该函数不会返回任何东西。那是一个 void 声明的函数，你不可以在这里返回任何东西。但是我们注意到我们接收了一个 zval *类型的return_value参数，看起来很不错。用 C 编写 PHP 函数时，你将得到一个指向 zval 的返回值 ，希望你们能玩一玩。这有更多关于 zval 的资源.<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n在 C 扩展中编写 PHP 函数时，你接收作为参数的返回值，并且你不会从 C 函数返回任何东西。<br />\r\n<br />\r\n好的，第一点解释了。第二点你可能已经猜到了：PHP 函数的参数在哪里？$fahreinheit在哪里？很难解释完全，事实上，这很难。<br />\r\n<br />\r\n但是我们不需要在这里了解细节。让我们解释下关键的概念：<br />\r\n<br />\r\n参数已经通过引擎推入堆栈中。它们都在内存的某个地方挨着堆放。<br />\r\n如果你的函数被调用，这意味着没有阻塞错误，因此你可以浏览参数堆栈，并读取运行时传递的参数。不仅是你声明的那些，还包括那些在调用函数时传递给函数的。引擎会为你处理一切。<br />\r\n为了读取参数，你需要一个函数或者宏，并且需要知道有多少参数已经推入堆栈中，以便知道什么时候应该停止读取它们。<br />\r\n一切都按照你接收的作为参数的zend_execute_data *execute_data。但是现在我们不详细说明。<br />\r\n解析参数：zend_parse_parameters()<br />\r\n要读取参数，欢迎使用 zend_parse_parameters() API (称为 ‘zpp’).<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n当在 C 扩展中编写 PHP 函数时，多亏了zend_parse_parameters() 函数和它的朋友，你接收到 PHP 函数的参数。<br />\r\n<br />\r\nzend_parse_parameters() 是一个函数，它将为你到 Zend 引擎的堆栈中读取参数。你要告诉它要读取多少个参数，以及想要它为你提供哪种类型。该函数将根据 PHP 类型转换规则（如果需要，并且有可能的话）将参数转换为你要的类型。如果你需要一个整型，但给了一个浮点型，如果没有严格的类型提示规则被阻塞，则引擎会将浮点型转换为整型，然后给你。<br />\r\n<br />\r\n让我们来看看这个函数：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\nPHP_FUNCTION(fahrenheit_to_celsius)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;double f;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d\", &amp;f) == FAILURE) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;/* continue */<br />\r\n<br />\r\n}<br />\r\n<br />\r\n我们希望在 f 变量上得到一个 double 类型。然后我们调用zend_parse_parameters()。<br />\r\n<br />\r\n第一个参数是运行时已给定的参数数目。ZEND_NUM_ARGS() 是一个宏，它会告诉我们，然后我们用它去告知 zpp() 需要读取多少个参数。<br />\r\n<br />\r\n然后我们传递一个const char *类型的 “d” 字符串。在这里，要求你为每一个接收的参数写一个字母，除了一些未在这里讲述的特殊情况。一个简单的 “d” 表示 “如果需要的话，我想要第一个接收的参数转换为 float (double)”。<br />\r\n<br />\r\n然后，在该字符串之后传递 C 真正需要的参数，以满足第二个参数。一个 “d” 表示 “一个 double”，然后你现在传递 double 的 地址，引擎将会填充其值。<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n你总是将一个指针传递给要填充的数据。<br />\r\n<br />\r\n你可以在 PHP 源代码的 README.PARAMETER_PARSING_API文件中找到关于 zpp() 的字符串格式的最新帮助。仔细阅读，因为这是你可能搞错并造成程序崩溃的一步。始终检查你的参数，始终根据你提供的格式字符串传递相同数量的参数变量，以及你要求的类型相同。要合乎逻辑。<br />\r\n<br />\r\n同样注意一下参数解析的正常过程。zend_parse_parameters()函数在成功时应返回 SUCCESS或者在失败时应返回FAILURE。失败可能表示你没有使用ZEND_NUM_ARGS()值，而是手动提供一个值（坏主意）。或者在参数解析时做错了什么。如果是这样，那么是时候 return 了，终止当前函数（你应该从 C 函数中返回 void，所以只要 return）。<br />\r\n<br />\r\n到目前为止，我们接收了一个 double。让我们执行数学运算并返回结果：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\n15<br />\r\n<br />\r\nstatic double php_fahrenheit_to_celsius(double f)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;return ((double)5/9) * (double)(f - 32);<br />\r\n<br />\r\n}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nPHP_FUNCTION(fahrenheit_to_celsius)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;double f;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d\", &amp;f) == FAILURE) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;RETURN_DOUBLE(php_fahrenheit_to_celsius(f));<br />\r\n<br />\r\n}<br />\r\n<br />\r\n如你所知的zval 的工作原理，返回值对你来说应该很容易。你必须填写 return_value。<br />\r\n<br />\r\n一些 RETURN_***() 宏以及一些RETVAL_***()宏都是专门用来这么做的。这两个仅设置return_value zval 的类型和值，但是RETURN_***()宏后面会跟着一个从当前函数返回的 Creturn。<br />\r\n<br />\r\n或者，API 提供了一系列去处理和解析参数的宏。如果你对 python 样式说明符困惑的话，那么它更具有可读性。<br />\r\n<br />\r\n你需要使用以下宏来开始和结束函数参数解析：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\nZEND_PARSE_PARAMETERS_START(min_argument_count, max_argument_count) /* 需要两个参数 */<br />\r\n<br />\r\n/* 这里我们将使用参数列表 */<br />\r\n<br />\r\nZEND_PARSE_PARAMETERS_END();<br />\r\n<br />\r\n可用的参数宏可以列出如下：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\n15<br />\r\n<br />\r\n16<br />\r\n<br />\r\n17<br />\r\n<br />\r\n18<br />\r\n<br />\r\n19<br />\r\n<br />\r\nZ_PARAM_ARRAY()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"a\" */<br />\r\n<br />\r\nZ_PARAM_ARRAY_OR_OBJECT()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"A\" */<br />\r\n<br />\r\nZ_PARAM_BOOL()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"b\" */<br />\r\n<br />\r\nZ_PARAM_CLASS()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"C\" */<br />\r\n<br />\r\nZ_PARAM_DOUBLE()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"d\" */<br />\r\n<br />\r\nZ_PARAM_FUNC()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"f\" */<br />\r\n<br />\r\nZ_PARAM_ARRAY_HT()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"h\" */<br />\r\n<br />\r\nZ_PARAM_ARRAY_OR_OBJECT_HT()&nbsp;&nbsp; /* old \"H\" */<br />\r\n<br />\r\nZ_PARAM_LONG()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"l\" */<br />\r\n<br />\r\nZ_PARAM_STRICT_LONG()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"L\" */<br />\r\n<br />\r\nZ_PARAM_OBJECT()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"o\" */<br />\r\n<br />\r\nZ_PARAM_OBJECT_OF_CLASS()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"O\" */<br />\r\n<br />\r\nZ_PARAM_PATH()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"p\" */<br />\r\n<br />\r\nZ_PARAM_PATH_STR()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"P\" */<br />\r\n<br />\r\nZ_PARAM_RESOURCE()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"r\" */<br />\r\n<br />\r\nZ_PARAM_STRING()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"s\" */<br />\r\n<br />\r\nZ_PARAM_STR()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"S\" */<br />\r\n<br />\r\nZ_PARAM_ZVAL()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"z\" */<br />\r\n<br />\r\nZ_PARAM_VARIADIC()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"+\" and \"*\" */<br />\r\n<br />\r\n为了添加一个参数作为可选参数，我们使用以下宏：<br />\r\n<br />\r\n1<br />\r\n<br />\r\nZ_PARAM_OPTIONAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"|\" */<br />\r\n<br />\r\n这是基于宏的参数解析样式的示例：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\nPHP_FUNCTION(fahrenheit_to_celsius)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;double f;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_PARSE_PARAMETERS_START(1, 1)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Z_PARAM_DOUBLE(f);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_PARSE_PARAMETERS_END();<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;RETURN_DOUBLE(php_fahrenheit_to_celsius(f));<br />\r\n<br />\r\n}<br />\r\n<br />\r\n添加测试<br />\r\n如果你已阅读有关测试的章节(看使用 .phpt 文件测试)，现在你应该编写一个简单的例子：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n--TEST--<br />\r\n<br />\r\nTest fahrenheit_to_celsius<br />\r\n<br />\r\n--SKIPIF--<br />\r\n<br />\r\n<br />\r\n<br />\r\n--FILE--<br />\r\n<br />\r\n<br />\r\nprintf(\"%.2f\", fahrenheit_to_celsius(70));<br />\r\n<br />\r\n?&gt;<br />\r\n<br />\r\n--EXPECTF--<br />\r\n<br />\r\n21.11<br />\r\n<br />\r\n并启动make test<br />\r\n<br />\r\n玩转常量<br />\r\n让我们来看一个高级的例子。我们来添加相反的函数：celsius_to_fahrenheit($celsius):<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\n15<br />\r\n<br />\r\n16<br />\r\n<br />\r\n17<br />\r\n<br />\r\n18<br />\r\n<br />\r\n19<br />\r\n<br />\r\n20<br />\r\n<br />\r\n21<br />\r\n<br />\r\n22<br />\r\n<br />\r\n23<br />\r\n<br />\r\n24<br />\r\n<br />\r\n25<br />\r\n<br />\r\n26<br />\r\n<br />\r\nZEND_BEGIN_ARG_INFO_EX(arginfo_celsius_to_fahrenheit, 0, 0, 1)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, celsius)<br />\r\n<br />\r\nZEND_END_ARG_INFO();<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nstatic double php_celsius_to_fahrenheit(double c)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;return (((double)9/5) * c) + 32 ;<br />\r\n<br />\r\n}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nPHP_FUNCTION(celsius_to_fahrenheit)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;double c;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d\", &amp;c) == FAILURE) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;RETURN_DOUBLE(php_celsius_to_fahrenheit(c));<br />\r\n<br />\r\n}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nstatic const zend_function_entry pib_functions[] =<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(fahrenheit_to_celsius, arginfo_fahrenheit_to_celsius) /* Done above */<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(celsius_to_fahrenheit,arginfo_celsius_to_fahrenheit) /* just added */<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE_END<br />\r\n<br />\r\n};<br />\r\n<br />\r\n现在是一个更复杂的用例，在将它作为 C 扩展实现之前，在 PHP 中展示它：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\n15<br />\r\n<br />\r\n16<br />\r\n<br />\r\n17<br />\r\n<br />\r\nconst TEMP_CONVERTER_TO_CELSIUS&nbsp;&nbsp;&nbsp;&nbsp; = 1;<br />\r\n<br />\r\nconst TEMP_CONVERTER_TO_FAHREINHEIT = 2;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nfunction temperature_converter($temp, $type = TEMP_CONVERTER_TO_CELSIUS)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;switch ($type) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_CELSIUS:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return sprintf(\"%.2f degrees fahrenheit gives %.2f degrees celsius\", $temp,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fahrenheit_to_celsius($temp));<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_FAHREINHEIT:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return sprintf(\"%.2f degrees celsius gives %.2f degrees fahrenheit, $temp,<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;celsius_to_fahrenheit($temp));<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;trigger_error(\"Invalid mode provided, accepted values are 1 or 2\", E_USER_WARNING);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n}<br />\r\n<br />\r\n这个例子有助于我们介绍常量。<br />\r\n<br />\r\n常量在扩展中很容易管理，就像它们在用户区一样。常量通常是持久性的，意味着它们应该在请求之间保持其值不变。如果你知道 PHP 的生命周期，则应该猜到 MINIT()是向引擎注册常量的正确阶段。<br />\r\n<br />\r\n在内部，这有个常量，一个zend_constant 结构：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\ntypedef struct _zend_constant {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;zval value;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;zend_string *name;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;int flags;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;int module_number;<br />\r\n<br />\r\n} zend_constant;<br />\r\n<br />\r\n真的是一个简单的结构（如果你深入了解常量是如何管理到引擎中，那可能会是一场噩梦）。你声明了name，value，一些flags（不是很多），并且module_number自动设置为你的扩展编号（不用注意它）。<br />\r\n<br />\r\n要注册常量，同样的，这一点都不难，一堆宏可以帮你完成：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n#define TEMP_CONVERTER_TO_FAHRENHEIT 2<br />\r\n<br />\r\n#define TEMP_CONVERTER_TO_CELSIUS 1<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nPHP_MINIT_FUNCTION(pib)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;REGISTER_LONG_CONSTANT(\"TEMP_CONVERTER_TO_CELSIUS\", TEMP_CONVERTER_TO_CELSIUS, CONST_CS|CONST_PERSISTENT);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;REGISTER_LONG_CONSTANT(\"TEMP_CONVERTER_TO_FAHRENHEIT\", TEMP_CONVERTER_TO_FAHRENHEIT, CONST_CS|CONST_PERSISTENT);<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;return SUCCESS;<br />\r\n<br />\r\n}<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n给出 C 宏的 PHP 常量值是一个很好的实践。事情变得容易了，这就是我们做的。<br />\r\n<br />\r\n根据你的常量类型，你将使用 REGISTER_LONG_CONSTANT()、 REGISTER_DOUBLE_CONSTANT()等等。API 和宏位于 Zend/zend_constants.h中。<br />\r\n<br />\r\nflag 在CONST_CS （case-sensitive constant 大小写敏感常量，我们想要的）和CONST_PERSISTENT（持久性常量，在请求中也是我们想要的）之间是混合的 OR 操作。<br />\r\n<br />\r\n现在在 C 中的temperature_converter($temp, $type = TEMP_CONVERTER_TO_CELSIUS)函数：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\nZEND_BEGIN_ARG_INFO_EX(arginfo_temperature_converter, 0, 0, 1)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, temperature)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, mode)<br />\r\n<br />\r\nZEND_END_ARG_INFO();<br />\r\n<br />\r\n我们得到了一个必须的参数，两个中的一个。那就是我们声明的。其默认值不是一个参数声明可以解决的，那将在一秒钟内完成。<br />\r\n<br />\r\n然后我们将我们的新函数添加到函数注册向量：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\nstatic const zend_function_entry pib_functions[] =<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(fahrenheit_to_celsius,arginfo_fahrenheit_to_celsius) /* seen above */<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(celsius_to_fahrenheit,arginfo_celsius_to_fahrenheit) /* seen above */<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(temperature_converter, arginfo_temperature_converter) /* our new function */<br />\r\n<br />\r\n}<br />\r\n<br />\r\n函数主体：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\n15<br />\r\n<br />\r\n16<br />\r\n<br />\r\n17<br />\r\n<br />\r\n18<br />\r\n<br />\r\n19<br />\r\n<br />\r\n20<br />\r\n<br />\r\n21<br />\r\n<br />\r\n22<br />\r\n<br />\r\nPHP_FUNCTION(temperature_converter)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;double t;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;zend_long mode = TEMP_CONVERTER_TO_CELSIUS;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;zend_string *result;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d|l\", &amp;t, &amp;mode) == FAILURE) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;switch (mode)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_CELSIUS:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result = strpprintf(0, \"%.2f degrees fahrenheit gives %.2f degrees celsius\", t, php_fahrenheit_to_celsius(t));<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETURN_STR(result);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_FAHRENHEIT:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result = strpprintf(0, \"%.2f degrees celsius gives %.2f degrees fahrenheit\", t, php_celsius_to_fahrenheit(t));<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETURN_STR(result);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;php_error(E_WARNING, \"Invalid mode provided, accepted values are 1 or 2\");<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n}<br />\r\n<br />\r\n记得好好看 README.PARAMETER_PARSING_API。它不是一个很难的 API，你必须熟悉它。<br />\r\n<br />\r\n我们使用 “d|l” 作为 zend_parse_parameters()的参数。一个 double、或（管道“|”）、一个 long。注意，如果在运行时不提供可选参数（提醒一下，ZEND_NUM_ARGS()是什么），则 &amp;mode不会被 zpp() 触及。这就是为什么我们提供了一个TEMP_CONVERTER_TO_CELSIUS默认值给该变量。<br />\r\n<br />\r\n然后我们使用 strpprintf() 去构建一个 zend_string，并且使用 RETURN_STR() 返回它到 return_value zval。<br />\r\n<br />\r\n注意<br />\r\n<br />\r\nstrpprintf() 和它的朋友们在打印函数章节有解释过。<br />\r\n<br />\r\n使用 Hashtable (PHP 数组)<br />\r\n现在让我们来玩一下PHP 数组并设计：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\nfunction multiple_fahrenheit_to_celsius(array $temperatures)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;foreach ($temperatures as $temp) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$return[] = fahreinheit_to_celsius($temp);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;return $return;<br />\r\n<br />\r\n}<br />\r\n<br />\r\n所以在 C 语言实现的时候，我们需要zend_parse_parameters()并请求一个数组，遍历它，进行数学运算，并将结果作为数组添加到 return_value：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\n15<br />\r\n<br />\r\n16<br />\r\n<br />\r\n17<br />\r\n<br />\r\n18<br />\r\n<br />\r\n19<br />\r\n<br />\r\n20<br />\r\n<br />\r\n21<br />\r\n<br />\r\n22<br />\r\n<br />\r\n23<br />\r\n<br />\r\n24<br />\r\n<br />\r\n25<br />\r\n<br />\r\n26<br />\r\n<br />\r\n27<br />\r\n<br />\r\n28<br />\r\n<br />\r\n29<br />\r\n<br />\r\n30<br />\r\n<br />\r\n31<br />\r\n<br />\r\n32<br />\r\n<br />\r\nZEND_BEGIN_ARG_INFO_EX(arginfo_multiple_fahrenheit_to_celsius, 0, 0, 1)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_ARRAY_INFO(0, temperatures, 0)<br />\r\n<br />\r\nZEND_END_ARG_INFO();<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nstatic const zend_function_entry pib_functions[] =<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* ... */<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(multiple_fahrenheit_to_celsius, arginfo_multiple_fahrenheit_to_celsius)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE_END<br />\r\n<br />\r\n};<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\nPHP_FUNCTION(multiple_fahrenheit_to_celsius)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;HashTable *temperatures;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;zval *data;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"h\", &amp;temperatures) == FAILURE) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_hash_num_elements(temperatures) == 0) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;array_init_size(return_value, zend_hash_num_elements(temperatures));<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_HASH_FOREACH_VAL(temperatures, data)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zval dup;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZVAL_COPY_VALUE(&amp;dup, data);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;convert_to_double(&amp;dup);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;add_next_index_double(return_value, php_fahrenheit_to_celsius(Z_DVAL(dup)));<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_HASH_FOREACH_END();<br />\r\n<br />\r\n}<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n你需要知道 Hashtable 的工作原理，并且必读 zval 章节<br />\r\n<br />\r\n在这里，C 语言那部分将更快，因为不需要在 C 循环中调用 PHP 函数，但是一个静态（可能由编辑器内联的）函数，它的运行速度快了几个数量级，并且运行低级 CPU 指令所需的时间也更少。这并不是说这个小小的演示函数在代码性能方面需要如此多的关注，只要记住为什么我们有时会使用 C 语言代替 PHP。<br />\r\n<br />\r\n管理引用<br />\r\n现在让我们开始玩 PHP 引用。您已经从 zval 章节 了解到引用是在引擎中使用的一种特殊技巧。作为提醒，引用(我们指的是&amp;$php_reference)是分配给 zval的，存储在 zval 的容器中。<br />\r\n<br />\r\n所以，只要记住引用是什么以及它们的设计目的，就不难将它们处理成 PHP 函数。<br />\r\n<br />\r\n如果你的函数接受一个参数作为引用，你必须在参数签名中声明，并从你的 zend_parse_parameter() 调用中传递一个引用。<br />\r\n<br />\r\n让我们像往常一样，首先使用 PHP 示例：因此，现在C中，首先我们必须更改 arg_info：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\nZEND_BEGIN_ARG_INFO_EX(arginfo_fahrenheit_to_celsius, 0, 0, 1)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(1, fahrenheit)<br />\r\n<br />\r\nZEND_END_ARG_INFO();<br />\r\n<br />\r\n\" 1 \"，中传递的 ZEND_ARG_INFO() 宏告诉引擎必须通过引用传递参数。<br />\r\n<br />\r\n然后，当我们接收到参数时，我们使用 z 参数类型，以告诉我们希望将它作为一个 zval 给出。当我们向引擎提示它应该向我们传递一个引用这一事实时，我们将获得对该 zval 的引用，也就是它的类型为is_reference时，我们只需要解引用它(即获取存储到 zval中的 zval)，并按原样修改它，因为引用的预期行为是您必须修改引用所携带的值：<br />\r\n<br />\r\n1<br />\r\n<br />\r\n2<br />\r\n<br />\r\n3<br />\r\n<br />\r\n4<br />\r\n<br />\r\n5<br />\r\n<br />\r\n6<br />\r\n<br />\r\n7<br />\r\n<br />\r\n8<br />\r\n<br />\r\n9<br />\r\n<br />\r\n10<br />\r\n<br />\r\n11<br />\r\n<br />\r\n12<br />\r\n<br />\r\n13<br />\r\n<br />\r\n14<br />\r\n<br />\r\nPHP_FUNCTION(fahrenheit_to_celsius)<br />\r\n<br />\r\n{<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;double result;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;zval *param;<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"z\", ¶m) == FAILURE) {<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZVAL_DEREF(param);<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;convert_to_double(param);<br />\r\n<br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;ZVAL_DOUBLE(param, php_fahrenheit_to_celsius(Z_DVAL_P(param)));<br />\r\n<br />\r\n}<br />\r\n<br />\r\n完成。<br />\r\n<br />\r\n注意<br />\r\n<br />\r\n默认 return_value 值为 NULL。如果我们不碰它，函数将返回PHP的 NULL。<br />\r\n<br />\r\n</span>\r\n</p>', '/attachment/2020/09/18/20091806205057792.jpg', '', null, null, null, null, '11,abb', '0', '0', '1578194445', '1600413095', '0', null, null, 'ABB赢得牵引设备订单，以扩大美国和欧洲的铁路车队', '1');

-- ----------------------------
-- Table structure for zz_order
-- ----------------------------
DROP TABLE IF EXISTS `zz_order`;
CREATE TABLE `zz_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `good_amount` decimal(10,0) DEFAULT NULL COMMENT '商品金额',
  `express_amount` decimal(10,0) DEFAULT NULL COMMENT '快递费',
  `express_id` int(11) DEFAULT NULL COMMENT '快退公司',
  `express_no` varchar(20) DEFAULT NULL COMMENT '快递单号',
  `discount_amount` decimal(10,0) DEFAULT NULL COMMENT '优惠金额',
  `discount_id` int(11) DEFAULT NULL,
  `realy_amount` decimal(10,0) DEFAULT NULL COMMENT '实付金额',
  `refound_amout` decimal(10,0) DEFAULT NULL COMMENT '退款金额',
  `remart` varchar(255) DEFAULT NULL COMMENT '备注',
  `collect_money_name` varchar(255) DEFAULT NULL COMMENT '收款人',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址',
  `order_no` varchar(128) DEFAULT NULL COMMENT '订单号',
  `pay_type` tinyint(1) DEFAULT NULL COMMENT '支付类型',
  `pay_no` varchar(255) DEFAULT NULL COMMENT '支付单号',
  `order_status` tinyint(1) DEFAULT NULL COMMENT '订单 步骤',
  `status` tinyint(1) DEFAULT NULL COMMENT '订单状态',
  `pay_at` int(11) DEFAULT NULL COMMENT '支付时间',
  `confirm_at` int(11) DEFAULT NULL COMMENT '确认时间',
  `ship_at` int(11) DEFAULT NULL COMMENT '发货时间',
  `receipt_at` int(11) DEFAULT NULL COMMENT '收货时间',
  `finished_at` int(11) DEFAULT NULL COMMENT '完成时间',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `serviced_at` int(11) DEFAULT NULL COMMENT '发起售后时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_order
-- ----------------------------

-- ----------------------------
-- Table structure for zz_param
-- ----------------------------
DROP TABLE IF EXISTS `zz_param`;
CREATE TABLE `zz_param` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `order_by` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `type` tinyint(1) NOT NULL COMMENT '类别',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提示',
  `value` text COLLATE utf8_unicode_ci COMMENT '内容',
  `input_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'input类别',
  `input_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'input 列表内容',
  `width` smallint(4) DEFAULT NULL COMMENT '宽度',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='参数表';

-- ----------------------------
-- Records of zz_param
-- ----------------------------
INSERT INTO `zz_param` VALUES ('1', '50', '2', '手机号', 'company_mobile', '', '138888888881', '', null, '127', '1', null, null);
INSERT INTO `zz_param` VALUES ('2', '10', '2', '联系地址', 'company_address', null, '浙江省台州市玉环县龙溪镇', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('3', '30', '2', '邮箱', 'company_email', null, 'vip@spuwansu.com1', '', null, null, '1', null, null);
INSERT INTO `zz_param` VALUES ('4', '80', '2', '百度地图坐标', 'company_mappoint', null, '121.297804, 31.3385591', '', null, null, '1', null, null);
INSERT INTO `zz_param` VALUES ('5', '20', '2', '联 系 人', 'company_contact_person', null, '1', '', null, '127', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('7', '40', '2', '咨询热线', 'company_service', null, '0576-874966331', '', null, '127', '1', null, null);
INSERT INTO `zz_param` VALUES ('9', '70', '2', '工作结束时间', 'company_work_end', null, '18:0011', '', null, null, '1', null, null);
INSERT INTO `zz_param` VALUES ('10', '60', '2', '工作开始时间', 'company_work_start', null, '08:301', '', null, null, '1', null, null);
INSERT INTO `zz_param` VALUES ('11', '10', '4', '发件人地址', 'mail_from_address', null, '2835152688@qq.com', '', null, '400', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('12', '30', '4', '发件人', 'mail_from_name', null, 'zsz', '', null, '200', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('13', '40', '4', '服务器地址', 'mail_host', null, 'smtp.qq.com', '', null, '200', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('14', '50', '4', '密码', 'mail_password', null, 'vgqqprqbklnfdhbh', 'password', null, '200', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('15', '60', '4', '服务器端口', 'mail_port', null, '465', '', null, '50', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('16', '70', '4', 'SSL链接', 'mail_ssl', null, '1', 'radio', 'a:2:{i:1;s:3:\"是\";i:0;s:3:\"否\";}', '0', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('17', '20', '4', '收件邮箱', 'mail_to_address', '多个邮箱请使用;分隔', '2143018962@qq.com', '', null, '400', '1', '1553254615', '1');
INSERT INTO `zz_param` VALUES ('18', '120', '2', '版权信息', 'site_copyright', '', '1', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('19', '170', '2', 'SEO Description', 'site_description', null, '1', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('20', '110', '2', '站点地址', 'site_domain', null, 'http://www.zszu.xyz', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('21', '130', '2', '网站备案号', 'site_icp', null, '豫ICP20016838号-1', '', null, '300', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('22', '160', '2', 'SEO Keywords', 'site_keywords', null, '1', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('23', '100', '2', '站点名称', 'site_name', null, 'yii2-advance', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('24', '150', '2', 'SEO Title', 'site_title', null, '1', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('25', '20', '6', '轮播图尺寸', 'system_slides_cover', '', '1920*778', '', null, '150', '1', null, null);
INSERT INTO `zz_param` VALUES ('29', '20', '1', '系统关闭提示', 'site_info', null, '抱歉！该站点已经被管理员停止运行，请联系管理员了解详情！', '', null, '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('40', '10', '1', '系统状态', 'site_status', null, '1', 'radio', 'a:2:{i:1;s:6:\"开启\";i:0;s:6:\"关闭\";}', '0', '1', '1550195795', '1');
INSERT INTO `zz_param` VALUES ('68', '90', '2', '地图层级', 'company_appoint', null, '151', '', null, null, '1', null, null);
INSERT INTO `zz_param` VALUES ('75', '140', '2', 'ICP备案号', 'site_icp_two', null, '1', '', null, '300', '1', null, null);
INSERT INTO `zz_param` VALUES ('77', '10', '6', '图片裁切设置', 'system_images_crop', null, '0', 'radio', 'a:2:{i:1;s:12:\"开启裁切\";i:0;s:12:\"关闭裁切\";}', null, '1', null, null);
INSERT INTO `zz_param` VALUES ('78', '190', '2', '网站服务器类型', 'site_host_type', '', '0', 'radio', 'a:2:{i:1;s:9:\"服务器\";i:0;s:12:\"虚拟主机\";}', null, '0', null, null);
INSERT INTO `zz_param` VALUES ('79', '200', '2', '虚拟主机大小', 'site_host_size', '单位为M，更改此配置后请更新缓存。', '2000', '', null, '100', '0', null, null);
INSERT INTO `zz_param` VALUES ('80', '100', '2', '图片', 'cover', null, '', 'file', null, null, '1', null, null);

-- ----------------------------
-- Table structure for zz_region
-- ----------------------------
DROP TABLE IF EXISTS `zz_region`;
CREATE TABLE `zz_region` (
  `id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上级编号',
  `level` tinyint(3) DEFAULT '1' COMMENT '层级',
  `order_by` int(11) DEFAULT '100' COMMENT '排序',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `count_sub` int(11) DEFAULT '0' COMMENT '子类数',
  `count_item` int(11) DEFAULT '0' COMMENT '项目数',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zz_region
-- ----------------------------
INSERT INTO `zz_region` VALUES ('11', null, '1', '0', '北京市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1101', '11', '2', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110101', '1101', '3', '0', '东城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110102', '1101', '3', '0', '西城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110105', '1101', '3', '0', '朝阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110106', '1101', '3', '0', '丰台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110107', '1101', '3', '0', '石景山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110108', '1101', '3', '0', '海淀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110109', '1101', '3', '0', '门头沟区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110111', '1101', '3', '0', '房山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110112', '1101', '3', '0', '通州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110113', '1101', '3', '0', '顺义区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110114', '1101', '3', '0', '昌平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110115', '1101', '3', '0', '大兴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110116', '1101', '3', '0', '怀柔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110117', '1101', '3', '0', '平谷区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110118', '1101', '3', '0', '密云区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('110119', '1101', '3', '0', '延庆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('12', null, '1', '0', '天津市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1201', '12', '2', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120101', '1201', '3', '0', '和平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120102', '1201', '3', '0', '河东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120103', '1201', '3', '0', '河西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120104', '1201', '3', '0', '南开区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120105', '1201', '3', '0', '河北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120106', '1201', '3', '0', '红桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120110', '1201', '3', '0', '东丽区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120111', '1201', '3', '0', '西青区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120112', '1201', '3', '0', '津南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120113', '1201', '3', '0', '北辰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120114', '1201', '3', '0', '武清区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120115', '1201', '3', '0', '宝坻区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120116', '1201', '3', '0', '滨海新区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120117', '1201', '3', '0', '宁河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120118', '1201', '3', '0', '静海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('120119', '1201', '3', '0', '蓟州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('13', null, '1', '0', '河北省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1301', '13', '2', '0', '石家庄市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130101', '1301', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130102', '1301', '3', '0', '长安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130104', '1301', '3', '0', '桥西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130105', '1301', '3', '0', '新华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130107', '1301', '3', '0', '井陉矿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130108', '1301', '3', '0', '裕华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130109', '1301', '3', '0', '藁城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130110', '1301', '3', '0', '鹿泉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130111', '1301', '3', '0', '栾城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130121', '1301', '3', '0', '井陉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130123', '1301', '3', '0', '正定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130125', '1301', '3', '0', '行唐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130126', '1301', '3', '0', '灵寿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130127', '1301', '3', '0', '高邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130128', '1301', '3', '0', '深泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130129', '1301', '3', '0', '赞皇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130130', '1301', '3', '0', '无极县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130131', '1301', '3', '0', '平山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130132', '1301', '3', '0', '元氏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130133', '1301', '3', '0', '赵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130183', '1301', '3', '0', '晋州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130184', '1301', '3', '0', '新乐市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1302', '13', '2', '0', '唐山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130201', '1302', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130202', '1302', '3', '0', '路南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130203', '1302', '3', '0', '路北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130204', '1302', '3', '0', '古冶区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130205', '1302', '3', '0', '开平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130207', '1302', '3', '0', '丰南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130208', '1302', '3', '0', '丰润区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130209', '1302', '3', '0', '曹妃甸区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130223', '1302', '3', '0', '滦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130224', '1302', '3', '0', '滦南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130225', '1302', '3', '0', '乐亭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130227', '1302', '3', '0', '迁西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130229', '1302', '3', '0', '玉田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130281', '1302', '3', '0', '遵化市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130283', '1302', '3', '0', '迁安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1303', '13', '2', '0', '秦皇岛市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130301', '1303', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130302', '1303', '3', '0', '海港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130303', '1303', '3', '0', '山海关区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130304', '1303', '3', '0', '北戴河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130306', '1303', '3', '0', '抚宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130321', '1303', '3', '0', '青龙满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130322', '1303', '3', '0', '昌黎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130324', '1303', '3', '0', '卢龙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1304', '13', '2', '0', '邯郸市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130401', '1304', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130402', '1304', '3', '0', '邯山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130403', '1304', '3', '0', '丛台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130404', '1304', '3', '0', '复兴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130406', '1304', '3', '0', '峰峰矿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130421', '1304', '3', '0', '邯郸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130423', '1304', '3', '0', '临漳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130424', '1304', '3', '0', '成安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130425', '1304', '3', '0', '大名县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130426', '1304', '3', '0', '涉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130427', '1304', '3', '0', '磁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130428', '1304', '3', '0', '肥乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130429', '1304', '3', '0', '永年县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130430', '1304', '3', '0', '邱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130431', '1304', '3', '0', '鸡泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130432', '1304', '3', '0', '广平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130433', '1304', '3', '0', '馆陶县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130434', '1304', '3', '0', '魏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130435', '1304', '3', '0', '曲周县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130481', '1304', '3', '0', '武安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1305', '13', '2', '0', '邢台市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130501', '1305', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130502', '1305', '3', '0', '桥东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130503', '1305', '3', '0', '桥西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130521', '1305', '3', '0', '邢台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130522', '1305', '3', '0', '临城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130523', '1305', '3', '0', '内丘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130524', '1305', '3', '0', '柏乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130525', '1305', '3', '0', '隆尧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130526', '1305', '3', '0', '任县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130527', '1305', '3', '0', '南和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130528', '1305', '3', '0', '宁晋县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130529', '1305', '3', '0', '巨鹿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130530', '1305', '3', '0', '新河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130531', '1305', '3', '0', '广宗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130532', '1305', '3', '0', '平乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130533', '1305', '3', '0', '威县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130534', '1305', '3', '0', '清河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130535', '1305', '3', '0', '临西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130581', '1305', '3', '0', '南宫市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130582', '1305', '3', '0', '沙河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1306', '13', '2', '0', '保定市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130601', '1306', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130602', '1306', '3', '0', '竞秀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130606', '1306', '3', '0', '莲池区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130607', '1306', '3', '0', '满城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130608', '1306', '3', '0', '清苑区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130609', '1306', '3', '0', '徐水区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130623', '1306', '3', '0', '涞水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130624', '1306', '3', '0', '阜平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130626', '1306', '3', '0', '定兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130627', '1306', '3', '0', '唐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130628', '1306', '3', '0', '高阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130629', '1306', '3', '0', '容城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130630', '1306', '3', '0', '涞源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130631', '1306', '3', '0', '望都县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130632', '1306', '3', '0', '安新县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130633', '1306', '3', '0', '易县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130634', '1306', '3', '0', '曲阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130635', '1306', '3', '0', '蠡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130636', '1306', '3', '0', '顺平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130637', '1306', '3', '0', '博野县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130638', '1306', '3', '0', '雄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130681', '1306', '3', '0', '涿州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130683', '1306', '3', '0', '安国市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130684', '1306', '3', '0', '高碑店市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1307', '13', '2', '0', '张家口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130701', '1307', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130702', '1307', '3', '0', '桥东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130703', '1307', '3', '0', '桥西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130705', '1307', '3', '0', '宣化区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130706', '1307', '3', '0', '下花园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130708', '1307', '3', '0', '万全区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130709', '1307', '3', '0', '崇礼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130722', '1307', '3', '0', '张北县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130723', '1307', '3', '0', '康保县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130724', '1307', '3', '0', '沽源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130725', '1307', '3', '0', '尚义县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130726', '1307', '3', '0', '蔚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130727', '1307', '3', '0', '阳原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130728', '1307', '3', '0', '怀安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130730', '1307', '3', '0', '怀来县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130731', '1307', '3', '0', '涿鹿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130732', '1307', '3', '0', '赤城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1308', '13', '2', '0', '承德市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130801', '1308', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130802', '1308', '3', '0', '双桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130803', '1308', '3', '0', '双滦区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130804', '1308', '3', '0', '鹰手营子矿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130821', '1308', '3', '0', '承德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130822', '1308', '3', '0', '兴隆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130823', '1308', '3', '0', '平泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130824', '1308', '3', '0', '滦平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130825', '1308', '3', '0', '隆化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130826', '1308', '3', '0', '丰宁满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130827', '1308', '3', '0', '宽城满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130828', '1308', '3', '0', '围场满族蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1309', '13', '2', '0', '沧州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130901', '1309', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130902', '1309', '3', '0', '新华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130903', '1309', '3', '0', '运河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130921', '1309', '3', '0', '沧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130922', '1309', '3', '0', '青县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130923', '1309', '3', '0', '东光县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130924', '1309', '3', '0', '海兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130925', '1309', '3', '0', '盐山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130926', '1309', '3', '0', '肃宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130927', '1309', '3', '0', '南皮县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130928', '1309', '3', '0', '吴桥县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130929', '1309', '3', '0', '献县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130930', '1309', '3', '0', '孟村回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130981', '1309', '3', '0', '泊头市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130982', '1309', '3', '0', '任丘市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130983', '1309', '3', '0', '黄骅市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('130984', '1309', '3', '0', '河间市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1310', '13', '2', '0', '廊坊市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131001', '1310', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131002', '1310', '3', '0', '安次区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131003', '1310', '3', '0', '广阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131022', '1310', '3', '0', '固安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131023', '1310', '3', '0', '永清县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131024', '1310', '3', '0', '香河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131025', '1310', '3', '0', '大城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131026', '1310', '3', '0', '文安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131028', '1310', '3', '0', '大厂回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131081', '1310', '3', '0', '霸州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131082', '1310', '3', '0', '三河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1311', '13', '2', '0', '衡水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131101', '1311', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131102', '1311', '3', '0', '桃城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131103', '1311', '3', '0', '冀州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131121', '1311', '3', '0', '枣强县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131122', '1311', '3', '0', '武邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131123', '1311', '3', '0', '武强县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131124', '1311', '3', '0', '饶阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131125', '1311', '3', '0', '安平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131126', '1311', '3', '0', '故城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131127', '1311', '3', '0', '景县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131128', '1311', '3', '0', '阜城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('131182', '1311', '3', '0', '深州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1390', '13', '2', '0', '省直辖县级行政区划', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('139001', '1390', '3', '0', '定州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('139002', '1390', '3', '0', '辛集市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('14', null, '1', '0', '山西省', '0', '0', '1', null, '1516059438');
INSERT INTO `zz_region` VALUES ('1401', '14', '2', '0', '太原市', '0', '0', '1', null, '1516059438');
INSERT INTO `zz_region` VALUES ('140101', '1401', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140105', '1401', '3', '0', '小店区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140106', '1401', '3', '0', '迎泽区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140107', '1401', '3', '0', '杏花岭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140108', '1401', '3', '0', '尖草坪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140109', '1401', '3', '0', '万柏林区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140110', '1401', '3', '0', '晋源区', '0', '0', '1', null, '1516059438');
INSERT INTO `zz_region` VALUES ('140121', '1401', '3', '0', '清徐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140122', '1401', '3', '0', '阳曲县', '0', '0', '1', null, '1516059383');
INSERT INTO `zz_region` VALUES ('140123', '1401', '3', '0', '娄烦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140181', '1401', '3', '0', '古交市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1402', '14', '2', '0', '大同市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140201', '1402', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140202', '1402', '3', '0', '城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140203', '1402', '3', '0', '矿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140211', '1402', '3', '0', '南郊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140212', '1402', '3', '0', '新荣区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140221', '1402', '3', '0', '阳高县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140222', '1402', '3', '0', '天镇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140223', '1402', '3', '0', '广灵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140224', '1402', '3', '0', '灵丘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140225', '1402', '3', '0', '浑源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140226', '1402', '3', '0', '左云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140227', '1402', '3', '0', '大同县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1403', '14', '2', '0', '阳泉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140301', '1403', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140302', '1403', '3', '0', '城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140303', '1403', '3', '0', '矿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140311', '1403', '3', '0', '郊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140321', '1403', '3', '0', '平定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140322', '1403', '3', '0', '盂县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1404', '14', '2', '0', '长治市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140401', '1404', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140402', '1404', '3', '0', '城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140411', '1404', '3', '0', '郊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140421', '1404', '3', '0', '长治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140423', '1404', '3', '0', '襄垣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140424', '1404', '3', '0', '屯留县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140425', '1404', '3', '0', '平顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140426', '1404', '3', '0', '黎城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140427', '1404', '3', '0', '壶关县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140428', '1404', '3', '0', '长子县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140429', '1404', '3', '0', '武乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140430', '1404', '3', '0', '沁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140431', '1404', '3', '0', '沁源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140481', '1404', '3', '0', '潞城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1405', '14', '2', '0', '晋城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140501', '1405', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140502', '1405', '3', '0', '城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140521', '1405', '3', '0', '沁水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140522', '1405', '3', '0', '阳城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140524', '1405', '3', '0', '陵川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140525', '1405', '3', '0', '泽州县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140581', '1405', '3', '0', '高平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1406', '14', '2', '0', '朔州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140601', '1406', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140602', '1406', '3', '0', '朔城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140603', '1406', '3', '0', '平鲁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140621', '1406', '3', '0', '山阴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140622', '1406', '3', '0', '应县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140623', '1406', '3', '0', '右玉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140624', '1406', '3', '0', '怀仁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1407', '14', '2', '0', '晋中市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140701', '1407', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140702', '1407', '3', '0', '榆次区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140721', '1407', '3', '0', '榆社县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140722', '1407', '3', '0', '左权县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140723', '1407', '3', '0', '和顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140724', '1407', '3', '0', '昔阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140725', '1407', '3', '0', '寿阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140726', '1407', '3', '0', '太谷县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140727', '1407', '3', '0', '祁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140728', '1407', '3', '0', '平遥县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140729', '1407', '3', '0', '灵石县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140781', '1407', '3', '0', '介休市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1408', '14', '2', '0', '运城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140801', '1408', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140802', '1408', '3', '0', '盐湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140821', '1408', '3', '0', '临猗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140822', '1408', '3', '0', '万荣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140823', '1408', '3', '0', '闻喜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140824', '1408', '3', '0', '稷山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140825', '1408', '3', '0', '新绛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140826', '1408', '3', '0', '绛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140827', '1408', '3', '0', '垣曲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140828', '1408', '3', '0', '夏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140829', '1408', '3', '0', '平陆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140830', '1408', '3', '0', '芮城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140881', '1408', '3', '0', '永济市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140882', '1408', '3', '0', '河津市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1409', '14', '2', '0', '忻州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140901', '1409', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140902', '1409', '3', '0', '忻府区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140921', '1409', '3', '0', '定襄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140922', '1409', '3', '0', '五台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140923', '1409', '3', '0', '代县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140924', '1409', '3', '0', '繁峙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140925', '1409', '3', '0', '宁武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140926', '1409', '3', '0', '静乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140927', '1409', '3', '0', '神池县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140928', '1409', '3', '0', '五寨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140929', '1409', '3', '0', '岢岚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140930', '1409', '3', '0', '河曲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140931', '1409', '3', '0', '保德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140932', '1409', '3', '0', '偏关县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('140981', '1409', '3', '0', '原平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1410', '14', '2', '0', '临汾市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141001', '1410', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141002', '1410', '3', '0', '尧都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141021', '1410', '3', '0', '曲沃县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141022', '1410', '3', '0', '翼城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141023', '1410', '3', '0', '襄汾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141024', '1410', '3', '0', '洪洞县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141025', '1410', '3', '0', '古县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141026', '1410', '3', '0', '安泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141027', '1410', '3', '0', '浮山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141028', '1410', '3', '0', '吉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141029', '1410', '3', '0', '乡宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141030', '1410', '3', '0', '大宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141031', '1410', '3', '0', '隰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141032', '1410', '3', '0', '永和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141033', '1410', '3', '0', '蒲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141034', '1410', '3', '0', '汾西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141081', '1410', '3', '0', '侯马市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141082', '1410', '3', '0', '霍州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1411', '14', '2', '0', '吕梁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141101', '1411', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141102', '1411', '3', '0', '离石区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141121', '1411', '3', '0', '文水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141122', '1411', '3', '0', '交城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141123', '1411', '3', '0', '兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141124', '1411', '3', '0', '临县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141125', '1411', '3', '0', '柳林县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141126', '1411', '3', '0', '石楼县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141127', '1411', '3', '0', '岚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141128', '1411', '3', '0', '方山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141129', '1411', '3', '0', '中阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141130', '1411', '3', '0', '交口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141181', '1411', '3', '0', '孝义市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('141182', '1411', '3', '0', '汾阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('15', null, '1', '0', '内蒙古自治区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1501', '15', '2', '0', '呼和浩特市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150101', '1501', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150102', '1501', '3', '0', '新城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150103', '1501', '3', '0', '回民区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150104', '1501', '3', '0', '玉泉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150105', '1501', '3', '0', '赛罕区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150121', '1501', '3', '0', '土默特左旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150122', '1501', '3', '0', '托克托县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150123', '1501', '3', '0', '和林格尔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150124', '1501', '3', '0', '清水河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150125', '1501', '3', '0', '武川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1502', '15', '2', '0', '包头市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150201', '1502', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150202', '1502', '3', '0', '东河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150203', '1502', '3', '0', '昆都仑区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150204', '1502', '3', '0', '青山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150205', '1502', '3', '0', '石拐区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150206', '1502', '3', '0', '白云鄂博矿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150207', '1502', '3', '0', '九原区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150221', '1502', '3', '0', '土默特右旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150222', '1502', '3', '0', '固阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150223', '1502', '3', '0', '达尔罕茂明安联合旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1503', '15', '2', '0', '乌海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150301', '1503', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150302', '1503', '3', '0', '海勃湾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150303', '1503', '3', '0', '海南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150304', '1503', '3', '0', '乌达区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1504', '15', '2', '0', '赤峰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150401', '1504', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150402', '1504', '3', '0', '红山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150403', '1504', '3', '0', '元宝山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150404', '1504', '3', '0', '松山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150421', '1504', '3', '0', '阿鲁科尔沁旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150422', '1504', '3', '0', '巴林左旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150423', '1504', '3', '0', '巴林右旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150424', '1504', '3', '0', '林西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150425', '1504', '3', '0', '克什克腾旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150426', '1504', '3', '0', '翁牛特旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150428', '1504', '3', '0', '喀喇沁旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150429', '1504', '3', '0', '宁城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150430', '1504', '3', '0', '敖汉旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1505', '15', '2', '0', '通辽市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150501', '1505', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150502', '1505', '3', '0', '科尔沁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150521', '1505', '3', '0', '科尔沁左翼中旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150522', '1505', '3', '0', '科尔沁左翼后旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150523', '1505', '3', '0', '开鲁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150524', '1505', '3', '0', '库伦旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150525', '1505', '3', '0', '奈曼旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150526', '1505', '3', '0', '扎鲁特旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150581', '1505', '3', '0', '霍林郭勒市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1506', '15', '2', '0', '鄂尔多斯市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150601', '1506', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150602', '1506', '3', '0', '东胜区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150603', '1506', '3', '0', '康巴什区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150621', '1506', '3', '0', '达拉特旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150622', '1506', '3', '0', '准格尔旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150623', '1506', '3', '0', '鄂托克前旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150624', '1506', '3', '0', '鄂托克旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150625', '1506', '3', '0', '杭锦旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150626', '1506', '3', '0', '乌审旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150627', '1506', '3', '0', '伊金霍洛旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1507', '15', '2', '0', '呼伦贝尔市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150701', '1507', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150702', '1507', '3', '0', '海拉尔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150703', '1507', '3', '0', '扎赉诺尔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150721', '1507', '3', '0', '阿荣旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150722', '1507', '3', '0', '莫力达瓦达斡尔族自治旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150723', '1507', '3', '0', '鄂伦春自治旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150724', '1507', '3', '0', '鄂温克族自治旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150725', '1507', '3', '0', '陈巴尔虎旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150726', '1507', '3', '0', '新巴尔虎左旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150727', '1507', '3', '0', '新巴尔虎右旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150781', '1507', '3', '0', '满洲里市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150782', '1507', '3', '0', '牙克石市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150783', '1507', '3', '0', '扎兰屯市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150784', '1507', '3', '0', '额尔古纳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150785', '1507', '3', '0', '根河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1508', '15', '2', '0', '巴彦淖尔市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150801', '1508', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150802', '1508', '3', '0', '临河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150821', '1508', '3', '0', '五原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150822', '1508', '3', '0', '磴口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150823', '1508', '3', '0', '乌拉特前旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150824', '1508', '3', '0', '乌拉特中旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150825', '1508', '3', '0', '乌拉特后旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150826', '1508', '3', '0', '杭锦后旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1509', '15', '2', '0', '乌兰察布市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150901', '1509', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150902', '1509', '3', '0', '集宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150921', '1509', '3', '0', '卓资县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150922', '1509', '3', '0', '化德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150923', '1509', '3', '0', '商都县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150924', '1509', '3', '0', '兴和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150925', '1509', '3', '0', '凉城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150926', '1509', '3', '0', '察哈尔右翼前旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150927', '1509', '3', '0', '察哈尔右翼中旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150928', '1509', '3', '0', '察哈尔右翼后旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150929', '1509', '3', '0', '四子王旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('150981', '1509', '3', '0', '丰镇市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1522', '15', '2', '0', '兴安盟', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152201', '1522', '3', '0', '乌兰浩特市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152202', '1522', '3', '0', '阿尔山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152221', '1522', '3', '0', '科尔沁右翼前旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152222', '1522', '3', '0', '科尔沁右翼中旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152223', '1522', '3', '0', '扎赉特旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152224', '1522', '3', '0', '突泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1525', '15', '2', '0', '锡林郭勒盟', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152501', '1525', '3', '0', '二连浩特市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152502', '1525', '3', '0', '锡林浩特市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152522', '1525', '3', '0', '阿巴嘎旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152523', '1525', '3', '0', '苏尼特左旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152524', '1525', '3', '0', '苏尼特右旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152525', '1525', '3', '0', '东乌珠穆沁旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152526', '1525', '3', '0', '西乌珠穆沁旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152527', '1525', '3', '0', '太仆寺旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152528', '1525', '3', '0', '镶黄旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152529', '1525', '3', '0', '正镶白旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152530', '1525', '3', '0', '正蓝旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152531', '1525', '3', '0', '多伦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('1529', '15', '2', '0', '阿拉善盟', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152921', '1529', '3', '0', '阿拉善左旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152922', '1529', '3', '0', '阿拉善右旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('152923', '1529', '3', '0', '额济纳旗', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('21', null, '1', '0', '辽宁省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2101', '21', '2', '0', '沈阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210101', '2101', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210102', '2101', '3', '0', '和平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210103', '2101', '3', '0', '沈河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210104', '2101', '3', '0', '大东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210105', '2101', '3', '0', '皇姑区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210106', '2101', '3', '0', '铁西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210111', '2101', '3', '0', '苏家屯区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210112', '2101', '3', '0', '浑南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210113', '2101', '3', '0', '沈北新区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210114', '2101', '3', '0', '于洪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210115', '2101', '3', '0', '辽中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210123', '2101', '3', '0', '康平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210124', '2101', '3', '0', '法库县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210181', '2101', '3', '0', '新民市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2102', '21', '2', '0', '大连市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210201', '2102', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210202', '2102', '3', '0', '中山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210203', '2102', '3', '0', '西岗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210204', '2102', '3', '0', '沙河口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210211', '2102', '3', '0', '甘井子区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210212', '2102', '3', '0', '旅顺口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210213', '2102', '3', '0', '金州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210214', '2102', '3', '0', '普兰店区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210224', '2102', '3', '0', '长海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210281', '2102', '3', '0', '瓦房店市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210283', '2102', '3', '0', '庄河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2103', '21', '2', '0', '鞍山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210301', '2103', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210302', '2103', '3', '0', '铁东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210303', '2103', '3', '0', '铁西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210304', '2103', '3', '0', '立山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210311', '2103', '3', '0', '千山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210321', '2103', '3', '0', '台安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210323', '2103', '3', '0', '岫岩满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210381', '2103', '3', '0', '海城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2104', '21', '2', '0', '抚顺市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210401', '2104', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210402', '2104', '3', '0', '新抚区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210403', '2104', '3', '0', '东洲区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210404', '2104', '3', '0', '望花区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210411', '2104', '3', '0', '顺城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210421', '2104', '3', '0', '抚顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210422', '2104', '3', '0', '新宾满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210423', '2104', '3', '0', '清原满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2105', '21', '2', '0', '本溪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210501', '2105', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210502', '2105', '3', '0', '平山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210503', '2105', '3', '0', '溪湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210504', '2105', '3', '0', '明山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210505', '2105', '3', '0', '南芬区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210521', '2105', '3', '0', '本溪满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210522', '2105', '3', '0', '桓仁满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2106', '21', '2', '0', '丹东市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210601', '2106', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210602', '2106', '3', '0', '元宝区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210603', '2106', '3', '0', '振兴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210604', '2106', '3', '0', '振安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210624', '2106', '3', '0', '宽甸满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210681', '2106', '3', '0', '东港市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210682', '2106', '3', '0', '凤城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2107', '21', '2', '0', '锦州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210701', '2107', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210702', '2107', '3', '0', '古塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210703', '2107', '3', '0', '凌河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210711', '2107', '3', '0', '太和区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210726', '2107', '3', '0', '黑山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210727', '2107', '3', '0', '义县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210781', '2107', '3', '0', '凌海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210782', '2107', '3', '0', '北镇市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2108', '21', '2', '0', '营口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210801', '2108', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210802', '2108', '3', '0', '站前区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210803', '2108', '3', '0', '西市区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210804', '2108', '3', '0', '鲅鱼圈区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210811', '2108', '3', '0', '老边区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210881', '2108', '3', '0', '盖州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210882', '2108', '3', '0', '大石桥市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2109', '21', '2', '0', '阜新市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210901', '2109', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210902', '2109', '3', '0', '海州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210903', '2109', '3', '0', '新邱区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210904', '2109', '3', '0', '太平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210905', '2109', '3', '0', '清河门区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210911', '2109', '3', '0', '细河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210921', '2109', '3', '0', '阜新蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('210922', '2109', '3', '0', '彰武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2110', '21', '2', '0', '辽阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211001', '2110', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211002', '2110', '3', '0', '白塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211003', '2110', '3', '0', '文圣区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211004', '2110', '3', '0', '宏伟区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211005', '2110', '3', '0', '弓长岭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211011', '2110', '3', '0', '太子河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211021', '2110', '3', '0', '辽阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211081', '2110', '3', '0', '灯塔市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2111', '21', '2', '0', '盘锦市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211101', '2111', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211102', '2111', '3', '0', '双台子区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211103', '2111', '3', '0', '兴隆台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211104', '2111', '3', '0', '大洼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211122', '2111', '3', '0', '盘山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2112', '21', '2', '0', '铁岭市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211201', '2112', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211202', '2112', '3', '0', '银州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211204', '2112', '3', '0', '清河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211221', '2112', '3', '0', '铁岭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211223', '2112', '3', '0', '西丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211224', '2112', '3', '0', '昌图县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211281', '2112', '3', '0', '调兵山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211282', '2112', '3', '0', '开原市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2113', '21', '2', '0', '朝阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211301', '2113', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211302', '2113', '3', '0', '双塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211303', '2113', '3', '0', '龙城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211321', '2113', '3', '0', '朝阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211322', '2113', '3', '0', '建平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211324', '2113', '3', '0', '喀喇沁左翼蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211381', '2113', '3', '0', '北票市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211382', '2113', '3', '0', '凌源市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2114', '21', '2', '0', '葫芦岛市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211401', '2114', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211402', '2114', '3', '0', '连山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211403', '2114', '3', '0', '龙港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211404', '2114', '3', '0', '南票区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211421', '2114', '3', '0', '绥中县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211422', '2114', '3', '0', '建昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('211481', '2114', '3', '0', '兴城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('22', null, '1', '0', '吉林省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2201', '22', '2', '0', '长春市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220101', '2201', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220102', '2201', '3', '0', '南关区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220103', '2201', '3', '0', '宽城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220104', '2201', '3', '0', '朝阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220105', '2201', '3', '0', '二道区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220106', '2201', '3', '0', '绿园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220112', '2201', '3', '0', '双阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220113', '2201', '3', '0', '九台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220122', '2201', '3', '0', '农安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220182', '2201', '3', '0', '榆树市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220183', '2201', '3', '0', '德惠市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2202', '22', '2', '0', '吉林市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220201', '2202', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220202', '2202', '3', '0', '昌邑区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220203', '2202', '3', '0', '龙潭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220204', '2202', '3', '0', '船营区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220211', '2202', '3', '0', '丰满区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220221', '2202', '3', '0', '永吉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220281', '2202', '3', '0', '蛟河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220282', '2202', '3', '0', '桦甸市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220283', '2202', '3', '0', '舒兰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220284', '2202', '3', '0', '磐石市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2203', '22', '2', '0', '四平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220301', '2203', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220302', '2203', '3', '0', '铁西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220303', '2203', '3', '0', '铁东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220322', '2203', '3', '0', '梨树县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220323', '2203', '3', '0', '伊通满族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220381', '2203', '3', '0', '公主岭市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220382', '2203', '3', '0', '双辽市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2204', '22', '2', '0', '辽源市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220401', '2204', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220402', '2204', '3', '0', '龙山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220403', '2204', '3', '0', '西安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220421', '2204', '3', '0', '东丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220422', '2204', '3', '0', '东辽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2205', '22', '2', '0', '通化市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220501', '2205', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220502', '2205', '3', '0', '东昌区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220503', '2205', '3', '0', '二道江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220521', '2205', '3', '0', '通化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220523', '2205', '3', '0', '辉南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220524', '2205', '3', '0', '柳河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220581', '2205', '3', '0', '梅河口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220582', '2205', '3', '0', '集安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2206', '22', '2', '0', '白山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220601', '2206', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220602', '2206', '3', '0', '浑江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220605', '2206', '3', '0', '江源区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220621', '2206', '3', '0', '抚松县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220622', '2206', '3', '0', '靖宇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220623', '2206', '3', '0', '长白朝鲜族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220681', '2206', '3', '0', '临江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2207', '22', '2', '0', '松原市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220701', '2207', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220702', '2207', '3', '0', '宁江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220721', '2207', '3', '0', '前郭尔罗斯蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220722', '2207', '3', '0', '长岭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220723', '2207', '3', '0', '乾安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220781', '2207', '3', '0', '扶余市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2208', '22', '2', '0', '白城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220802', '2208', '3', '100', '洮北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220821', '2208', '3', '100', '镇赉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220822', '2208', '3', '100', '通榆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220871', '2208', '3', '100', '吉林白城经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220881', '2208', '3', '100', '洮南市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('220882', '2208', '3', '100', '大安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2224', '22', '2', '0', '延边朝鲜族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222401', '2224', '3', '100', '延吉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222402', '2224', '3', '100', '图们市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222403', '2224', '3', '100', '敦化市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222404', '2224', '3', '100', '珲春市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222405', '2224', '3', '100', '龙井市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222406', '2224', '3', '100', '和龙市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222424', '2224', '3', '100', '汪清县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('222426', '2224', '3', '100', '安图县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('23', null, '1', '0', '黑龙江省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2301', '23', '2', '0', '哈尔滨市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230102', '2301', '3', '100', '道里区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230103', '2301', '3', '100', '南岗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230104', '2301', '3', '100', '道外区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230108', '2301', '3', '100', '平房区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230109', '2301', '3', '100', '松北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230110', '2301', '3', '100', '香坊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230111', '2301', '3', '100', '呼兰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230112', '2301', '3', '100', '阿城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230113', '2301', '3', '100', '双城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230123', '2301', '3', '100', '依兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230124', '2301', '3', '100', '方正县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230125', '2301', '3', '100', '宾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230126', '2301', '3', '100', '巴彦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230127', '2301', '3', '100', '木兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230128', '2301', '3', '100', '通河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230129', '2301', '3', '100', '延寿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230183', '2301', '3', '100', '尚志市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230184', '2301', '3', '100', '五常市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2302', '23', '2', '0', '齐齐哈尔市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230202', '2302', '3', '100', '龙沙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230203', '2302', '3', '100', '建华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230204', '2302', '3', '100', '铁锋区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230205', '2302', '3', '100', '昂昂溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230206', '2302', '3', '100', '富拉尔基区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230207', '2302', '3', '100', '碾子山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230208', '2302', '3', '100', '梅里斯达斡尔族区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230221', '2302', '3', '100', '龙江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230223', '2302', '3', '100', '依安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230224', '2302', '3', '100', '泰来县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230225', '2302', '3', '100', '甘南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230227', '2302', '3', '100', '富裕县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230229', '2302', '3', '100', '克山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230230', '2302', '3', '100', '克东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230231', '2302', '3', '100', '拜泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230281', '2302', '3', '100', '讷河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2303', '23', '2', '0', '鸡西市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230302', '2303', '3', '100', '鸡冠区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230303', '2303', '3', '100', '恒山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230304', '2303', '3', '100', '滴道区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230305', '2303', '3', '100', '梨树区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230306', '2303', '3', '100', '城子河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230307', '2303', '3', '100', '麻山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230321', '2303', '3', '100', '鸡东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230381', '2303', '3', '100', '虎林市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230382', '2303', '3', '100', '密山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2304', '23', '2', '0', '鹤岗市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230402', '2304', '3', '100', '向阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230403', '2304', '3', '100', '工农区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230404', '2304', '3', '100', '南山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230405', '2304', '3', '100', '兴安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230406', '2304', '3', '100', '东山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230407', '2304', '3', '100', '兴山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230421', '2304', '3', '100', '萝北县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230422', '2304', '3', '100', '绥滨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2305', '23', '2', '0', '双鸭山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230502', '2305', '3', '100', '尖山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230503', '2305', '3', '100', '岭东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230505', '2305', '3', '100', '四方台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230506', '2305', '3', '100', '宝山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230521', '2305', '3', '100', '集贤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230522', '2305', '3', '100', '友谊县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230523', '2305', '3', '100', '宝清县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230524', '2305', '3', '100', '饶河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2306', '23', '2', '0', '大庆市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230602', '2306', '3', '100', '萨尔图区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230603', '2306', '3', '100', '龙凤区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230604', '2306', '3', '100', '让胡路区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230605', '2306', '3', '100', '红岗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230606', '2306', '3', '100', '大同区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230621', '2306', '3', '100', '肇州县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230622', '2306', '3', '100', '肇源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230623', '2306', '3', '100', '林甸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230624', '2306', '3', '100', '杜尔伯特蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230671', '2306', '3', '100', '大庆高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2307', '23', '2', '0', '伊春市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230702', '2307', '3', '100', '伊春区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230703', '2307', '3', '100', '南岔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230704', '2307', '3', '100', '友好区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230705', '2307', '3', '100', '西林区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230706', '2307', '3', '100', '翠峦区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230707', '2307', '3', '100', '新青区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230708', '2307', '3', '100', '美溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230709', '2307', '3', '100', '金山屯区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230710', '2307', '3', '100', '五营区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230711', '2307', '3', '100', '乌马河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230712', '2307', '3', '100', '汤旺河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230713', '2307', '3', '100', '带岭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230714', '2307', '3', '100', '乌伊岭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230715', '2307', '3', '100', '红星区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230716', '2307', '3', '100', '上甘岭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230722', '2307', '3', '100', '嘉荫县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230781', '2307', '3', '100', '铁力市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2308', '23', '2', '0', '佳木斯市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230803', '2308', '3', '100', '向阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230804', '2308', '3', '100', '前进区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230805', '2308', '3', '100', '东风区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230811', '2308', '3', '100', '郊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230822', '2308', '3', '100', '桦南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230826', '2308', '3', '100', '桦川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230828', '2308', '3', '100', '汤原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230881', '2308', '3', '100', '同江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230882', '2308', '3', '100', '富锦市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230883', '2308', '3', '100', '抚远市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2309', '23', '2', '0', '七台河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230902', '2309', '3', '100', '新兴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230903', '2309', '3', '100', '桃山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230904', '2309', '3', '100', '茄子河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('230921', '2309', '3', '100', '勃利县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2310', '23', '2', '0', '牡丹江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231002', '2310', '3', '100', '东安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231003', '2310', '3', '100', '阳明区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231004', '2310', '3', '100', '爱民区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231005', '2310', '3', '100', '西安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231025', '2310', '3', '100', '林口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231071', '2310', '3', '100', '牡丹江经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231081', '2310', '3', '100', '绥芬河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231083', '2310', '3', '100', '海林市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231084', '2310', '3', '100', '宁安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231085', '2310', '3', '100', '穆棱市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231086', '2310', '3', '100', '东宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2311', '23', '2', '0', '黑河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231102', '2311', '3', '100', '爱辉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231121', '2311', '3', '100', '嫩江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231123', '2311', '3', '100', '逊克县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231124', '2311', '3', '100', '孙吴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231181', '2311', '3', '100', '北安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231182', '2311', '3', '100', '五大连池市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2312', '23', '2', '0', '绥化市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231202', '2312', '3', '100', '北林区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231221', '2312', '3', '100', '望奎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231222', '2312', '3', '100', '兰西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231223', '2312', '3', '100', '青冈县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231224', '2312', '3', '100', '庆安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231225', '2312', '3', '100', '明水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231226', '2312', '3', '100', '绥棱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231281', '2312', '3', '100', '安达市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231282', '2312', '3', '100', '肇东市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('231283', '2312', '3', '100', '海伦市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('2327', '23', '2', '0', '大兴安岭地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232701', '2327', '3', '100', '漠河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232721', '2327', '3', '100', '呼玛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232722', '2327', '3', '100', '塔河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232761', '2327', '3', '100', '加格达奇区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232762', '2327', '3', '100', '松岭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232763', '2327', '3', '100', '新林区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('232764', '2327', '3', '100', '呼中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('31', null, '1', '0', '上海市', '1', '0', '1', null, '1516059438');
INSERT INTO `zz_region` VALUES ('3101', '31', '2', '0', '市辖区', '1', '0', '1', null, '1516059438');
INSERT INTO `zz_region` VALUES ('310101', '3101', '3', '100', '黄浦区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310104', '3101', '3', '100', '徐汇区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310105', '3101', '3', '100', '长宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310106', '3101', '3', '100', '静安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310107', '3101', '3', '100', '普陀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310109', '3101', '3', '100', '虹口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310110', '3101', '3', '100', '杨浦区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310112', '3101', '3', '100', '闵行区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310113', '3101', '3', '100', '宝山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310114', '3101', '3', '100', '嘉定区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310115', '3101', '3', '100', '浦东新区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310116', '3101', '3', '100', '金山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310117', '3101', '3', '100', '松江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310118', '3101', '3', '100', '青浦区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310120', '3101', '3', '100', '奉贤区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('310151', '3101', '3', '100', '崇明区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('32', null, '1', '0', '江苏省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3201', '32', '2', '0', '南京市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320102', '3201', '3', '100', '玄武区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320104', '3201', '3', '100', '秦淮区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320105', '3201', '3', '100', '建邺区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320106', '3201', '3', '100', '鼓楼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320111', '3201', '3', '100', '浦口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320113', '3201', '3', '100', '栖霞区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320114', '3201', '3', '100', '雨花台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320115', '3201', '3', '100', '江宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320116', '3201', '3', '100', '六合区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320117', '3201', '3', '100', '溧水区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320118', '3201', '3', '100', '高淳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3202', '32', '2', '0', '无锡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320205', '3202', '3', '100', '锡山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320206', '3202', '3', '100', '惠山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320211', '3202', '3', '100', '滨湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320213', '3202', '3', '100', '梁溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320214', '3202', '3', '100', '新吴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320281', '3202', '3', '100', '江阴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320282', '3202', '3', '100', '宜兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3203', '32', '2', '0', '徐州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320302', '3203', '3', '100', '鼓楼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320303', '3203', '3', '100', '云龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320305', '3203', '3', '100', '贾汪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320311', '3203', '3', '100', '泉山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320312', '3203', '3', '100', '铜山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320321', '3203', '3', '100', '丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320322', '3203', '3', '100', '沛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320324', '3203', '3', '100', '睢宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320371', '3203', '3', '100', '徐州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320381', '3203', '3', '100', '新沂市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320382', '3203', '3', '100', '邳州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3204', '32', '2', '0', '常州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320402', '3204', '3', '100', '天宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320404', '3204', '3', '100', '钟楼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320411', '3204', '3', '100', '新北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320412', '3204', '3', '100', '武进区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320413', '3204', '3', '100', '金坛区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320481', '3204', '3', '100', '溧阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3205', '32', '2', '0', '苏州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320505', '3205', '3', '100', '虎丘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320506', '3205', '3', '100', '吴中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320507', '3205', '3', '100', '相城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320508', '3205', '3', '100', '姑苏区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320509', '3205', '3', '100', '吴江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320571', '3205', '3', '100', '苏州工业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320581', '3205', '3', '100', '常熟市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320582', '3205', '3', '100', '张家港市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320583', '3205', '3', '100', '昆山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320585', '3205', '3', '100', '太仓市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3206', '32', '2', '0', '南通市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320602', '3206', '3', '100', '崇川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320611', '3206', '3', '100', '港闸区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320612', '3206', '3', '100', '通州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320623', '3206', '3', '100', '如东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320671', '3206', '3', '100', '南通经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320681', '3206', '3', '100', '启东市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320682', '3206', '3', '100', '如皋市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320684', '3206', '3', '100', '海门市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320685', '3206', '3', '100', '海安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3207', '32', '2', '0', '连云港市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320703', '3207', '3', '100', '连云区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320706', '3207', '3', '100', '海州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320707', '3207', '3', '100', '赣榆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320722', '3207', '3', '100', '东海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320723', '3207', '3', '100', '灌云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320724', '3207', '3', '100', '灌南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320771', '3207', '3', '100', '连云港经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320772', '3207', '3', '100', '连云港高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3208', '32', '2', '0', '淮安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320803', '3208', '3', '100', '淮安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320804', '3208', '3', '100', '淮阴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320812', '3208', '3', '100', '清江浦区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320813', '3208', '3', '100', '洪泽区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320826', '3208', '3', '100', '涟水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320830', '3208', '3', '100', '盱眙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320831', '3208', '3', '100', '金湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320871', '3208', '3', '100', '淮安经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3209', '32', '2', '0', '盐城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320902', '3209', '3', '100', '亭湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320903', '3209', '3', '100', '盐都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320904', '3209', '3', '100', '大丰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320921', '3209', '3', '100', '响水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320922', '3209', '3', '100', '滨海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320923', '3209', '3', '100', '阜宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320924', '3209', '3', '100', '射阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320925', '3209', '3', '100', '建湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320971', '3209', '3', '100', '盐城经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('320981', '3209', '3', '100', '东台市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3210', '32', '2', '0', '扬州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321002', '3210', '3', '100', '广陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321003', '3210', '3', '100', '邗江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321012', '3210', '3', '100', '江都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321023', '3210', '3', '100', '宝应县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321071', '3210', '3', '100', '扬州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321081', '3210', '3', '100', '仪征市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321084', '3210', '3', '100', '高邮市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3211', '32', '2', '0', '镇江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321102', '3211', '3', '100', '京口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321111', '3211', '3', '100', '润州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321112', '3211', '3', '100', '丹徒区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321171', '3211', '3', '100', '镇江新区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321181', '3211', '3', '100', '丹阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321182', '3211', '3', '100', '扬中市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321183', '3211', '3', '100', '句容市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3212', '32', '2', '0', '泰州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321202', '3212', '3', '100', '海陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321203', '3212', '3', '100', '高港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321204', '3212', '3', '100', '姜堰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321271', '3212', '3', '100', '泰州医药高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321281', '3212', '3', '100', '兴化市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321282', '3212', '3', '100', '靖江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321283', '3212', '3', '100', '泰兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3213', '32', '2', '0', '宿迁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321302', '3213', '3', '100', '宿城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321311', '3213', '3', '100', '宿豫区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321322', '3213', '3', '100', '沭阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321323', '3213', '3', '100', '泗阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321324', '3213', '3', '100', '泗洪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('321371', '3213', '3', '100', '宿迁经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('33', null, '1', '0', '浙江省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3301', '33', '2', '0', '杭州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330102', '3301', '3', '100', '上城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330103', '3301', '3', '100', '下城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330104', '3301', '3', '100', '江干区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330105', '3301', '3', '100', '拱墅区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330106', '3301', '3', '100', '西湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330108', '3301', '3', '100', '滨江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330109', '3301', '3', '100', '萧山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330110', '3301', '3', '100', '余杭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330111', '3301', '3', '100', '富阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330112', '3301', '3', '100', '临安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330122', '3301', '3', '100', '桐庐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330127', '3301', '3', '100', '淳安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330182', '3301', '3', '100', '建德市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3302', '33', '2', '0', '宁波市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330203', '3302', '3', '100', '海曙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330205', '3302', '3', '100', '江北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330206', '3302', '3', '100', '北仑区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330211', '3302', '3', '100', '镇海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330212', '3302', '3', '100', '鄞州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330213', '3302', '3', '100', '奉化区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330225', '3302', '3', '100', '象山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330226', '3302', '3', '100', '宁海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330281', '3302', '3', '100', '余姚市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330282', '3302', '3', '100', '慈溪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3303', '33', '2', '0', '温州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330302', '3303', '3', '100', '鹿城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330303', '3303', '3', '100', '龙湾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330304', '3303', '3', '100', '瓯海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330305', '3303', '3', '100', '洞头区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330324', '3303', '3', '100', '永嘉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330326', '3303', '3', '100', '平阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330327', '3303', '3', '100', '苍南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330328', '3303', '3', '100', '文成县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330329', '3303', '3', '100', '泰顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330371', '3303', '3', '100', '温州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330381', '3303', '3', '100', '瑞安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330382', '3303', '3', '100', '乐清市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3304', '33', '2', '0', '嘉兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330402', '3304', '3', '100', '南湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330411', '3304', '3', '100', '秀洲区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330421', '3304', '3', '100', '嘉善县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330424', '3304', '3', '100', '海盐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330481', '3304', '3', '100', '海宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330482', '3304', '3', '100', '平湖市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330483', '3304', '3', '100', '桐乡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3305', '33', '2', '0', '湖州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330502', '3305', '3', '100', '吴兴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330503', '3305', '3', '100', '南浔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330521', '3305', '3', '100', '德清县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330522', '3305', '3', '100', '长兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330523', '3305', '3', '100', '安吉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3306', '33', '2', '0', '绍兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330602', '3306', '3', '100', '越城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330603', '3306', '3', '100', '柯桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330604', '3306', '3', '100', '上虞区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330624', '3306', '3', '100', '新昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330681', '3306', '3', '100', '诸暨市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330683', '3306', '3', '100', '嵊州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3307', '33', '2', '0', '金华市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330702', '3307', '3', '100', '婺城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330703', '3307', '3', '100', '金东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330723', '3307', '3', '100', '武义县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330726', '3307', '3', '100', '浦江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330727', '3307', '3', '100', '磐安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330781', '3307', '3', '100', '兰溪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330782', '3307', '3', '100', '义乌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330783', '3307', '3', '100', '东阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330784', '3307', '3', '100', '永康市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3308', '33', '2', '0', '衢州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330802', '3308', '3', '100', '柯城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330803', '3308', '3', '100', '衢江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330822', '3308', '3', '100', '常山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330824', '3308', '3', '100', '开化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330825', '3308', '3', '100', '龙游县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330881', '3308', '3', '100', '江山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3309', '33', '2', '0', '舟山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330902', '3309', '3', '100', '定海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330903', '3309', '3', '100', '普陀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330921', '3309', '3', '100', '岱山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('330922', '3309', '3', '100', '嵊泗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3310', '33', '2', '0', '台州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331002', '3310', '3', '100', '椒江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331003', '3310', '3', '100', '黄岩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331004', '3310', '3', '100', '路桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331022', '3310', '3', '100', '三门县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331023', '3310', '3', '100', '天台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331024', '3310', '3', '100', '仙居县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331081', '3310', '3', '100', '温岭市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331082', '3310', '3', '100', '临海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331083', '3310', '3', '100', '玉环市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3311', '33', '2', '0', '丽水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331102', '3311', '3', '100', '莲都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331121', '3311', '3', '100', '青田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331122', '3311', '3', '100', '缙云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331123', '3311', '3', '100', '遂昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331124', '3311', '3', '100', '松阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331125', '3311', '3', '100', '云和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331126', '3311', '3', '100', '庆元县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331127', '3311', '3', '100', '景宁畲族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('331181', '3311', '3', '100', '龙泉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('34', null, '1', '0', '安徽省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3401', '34', '2', '0', '合肥市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340102', '3401', '3', '100', '瑶海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340103', '3401', '3', '100', '庐阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340104', '3401', '3', '100', '蜀山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340111', '3401', '3', '100', '包河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340121', '3401', '3', '100', '长丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340122', '3401', '3', '100', '肥东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340123', '3401', '3', '100', '肥西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340124', '3401', '3', '100', '庐江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340171', '3401', '3', '100', '合肥高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340172', '3401', '3', '100', '合肥经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340173', '3401', '3', '100', '合肥新站高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340181', '3401', '3', '100', '巢湖市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3402', '34', '2', '0', '芜湖市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340202', '3402', '3', '100', '镜湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340203', '3402', '3', '100', '弋江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340207', '3402', '3', '100', '鸠江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340208', '3402', '3', '100', '三山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340221', '3402', '3', '100', '芜湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340222', '3402', '3', '100', '繁昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340223', '3402', '3', '100', '南陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340225', '3402', '3', '100', '无为县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340271', '3402', '3', '100', '芜湖经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340272', '3402', '3', '100', '安徽芜湖长江大桥经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3403', '34', '2', '0', '蚌埠市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340302', '3403', '3', '100', '龙子湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340303', '3403', '3', '100', '蚌山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340304', '3403', '3', '100', '禹会区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340311', '3403', '3', '100', '淮上区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340321', '3403', '3', '100', '怀远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340322', '3403', '3', '100', '五河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340323', '3403', '3', '100', '固镇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340371', '3403', '3', '100', '蚌埠市高新技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340372', '3403', '3', '100', '蚌埠市经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3404', '34', '2', '0', '淮南市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340402', '3404', '3', '100', '大通区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340403', '3404', '3', '100', '田家庵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340404', '3404', '3', '100', '谢家集区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340405', '3404', '3', '100', '八公山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340406', '3404', '3', '100', '潘集区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340421', '3404', '3', '100', '凤台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340422', '3404', '3', '100', '寿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3405', '34', '2', '0', '马鞍山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340503', '3405', '3', '100', '花山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340504', '3405', '3', '100', '雨山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340506', '3405', '3', '100', '博望区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340521', '3405', '3', '100', '当涂县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340522', '3405', '3', '100', '含山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340523', '3405', '3', '100', '和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3406', '34', '2', '0', '淮北市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340602', '3406', '3', '100', '杜集区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340603', '3406', '3', '100', '相山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340604', '3406', '3', '100', '烈山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340621', '3406', '3', '100', '濉溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3407', '34', '2', '0', '铜陵市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340705', '3407', '3', '100', '铜官区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340706', '3407', '3', '100', '义安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340711', '3407', '3', '100', '郊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340722', '3407', '3', '100', '枞阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3408', '34', '2', '0', '安庆市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340802', '3408', '3', '100', '迎江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340803', '3408', '3', '100', '大观区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340811', '3408', '3', '100', '宜秀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340822', '3408', '3', '100', '怀宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340825', '3408', '3', '100', '太湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340826', '3408', '3', '100', '宿松县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340827', '3408', '3', '100', '望江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340828', '3408', '3', '100', '岳西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340871', '3408', '3', '100', '安徽安庆经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340881', '3408', '3', '100', '桐城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('340882', '3408', '3', '100', '潜山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3410', '34', '2', '0', '黄山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341002', '3410', '3', '100', '屯溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341003', '3410', '3', '100', '黄山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341004', '3410', '3', '100', '徽州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341021', '3410', '3', '100', '歙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341022', '3410', '3', '100', '休宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341023', '3410', '3', '100', '黟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341024', '3410', '3', '100', '祁门县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3411', '34', '2', '0', '滁州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341102', '3411', '3', '100', '琅琊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341103', '3411', '3', '100', '南谯区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341122', '3411', '3', '100', '来安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341124', '3411', '3', '100', '全椒县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341125', '3411', '3', '100', '定远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341126', '3411', '3', '100', '凤阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341171', '3411', '3', '100', '苏滁现代产业园', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341172', '3411', '3', '100', '滁州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341181', '3411', '3', '100', '天长市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341182', '3411', '3', '100', '明光市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3412', '34', '2', '0', '阜阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341202', '3412', '3', '100', '颍州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341203', '3412', '3', '100', '颍东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341204', '3412', '3', '100', '颍泉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341221', '3412', '3', '100', '临泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341222', '3412', '3', '100', '太和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341225', '3412', '3', '100', '阜南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341226', '3412', '3', '100', '颍上县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341271', '3412', '3', '100', '阜阳合肥现代产业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341272', '3412', '3', '100', '阜阳经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341282', '3412', '3', '100', '界首市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3413', '34', '2', '0', '宿州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341321', '3413', '3', '100', '砀山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341322', '3413', '3', '100', '萧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341323', '3413', '3', '100', '灵璧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341324', '3413', '3', '100', '泗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341371', '3413', '3', '100', '宿州马鞍山现代产业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341372', '3413', '3', '100', '宿州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3415', '34', '2', '0', '六安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341502', '3415', '3', '100', '金安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341503', '3415', '3', '100', '裕安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341504', '3415', '3', '100', '叶集区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341522', '3415', '3', '100', '霍邱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341523', '3415', '3', '100', '舒城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341524', '3415', '3', '100', '金寨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341525', '3415', '3', '100', '霍山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3416', '34', '2', '0', '亳州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341602', '3416', '3', '100', '谯城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341621', '3416', '3', '100', '涡阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341622', '3416', '3', '100', '蒙城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341623', '3416', '3', '100', '利辛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3417', '34', '2', '0', '池州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341702', '3417', '3', '100', '贵池区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341721', '3417', '3', '100', '东至县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341722', '3417', '3', '100', '石台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341723', '3417', '3', '100', '青阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3418', '34', '2', '0', '宣城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341802', '3418', '3', '100', '宣州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341821', '3418', '3', '100', '郎溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341822', '3418', '3', '100', '广德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341823', '3418', '3', '100', '泾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341824', '3418', '3', '100', '绩溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341825', '3418', '3', '100', '旌德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341871', '3418', '3', '100', '宣城市经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('341881', '3418', '3', '100', '宁国市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('35', null, '1', '0', '福建省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3501', '35', '2', '0', '福州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350102', '3501', '3', '100', '鼓楼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350103', '3501', '3', '100', '台江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350104', '3501', '3', '100', '仓山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350105', '3501', '3', '100', '马尾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350111', '3501', '3', '100', '晋安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350112', '3501', '3', '100', '长乐区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350121', '3501', '3', '100', '闽侯县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350122', '3501', '3', '100', '连江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350123', '3501', '3', '100', '罗源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350124', '3501', '3', '100', '闽清县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350125', '3501', '3', '100', '永泰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350128', '3501', '3', '100', '平潭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350181', '3501', '3', '100', '福清市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3502', '35', '2', '0', '厦门市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350203', '3502', '3', '100', '思明区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350205', '3502', '3', '100', '海沧区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350206', '3502', '3', '100', '湖里区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350211', '3502', '3', '100', '集美区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350212', '3502', '3', '100', '同安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350213', '3502', '3', '100', '翔安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3503', '35', '2', '0', '莆田市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350302', '3503', '3', '100', '城厢区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350303', '3503', '3', '100', '涵江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350304', '3503', '3', '100', '荔城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350305', '3503', '3', '100', '秀屿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350322', '3503', '3', '100', '仙游县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3504', '35', '2', '0', '三明市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350402', '3504', '3', '100', '梅列区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350403', '3504', '3', '100', '三元区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350421', '3504', '3', '100', '明溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350423', '3504', '3', '100', '清流县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350424', '3504', '3', '100', '宁化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350425', '3504', '3', '100', '大田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350426', '3504', '3', '100', '尤溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350427', '3504', '3', '100', '沙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350428', '3504', '3', '100', '将乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350429', '3504', '3', '100', '泰宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350430', '3504', '3', '100', '建宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350481', '3504', '3', '100', '永安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3505', '35', '2', '0', '泉州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350502', '3505', '3', '100', '鲤城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350503', '3505', '3', '100', '丰泽区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350504', '3505', '3', '100', '洛江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350505', '3505', '3', '100', '泉港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350521', '3505', '3', '100', '惠安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350524', '3505', '3', '100', '安溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350525', '3505', '3', '100', '永春县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350526', '3505', '3', '100', '德化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350581', '3505', '3', '100', '石狮市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350582', '3505', '3', '100', '晋江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350583', '3505', '3', '100', '南安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3506', '35', '2', '0', '漳州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350602', '3506', '3', '100', '芗城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350603', '3506', '3', '100', '龙文区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350622', '3506', '3', '100', '云霄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350623', '3506', '3', '100', '漳浦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350624', '3506', '3', '100', '诏安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350625', '3506', '3', '100', '长泰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350626', '3506', '3', '100', '东山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350627', '3506', '3', '100', '南靖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350628', '3506', '3', '100', '平和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350629', '3506', '3', '100', '华安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350681', '3506', '3', '100', '龙海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3507', '35', '2', '0', '南平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350702', '3507', '3', '100', '延平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350703', '3507', '3', '100', '建阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350721', '3507', '3', '100', '顺昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350722', '3507', '3', '100', '浦城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350723', '3507', '3', '100', '光泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350724', '3507', '3', '100', '松溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350725', '3507', '3', '100', '政和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350781', '3507', '3', '100', '邵武市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350782', '3507', '3', '100', '武夷山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350783', '3507', '3', '100', '建瓯市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3508', '35', '2', '0', '龙岩市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350802', '3508', '3', '100', '新罗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350803', '3508', '3', '100', '永定区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350821', '3508', '3', '100', '长汀县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350823', '3508', '3', '100', '上杭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350824', '3508', '3', '100', '武平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350825', '3508', '3', '100', '连城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350881', '3508', '3', '100', '漳平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3509', '35', '2', '0', '宁德市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350902', '3509', '3', '100', '蕉城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350921', '3509', '3', '100', '霞浦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350922', '3509', '3', '100', '古田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350923', '3509', '3', '100', '屏南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350924', '3509', '3', '100', '寿宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350925', '3509', '3', '100', '周宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350926', '3509', '3', '100', '柘荣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350981', '3509', '3', '100', '福安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('350982', '3509', '3', '100', '福鼎市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('36', null, '1', '0', '江西省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3601', '36', '2', '0', '南昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360102', '3601', '3', '100', '东湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360103', '3601', '3', '100', '西湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360104', '3601', '3', '100', '青云谱区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360105', '3601', '3', '100', '湾里区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360111', '3601', '3', '100', '青山湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360112', '3601', '3', '100', '新建区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360121', '3601', '3', '100', '南昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360123', '3601', '3', '100', '安义县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360124', '3601', '3', '100', '进贤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3602', '36', '2', '0', '景德镇市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360202', '3602', '3', '100', '昌江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360203', '3602', '3', '100', '珠山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360222', '3602', '3', '100', '浮梁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360281', '3602', '3', '100', '乐平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3603', '36', '2', '0', '萍乡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360302', '3603', '3', '100', '安源区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360313', '3603', '3', '100', '湘东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360321', '3603', '3', '100', '莲花县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360322', '3603', '3', '100', '上栗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360323', '3603', '3', '100', '芦溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3604', '36', '2', '0', '九江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360402', '3604', '3', '100', '濂溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360403', '3604', '3', '100', '浔阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360404', '3604', '3', '100', '柴桑区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360423', '3604', '3', '100', '武宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360424', '3604', '3', '100', '修水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360425', '3604', '3', '100', '永修县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360426', '3604', '3', '100', '德安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360428', '3604', '3', '100', '都昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360429', '3604', '3', '100', '湖口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360430', '3604', '3', '100', '彭泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360481', '3604', '3', '100', '瑞昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360482', '3604', '3', '100', '共青城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360483', '3604', '3', '100', '庐山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3605', '36', '2', '0', '新余市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360502', '3605', '3', '100', '渝水区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360521', '3605', '3', '100', '分宜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3606', '36', '2', '0', '鹰潭市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360602', '3606', '3', '100', '月湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360603', '3606', '3', '100', '余江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360681', '3606', '3', '100', '贵溪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3607', '36', '2', '0', '赣州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360702', '3607', '3', '100', '章贡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360703', '3607', '3', '100', '南康区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360704', '3607', '3', '100', '赣县区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360722', '3607', '3', '100', '信丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360723', '3607', '3', '100', '大余县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360724', '3607', '3', '100', '上犹县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360725', '3607', '3', '100', '崇义县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360726', '3607', '3', '100', '安远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360727', '3607', '3', '100', '龙南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360728', '3607', '3', '100', '定南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360729', '3607', '3', '100', '全南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360730', '3607', '3', '100', '宁都县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360731', '3607', '3', '100', '于都县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360732', '3607', '3', '100', '兴国县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360733', '3607', '3', '100', '会昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360734', '3607', '3', '100', '寻乌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360735', '3607', '3', '100', '石城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360781', '3607', '3', '100', '瑞金市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3608', '36', '2', '0', '吉安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360802', '3608', '3', '100', '吉州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360803', '3608', '3', '100', '青原区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360821', '3608', '3', '100', '吉安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360822', '3608', '3', '100', '吉水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360823', '3608', '3', '100', '峡江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360824', '3608', '3', '100', '新干县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360825', '3608', '3', '100', '永丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360826', '3608', '3', '100', '泰和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360827', '3608', '3', '100', '遂川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360828', '3608', '3', '100', '万安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360829', '3608', '3', '100', '安福县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360830', '3608', '3', '100', '永新县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360881', '3608', '3', '100', '井冈山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3609', '36', '2', '0', '宜春市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360902', '3609', '3', '100', '袁州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360921', '3609', '3', '100', '奉新县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360922', '3609', '3', '100', '万载县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360923', '3609', '3', '100', '上高县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360924', '3609', '3', '100', '宜丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360925', '3609', '3', '100', '靖安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360926', '3609', '3', '100', '铜鼓县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360981', '3609', '3', '100', '丰城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360982', '3609', '3', '100', '樟树市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('360983', '3609', '3', '100', '高安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3610', '36', '2', '0', '抚州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361002', '3610', '3', '100', '临川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361003', '3610', '3', '100', '东乡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361021', '3610', '3', '100', '南城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361022', '3610', '3', '100', '黎川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361023', '3610', '3', '100', '南丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361024', '3610', '3', '100', '崇仁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361025', '3610', '3', '100', '乐安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361026', '3610', '3', '100', '宜黄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361027', '3610', '3', '100', '金溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361028', '3610', '3', '100', '资溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361030', '3610', '3', '100', '广昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3611', '36', '2', '0', '上饶市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361102', '3611', '3', '100', '信州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361103', '3611', '3', '100', '广丰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361121', '3611', '3', '100', '上饶县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361123', '3611', '3', '100', '玉山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361124', '3611', '3', '100', '铅山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361125', '3611', '3', '100', '横峰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361126', '3611', '3', '100', '弋阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361127', '3611', '3', '100', '余干县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361128', '3611', '3', '100', '鄱阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361129', '3611', '3', '100', '万年县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361130', '3611', '3', '100', '婺源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('361181', '3611', '3', '100', '德兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('37', null, '1', '0', '山东省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3701', '37', '2', '0', '济南市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370102', '3701', '3', '100', '历下区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370103', '3701', '3', '100', '市中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370104', '3701', '3', '100', '槐荫区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370105', '3701', '3', '100', '天桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370112', '3701', '3', '100', '历城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370113', '3701', '3', '100', '长清区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370114', '3701', '3', '100', '章丘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370115', '3701', '3', '100', '济阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370124', '3701', '3', '100', '平阴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370126', '3701', '3', '100', '商河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370171', '3701', '3', '100', '济南高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3702', '37', '2', '0', '青岛市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370202', '3702', '3', '100', '市南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370203', '3702', '3', '100', '市北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370211', '3702', '3', '100', '黄岛区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370212', '3702', '3', '100', '崂山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370213', '3702', '3', '100', '李沧区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370214', '3702', '3', '100', '城阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370215', '3702', '3', '100', '即墨区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370271', '3702', '3', '100', '青岛高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370281', '3702', '3', '100', '胶州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370283', '3702', '3', '100', '平度市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370285', '3702', '3', '100', '莱西市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3703', '37', '2', '0', '淄博市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370302', '3703', '3', '100', '淄川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370303', '3703', '3', '100', '张店区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370304', '3703', '3', '100', '博山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370305', '3703', '3', '100', '临淄区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370306', '3703', '3', '100', '周村区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370321', '3703', '3', '100', '桓台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370322', '3703', '3', '100', '高青县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370323', '3703', '3', '100', '沂源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3704', '37', '2', '0', '枣庄市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370402', '3704', '3', '100', '市中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370403', '3704', '3', '100', '薛城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370404', '3704', '3', '100', '峄城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370405', '3704', '3', '100', '台儿庄区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370406', '3704', '3', '100', '山亭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370481', '3704', '3', '100', '滕州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3705', '37', '2', '0', '东营市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370502', '3705', '3', '100', '东营区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370503', '3705', '3', '100', '河口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370505', '3705', '3', '100', '垦利区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370522', '3705', '3', '100', '利津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370523', '3705', '3', '100', '广饶县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370571', '3705', '3', '100', '东营经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370572', '3705', '3', '100', '东营港经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3706', '37', '2', '0', '烟台市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370602', '3706', '3', '100', '芝罘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370611', '3706', '3', '100', '福山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370612', '3706', '3', '100', '牟平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370613', '3706', '3', '100', '莱山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370634', '3706', '3', '100', '长岛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370671', '3706', '3', '100', '烟台高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370672', '3706', '3', '100', '烟台经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370681', '3706', '3', '100', '龙口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370682', '3706', '3', '100', '莱阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370683', '3706', '3', '100', '莱州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370684', '3706', '3', '100', '蓬莱市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370685', '3706', '3', '100', '招远市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370686', '3706', '3', '100', '栖霞市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370687', '3706', '3', '100', '海阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3707', '37', '2', '0', '潍坊市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370702', '3707', '3', '100', '潍城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370703', '3707', '3', '100', '寒亭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370704', '3707', '3', '100', '坊子区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370705', '3707', '3', '100', '奎文区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370724', '3707', '3', '100', '临朐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370725', '3707', '3', '100', '昌乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370772', '3707', '3', '100', '潍坊滨海经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370781', '3707', '3', '100', '青州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370782', '3707', '3', '100', '诸城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370783', '3707', '3', '100', '寿光市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370784', '3707', '3', '100', '安丘市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370785', '3707', '3', '100', '高密市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370786', '3707', '3', '100', '昌邑市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3708', '37', '2', '0', '济宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370811', '3708', '3', '100', '任城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370812', '3708', '3', '100', '兖州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370826', '3708', '3', '100', '微山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370827', '3708', '3', '100', '鱼台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370828', '3708', '3', '100', '金乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370829', '3708', '3', '100', '嘉祥县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370830', '3708', '3', '100', '汶上县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370831', '3708', '3', '100', '泗水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370832', '3708', '3', '100', '梁山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370871', '3708', '3', '100', '济宁高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370881', '3708', '3', '100', '曲阜市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370883', '3708', '3', '100', '邹城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3709', '37', '2', '0', '泰安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370902', '3709', '3', '100', '泰山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370911', '3709', '3', '100', '岱岳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370921', '3709', '3', '100', '宁阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370923', '3709', '3', '100', '东平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370982', '3709', '3', '100', '新泰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('370983', '3709', '3', '100', '肥城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3710', '37', '2', '0', '威海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371002', '3710', '3', '100', '环翠区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371003', '3710', '3', '100', '文登区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371071', '3710', '3', '100', '威海火炬高技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371072', '3710', '3', '100', '威海经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371073', '3710', '3', '100', '威海临港经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371082', '3710', '3', '100', '荣成市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371083', '3710', '3', '100', '乳山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3711', '37', '2', '0', '日照市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371102', '3711', '3', '100', '东港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371103', '3711', '3', '100', '岚山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371121', '3711', '3', '100', '五莲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371122', '3711', '3', '100', '莒县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371171', '3711', '3', '100', '日照经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3712', '37', '2', '0', '莱芜市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371202', '3712', '3', '100', '莱城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371203', '3712', '3', '100', '钢城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3713', '37', '2', '0', '临沂市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371302', '3713', '3', '100', '兰山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371311', '3713', '3', '100', '罗庄区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371312', '3713', '3', '100', '河东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371321', '3713', '3', '100', '沂南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371322', '3713', '3', '100', '郯城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371323', '3713', '3', '100', '沂水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371324', '3713', '3', '100', '兰陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371325', '3713', '3', '100', '费县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371326', '3713', '3', '100', '平邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371327', '3713', '3', '100', '莒南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371328', '3713', '3', '100', '蒙阴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371329', '3713', '3', '100', '临沭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371371', '3713', '3', '100', '临沂高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371372', '3713', '3', '100', '临沂经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371373', '3713', '3', '100', '临沂临港经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3714', '37', '2', '0', '德州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371402', '3714', '3', '100', '德城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371403', '3714', '3', '100', '陵城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371422', '3714', '3', '100', '宁津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371423', '3714', '3', '100', '庆云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371424', '3714', '3', '100', '临邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371425', '3714', '3', '100', '齐河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371426', '3714', '3', '100', '平原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371427', '3714', '3', '100', '夏津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371428', '3714', '3', '100', '武城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371471', '3714', '3', '100', '德州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371472', '3714', '3', '100', '德州运河经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371481', '3714', '3', '100', '乐陵市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371482', '3714', '3', '100', '禹城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3715', '37', '2', '0', '聊城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371502', '3715', '3', '100', '东昌府区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371521', '3715', '3', '100', '阳谷县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371522', '3715', '3', '100', '莘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371523', '3715', '3', '100', '茌平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371524', '3715', '3', '100', '东阿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371525', '3715', '3', '100', '冠县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371526', '3715', '3', '100', '高唐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371581', '3715', '3', '100', '临清市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3716', '37', '2', '0', '滨州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371602', '3716', '3', '100', '滨城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371603', '3716', '3', '100', '沾化区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371621', '3716', '3', '100', '惠民县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371622', '3716', '3', '100', '阳信县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371623', '3716', '3', '100', '无棣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371625', '3716', '3', '100', '博兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371681', '3716', '3', '100', '邹平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('3717', '37', '2', '0', '菏泽市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371702', '3717', '3', '100', '牡丹区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371703', '3717', '3', '100', '定陶区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371721', '3717', '3', '100', '曹县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371722', '3717', '3', '100', '单县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371723', '3717', '3', '100', '成武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371724', '3717', '3', '100', '巨野县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371725', '3717', '3', '100', '郓城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371726', '3717', '3', '100', '鄄城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371728', '3717', '3', '100', '东明县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371771', '3717', '3', '100', '菏泽经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('371772', '3717', '3', '100', '菏泽高新技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('41', null, '1', '0', '河南省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4101', '41', '2', '0', '郑州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410102', '4101', '3', '100', '中原区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410103', '4101', '3', '100', '二七区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410104', '4101', '3', '100', '管城回族区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410105', '4101', '3', '100', '金水区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410106', '4101', '3', '100', '上街区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410108', '4101', '3', '100', '惠济区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410122', '4101', '3', '100', '中牟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410171', '4101', '3', '100', '郑州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410172', '4101', '3', '100', '郑州高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410173', '4101', '3', '100', '郑州航空港经济综合实验区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410181', '4101', '3', '100', '巩义市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410182', '4101', '3', '100', '荥阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410183', '4101', '3', '100', '新密市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410184', '4101', '3', '100', '新郑市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410185', '4101', '3', '100', '登封市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4102', '41', '2', '0', '开封市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410202', '4102', '3', '100', '龙亭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410203', '4102', '3', '100', '顺河回族区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410204', '4102', '3', '100', '鼓楼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410205', '4102', '3', '100', '禹王台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410212', '4102', '3', '100', '祥符区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410221', '4102', '3', '100', '杞县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410222', '4102', '3', '100', '通许县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410223', '4102', '3', '100', '尉氏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410225', '4102', '3', '100', '兰考县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4103', '41', '2', '0', '洛阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410302', '4103', '3', '100', '老城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410303', '4103', '3', '100', '西工区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410304', '4103', '3', '100', '?e河回族区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410305', '4103', '3', '100', '涧西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410306', '4103', '3', '100', '吉利区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410311', '4103', '3', '100', '洛龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410322', '4103', '3', '100', '孟津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410323', '4103', '3', '100', '新安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410324', '4103', '3', '100', '栾川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410325', '4103', '3', '100', '嵩县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410326', '4103', '3', '100', '汝阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410327', '4103', '3', '100', '宜阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410328', '4103', '3', '100', '洛宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410329', '4103', '3', '100', '伊川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410371', '4103', '3', '100', '洛阳高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410381', '4103', '3', '100', '偃师市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4104', '41', '2', '0', '平顶山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410402', '4104', '3', '100', '新华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410403', '4104', '3', '100', '卫东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410404', '4104', '3', '100', '石龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410411', '4104', '3', '100', '湛河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410421', '4104', '3', '100', '宝丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410422', '4104', '3', '100', '叶县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410423', '4104', '3', '100', '鲁山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410425', '4104', '3', '100', '郏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410471', '4104', '3', '100', '平顶山高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410472', '4104', '3', '100', '平顶山市新城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410481', '4104', '3', '100', '舞钢市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410482', '4104', '3', '100', '汝州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4105', '41', '2', '0', '安阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410502', '4105', '3', '100', '文峰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410503', '4105', '3', '100', '北关区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410505', '4105', '3', '100', '殷都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410506', '4105', '3', '100', '龙安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410522', '4105', '3', '100', '安阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410523', '4105', '3', '100', '汤阴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410526', '4105', '3', '100', '滑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410527', '4105', '3', '100', '内黄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410571', '4105', '3', '100', '安阳高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410581', '4105', '3', '100', '林州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4106', '41', '2', '0', '鹤壁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410602', '4106', '3', '100', '鹤山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410603', '4106', '3', '100', '山城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410611', '4106', '3', '100', '淇滨区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410621', '4106', '3', '100', '浚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410622', '4106', '3', '100', '淇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410671', '4106', '3', '100', '鹤壁经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4107', '41', '2', '0', '新乡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410702', '4107', '3', '100', '红旗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410703', '4107', '3', '100', '卫滨区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410704', '4107', '3', '100', '凤泉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410711', '4107', '3', '100', '牧野区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410721', '4107', '3', '100', '新乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410724', '4107', '3', '100', '获嘉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410725', '4107', '3', '100', '原阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410726', '4107', '3', '100', '延津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410727', '4107', '3', '100', '封丘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410728', '4107', '3', '100', '长垣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410771', '4107', '3', '100', '新乡高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410772', '4107', '3', '100', '新乡经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410773', '4107', '3', '100', '新乡市平原城乡一体化示范区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410781', '4107', '3', '100', '卫辉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410782', '4107', '3', '100', '辉县市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4108', '41', '2', '0', '焦作市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410802', '4108', '3', '100', '解放区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410803', '4108', '3', '100', '中站区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410804', '4108', '3', '100', '马村区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410811', '4108', '3', '100', '山阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410821', '4108', '3', '100', '修武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410822', '4108', '3', '100', '博爱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410823', '4108', '3', '100', '武陟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410825', '4108', '3', '100', '温县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410871', '4108', '3', '100', '焦作城乡一体化示范区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410882', '4108', '3', '100', '沁阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410883', '4108', '3', '100', '孟州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4109', '41', '2', '0', '濮阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410902', '4109', '3', '100', '华龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410922', '4109', '3', '100', '清丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410923', '4109', '3', '100', '南乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410926', '4109', '3', '100', '范县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410927', '4109', '3', '100', '台前县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410928', '4109', '3', '100', '濮阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410971', '4109', '3', '100', '河南濮阳工业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('410972', '4109', '3', '100', '濮阳经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4110', '41', '2', '0', '许昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411002', '4110', '3', '100', '魏都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411003', '4110', '3', '100', '建安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411024', '4110', '3', '100', '鄢陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411025', '4110', '3', '100', '襄城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411071', '4110', '3', '100', '许昌经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411081', '4110', '3', '100', '禹州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411082', '4110', '3', '100', '长葛市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4111', '41', '2', '0', '漯河市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411102', '4111', '3', '100', '源汇区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411103', '4111', '3', '100', '郾城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411104', '4111', '3', '100', '召陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411121', '4111', '3', '100', '舞阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411122', '4111', '3', '100', '临颍县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411171', '4111', '3', '100', '漯河经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4112', '41', '2', '0', '三门峡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411202', '4112', '3', '100', '湖滨区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411203', '4112', '3', '100', '陕州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411221', '4112', '3', '100', '渑池县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411224', '4112', '3', '100', '卢氏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411271', '4112', '3', '100', '河南三门峡经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411281', '4112', '3', '100', '义马市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411282', '4112', '3', '100', '灵宝市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4113', '41', '2', '0', '南阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411302', '4113', '3', '100', '宛城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411303', '4113', '3', '100', '卧龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411321', '4113', '3', '100', '南召县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411322', '4113', '3', '100', '方城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411323', '4113', '3', '100', '西峡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411324', '4113', '3', '100', '镇平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411325', '4113', '3', '100', '内乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411326', '4113', '3', '100', '淅川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411327', '4113', '3', '100', '社旗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411328', '4113', '3', '100', '唐河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411329', '4113', '3', '100', '新野县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411330', '4113', '3', '100', '桐柏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411371', '4113', '3', '100', '南阳高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411372', '4113', '3', '100', '南阳市城乡一体化示范区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411381', '4113', '3', '100', '邓州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4114', '41', '2', '0', '商丘市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411402', '4114', '3', '100', '梁园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411403', '4114', '3', '100', '睢阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411421', '4114', '3', '100', '民权县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411422', '4114', '3', '100', '睢县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411423', '4114', '3', '100', '宁陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411424', '4114', '3', '100', '柘城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411425', '4114', '3', '100', '虞城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411426', '4114', '3', '100', '夏邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411471', '4114', '3', '100', '豫东综合物流产业聚集区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411472', '4114', '3', '100', '河南商丘经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411481', '4114', '3', '100', '永城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4115', '41', '2', '0', '信阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411503', '4115', '3', '100', '平桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411521', '4115', '3', '100', '罗山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411522', '4115', '3', '100', '光山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411523', '4115', '3', '100', '新县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411524', '4115', '3', '100', '商城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411525', '4115', '3', '100', '固始县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411526', '4115', '3', '100', '潢川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411527', '4115', '3', '100', '淮滨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411528', '4115', '3', '100', '息县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411571', '4115', '3', '100', '信阳高新技术产业开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4116', '41', '2', '0', '周口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411602', '4116', '3', '100', '川汇区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411621', '4116', '3', '100', '扶沟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411622', '4116', '3', '100', '西华县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411623', '4116', '3', '100', '商水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411624', '4116', '3', '100', '沈丘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411625', '4116', '3', '100', '郸城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411626', '4116', '3', '100', '淮阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411627', '4116', '3', '100', '太康县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411628', '4116', '3', '100', '鹿邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411671', '4116', '3', '100', '河南周口经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411681', '4116', '3', '100', '项城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4117', '41', '2', '0', '驻马店市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411702', '4117', '3', '100', '驿城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411721', '4117', '3', '100', '西平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411722', '4117', '3', '100', '上蔡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411723', '4117', '3', '100', '平舆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411724', '4117', '3', '100', '正阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411725', '4117', '3', '100', '确山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411726', '4117', '3', '100', '泌阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411727', '4117', '3', '100', '汝南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411728', '4117', '3', '100', '遂平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411729', '4117', '3', '100', '新蔡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('411771', '4117', '3', '100', '河南驻马店经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4190', '41', '2', '0', '省直辖县级行政区划', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('419001', '4190', '3', '100', '济源市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('42', null, '1', '0', '湖北省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4201', '42', '2', '0', '武汉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420102', '4201', '3', '100', '江岸区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420103', '4201', '3', '100', '江汉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420104', '4201', '3', '100', '?口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420105', '4201', '3', '100', '汉阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420106', '4201', '3', '100', '武昌区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420107', '4201', '3', '100', '青山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420111', '4201', '3', '100', '洪山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420112', '4201', '3', '100', '东西湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420113', '4201', '3', '100', '汉南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420114', '4201', '3', '100', '蔡甸区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420115', '4201', '3', '100', '江夏区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420116', '4201', '3', '100', '黄陂区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420117', '4201', '3', '100', '新洲区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4202', '42', '2', '0', '黄石市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420202', '4202', '3', '100', '黄石港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420203', '4202', '3', '100', '西塞山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420204', '4202', '3', '100', '下陆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420205', '4202', '3', '100', '铁山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420222', '4202', '3', '100', '阳新县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420281', '4202', '3', '100', '大冶市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4203', '42', '2', '0', '十堰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420302', '4203', '3', '100', '茅箭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420303', '4203', '3', '100', '张湾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420304', '4203', '3', '100', '郧阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420322', '4203', '3', '100', '郧西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420323', '4203', '3', '100', '竹山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420324', '4203', '3', '100', '竹溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420325', '4203', '3', '100', '房县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420381', '4203', '3', '100', '丹江口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4205', '42', '2', '0', '宜昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420502', '4205', '3', '100', '西陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420503', '4205', '3', '100', '伍家岗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420504', '4205', '3', '100', '点军区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420505', '4205', '3', '100', '?亭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420506', '4205', '3', '100', '夷陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420525', '4205', '3', '100', '远安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420526', '4205', '3', '100', '兴山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420527', '4205', '3', '100', '秭归县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420528', '4205', '3', '100', '长阳土家族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420529', '4205', '3', '100', '五峰土家族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420581', '4205', '3', '100', '宜都市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420582', '4205', '3', '100', '当阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420583', '4205', '3', '100', '枝江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4206', '42', '2', '0', '襄阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420602', '4206', '3', '100', '襄城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420606', '4206', '3', '100', '樊城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420607', '4206', '3', '100', '襄州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420624', '4206', '3', '100', '南漳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420625', '4206', '3', '100', '谷城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420626', '4206', '3', '100', '保康县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420682', '4206', '3', '100', '老河口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420683', '4206', '3', '100', '枣阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420684', '4206', '3', '100', '宜城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4207', '42', '2', '0', '鄂州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420702', '4207', '3', '100', '梁子湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420703', '4207', '3', '100', '华容区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420704', '4207', '3', '100', '鄂城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4208', '42', '2', '0', '荆门市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420802', '4208', '3', '100', '东宝区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420804', '4208', '3', '100', '掇刀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420822', '4208', '3', '100', '沙洋县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420881', '4208', '3', '100', '钟祥市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420882', '4208', '3', '100', '京山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4209', '42', '2', '0', '孝感市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420902', '4209', '3', '100', '孝南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420921', '4209', '3', '100', '孝昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420922', '4209', '3', '100', '大悟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420923', '4209', '3', '100', '云梦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420981', '4209', '3', '100', '应城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420982', '4209', '3', '100', '安陆市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('420984', '4209', '3', '100', '汉川市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4210', '42', '2', '0', '荆州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421002', '4210', '3', '100', '沙市区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421003', '4210', '3', '100', '荆州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421022', '4210', '3', '100', '公安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421023', '4210', '3', '100', '监利县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421024', '4210', '3', '100', '江陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421071', '4210', '3', '100', '荆州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421081', '4210', '3', '100', '石首市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421083', '4210', '3', '100', '洪湖市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421087', '4210', '3', '100', '松滋市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4211', '42', '2', '0', '黄冈市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421102', '4211', '3', '100', '黄州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421121', '4211', '3', '100', '团风县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421122', '4211', '3', '100', '红安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421123', '4211', '3', '100', '罗田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421124', '4211', '3', '100', '英山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421125', '4211', '3', '100', '浠水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421126', '4211', '3', '100', '蕲春县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421127', '4211', '3', '100', '黄梅县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421171', '4211', '3', '100', '龙感湖管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421181', '4211', '3', '100', '麻城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421182', '4211', '3', '100', '武穴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4212', '42', '2', '0', '咸宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421202', '4212', '3', '100', '咸安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421221', '4212', '3', '100', '嘉鱼县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421222', '4212', '3', '100', '通城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421223', '4212', '3', '100', '崇阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421224', '4212', '3', '100', '通山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421281', '4212', '3', '100', '赤壁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4213', '42', '2', '0', '随州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421303', '4213', '3', '100', '曾都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421321', '4213', '3', '100', '随县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('421381', '4213', '3', '100', '广水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4228', '42', '2', '0', '恩施土家族苗族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422801', '4228', '3', '100', '恩施市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422802', '4228', '3', '100', '利川市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422822', '4228', '3', '100', '建始县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422823', '4228', '3', '100', '巴东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422825', '4228', '3', '100', '宣恩县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422826', '4228', '3', '100', '咸丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422827', '4228', '3', '100', '来凤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('422828', '4228', '3', '100', '鹤峰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4290', '42', '2', '0', '省直辖县级行政区划', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('429004', '4290', '3', '100', '仙桃市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('429005', '4290', '3', '100', '潜江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('429006', '4290', '3', '100', '天门市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('429021', '4290', '3', '100', '神农架林区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('43', null, '1', '0', '湖南省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4301', '43', '2', '0', '长沙市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430102', '4301', '3', '100', '芙蓉区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430103', '4301', '3', '100', '天心区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430104', '4301', '3', '100', '岳麓区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430105', '4301', '3', '100', '开福区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430111', '4301', '3', '100', '雨花区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430112', '4301', '3', '100', '望城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430121', '4301', '3', '100', '长沙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430181', '4301', '3', '100', '浏阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430182', '4301', '3', '100', '宁乡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4302', '43', '2', '0', '株洲市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430202', '4302', '3', '100', '荷塘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430203', '4302', '3', '100', '芦淞区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430204', '4302', '3', '100', '石峰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430211', '4302', '3', '100', '天元区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430212', '4302', '3', '100', '渌口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430223', '4302', '3', '100', '攸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430224', '4302', '3', '100', '茶陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430225', '4302', '3', '100', '炎陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430271', '4302', '3', '100', '云龙示范区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430281', '4302', '3', '100', '醴陵市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4303', '43', '2', '0', '湘潭市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430302', '4303', '3', '100', '雨湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430304', '4303', '3', '100', '岳塘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430321', '4303', '3', '100', '湘潭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430371', '4303', '3', '100', '湖南湘潭高新技术产业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430372', '4303', '3', '100', '湘潭昭山示范区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430373', '4303', '3', '100', '湘潭九华示范区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430381', '4303', '3', '100', '湘乡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430382', '4303', '3', '100', '韶山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4304', '43', '2', '0', '衡阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430405', '4304', '3', '100', '珠晖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430406', '4304', '3', '100', '雁峰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430407', '4304', '3', '100', '石鼓区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430408', '4304', '3', '100', '蒸湘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430412', '4304', '3', '100', '南岳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430421', '4304', '3', '100', '衡阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430422', '4304', '3', '100', '衡南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430423', '4304', '3', '100', '衡山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430424', '4304', '3', '100', '衡东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430426', '4304', '3', '100', '祁东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430471', '4304', '3', '100', '衡阳综合保税区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430472', '4304', '3', '100', '湖南衡阳高新技术产业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430473', '4304', '3', '100', '湖南衡阳松木经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430481', '4304', '3', '100', '耒阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430482', '4304', '3', '100', '常宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4305', '43', '2', '0', '邵阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430502', '4305', '3', '100', '双清区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430503', '4305', '3', '100', '大祥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430511', '4305', '3', '100', '北塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430521', '4305', '3', '100', '邵东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430522', '4305', '3', '100', '新邵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430523', '4305', '3', '100', '邵阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430524', '4305', '3', '100', '隆回县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430525', '4305', '3', '100', '洞口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430527', '4305', '3', '100', '绥宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430528', '4305', '3', '100', '新宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430529', '4305', '3', '100', '城步苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430581', '4305', '3', '100', '武冈市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4306', '43', '2', '0', '岳阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430602', '4306', '3', '100', '岳阳楼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430603', '4306', '3', '100', '云溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430611', '4306', '3', '100', '君山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430621', '4306', '3', '100', '岳阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430623', '4306', '3', '100', '华容县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430624', '4306', '3', '100', '湘阴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430626', '4306', '3', '100', '平江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430671', '4306', '3', '100', '岳阳市屈原管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430681', '4306', '3', '100', '汨罗市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430682', '4306', '3', '100', '临湘市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4307', '43', '2', '0', '常德市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430702', '4307', '3', '100', '武陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430703', '4307', '3', '100', '鼎城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430721', '4307', '3', '100', '安乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430722', '4307', '3', '100', '汉寿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430723', '4307', '3', '100', '澧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430724', '4307', '3', '100', '临澧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430725', '4307', '3', '100', '桃源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430726', '4307', '3', '100', '石门县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430771', '4307', '3', '100', '常德市西洞庭管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430781', '4307', '3', '100', '津市市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4308', '43', '2', '0', '张家界市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430802', '4308', '3', '100', '永定区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430811', '4308', '3', '100', '武陵源区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430821', '4308', '3', '100', '慈利县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430822', '4308', '3', '100', '桑植县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4309', '43', '2', '0', '益阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430902', '4309', '3', '100', '资阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430903', '4309', '3', '100', '赫山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430921', '4309', '3', '100', '南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430922', '4309', '3', '100', '桃江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430923', '4309', '3', '100', '安化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430971', '4309', '3', '100', '益阳市大通湖管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430972', '4309', '3', '100', '湖南益阳高新技术产业园区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('430981', '4309', '3', '100', '沅江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4310', '43', '2', '0', '郴州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431002', '4310', '3', '100', '北湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431003', '4310', '3', '100', '苏仙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431021', '4310', '3', '100', '桂阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431022', '4310', '3', '100', '宜章县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431023', '4310', '3', '100', '永兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431024', '4310', '3', '100', '嘉禾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431025', '4310', '3', '100', '临武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431026', '4310', '3', '100', '汝城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431027', '4310', '3', '100', '桂东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431028', '4310', '3', '100', '安仁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431081', '4310', '3', '100', '资兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4311', '43', '2', '0', '永州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431102', '4311', '3', '100', '零陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431103', '4311', '3', '100', '冷水滩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431121', '4311', '3', '100', '祁阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431122', '4311', '3', '100', '东安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431123', '4311', '3', '100', '双牌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431124', '4311', '3', '100', '道县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431125', '4311', '3', '100', '江永县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431126', '4311', '3', '100', '宁远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431127', '4311', '3', '100', '蓝山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431128', '4311', '3', '100', '新田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431129', '4311', '3', '100', '江华瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431171', '4311', '3', '100', '永州经济技术开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431172', '4311', '3', '100', '永州市金洞管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431173', '4311', '3', '100', '永州市回龙圩管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4312', '43', '2', '0', '怀化市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431202', '4312', '3', '100', '鹤城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431221', '4312', '3', '100', '中方县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431222', '4312', '3', '100', '沅陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431223', '4312', '3', '100', '辰溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431224', '4312', '3', '100', '溆浦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431225', '4312', '3', '100', '会同县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431226', '4312', '3', '100', '麻阳苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431227', '4312', '3', '100', '新晃侗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431228', '4312', '3', '100', '芷江侗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431229', '4312', '3', '100', '靖州苗族侗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431230', '4312', '3', '100', '通道侗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431271', '4312', '3', '100', '怀化市洪江管理区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431281', '4312', '3', '100', '洪江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4313', '43', '2', '0', '娄底市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431302', '4313', '3', '100', '娄星区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431321', '4313', '3', '100', '双峰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431322', '4313', '3', '100', '新化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431381', '4313', '3', '100', '冷水江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('431382', '4313', '3', '100', '涟源市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4331', '43', '2', '0', '湘西土家族苗族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433101', '4331', '3', '100', '吉首市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433122', '4331', '3', '100', '泸溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433123', '4331', '3', '100', '凤凰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433124', '4331', '3', '100', '花垣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433125', '4331', '3', '100', '保靖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433126', '4331', '3', '100', '古丈县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433127', '4331', '3', '100', '永顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433130', '4331', '3', '100', '龙山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433172', '4331', '3', '100', '湖南吉首经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('433173', '4331', '3', '100', '湖南永顺经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('44', null, '1', '0', '广东省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4401', '44', '2', '0', '广州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440103', '4401', '3', '100', '荔湾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440104', '4401', '3', '100', '越秀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440105', '4401', '3', '100', '海珠区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440106', '4401', '3', '100', '天河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440111', '4401', '3', '100', '白云区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440112', '4401', '3', '100', '黄埔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440113', '4401', '3', '100', '番禺区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440114', '4401', '3', '100', '花都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440115', '4401', '3', '100', '南沙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440117', '4401', '3', '100', '从化区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440118', '4401', '3', '100', '增城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4402', '44', '2', '0', '韶关市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440203', '4402', '3', '100', '武江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440204', '4402', '3', '100', '浈江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440205', '4402', '3', '100', '曲江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440222', '4402', '3', '100', '始兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440224', '4402', '3', '100', '仁化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440229', '4402', '3', '100', '翁源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440232', '4402', '3', '100', '乳源瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440233', '4402', '3', '100', '新丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440281', '4402', '3', '100', '乐昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440282', '4402', '3', '100', '南雄市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4403', '44', '2', '0', '深圳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440303', '4403', '3', '100', '罗湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440304', '4403', '3', '100', '福田区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440305', '4403', '3', '100', '南山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440306', '4403', '3', '100', '宝安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440307', '4403', '3', '100', '龙岗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440308', '4403', '3', '100', '盐田区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440309', '4403', '3', '100', '龙华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440310', '4403', '3', '100', '坪山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440311', '4403', '3', '100', '光明区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4404', '44', '2', '0', '珠海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440402', '4404', '3', '100', '香洲区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440403', '4404', '3', '100', '斗门区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440404', '4404', '3', '100', '金湾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4405', '44', '2', '0', '汕头市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440507', '4405', '3', '100', '龙湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440511', '4405', '3', '100', '金平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440512', '4405', '3', '100', '濠江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440513', '4405', '3', '100', '潮阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440514', '4405', '3', '100', '潮南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440515', '4405', '3', '100', '澄海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440523', '4405', '3', '100', '南澳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4406', '44', '2', '0', '佛山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440604', '4406', '3', '100', '禅城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440605', '4406', '3', '100', '南海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440606', '4406', '3', '100', '顺德区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440607', '4406', '3', '100', '三水区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440608', '4406', '3', '100', '高明区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4407', '44', '2', '0', '江门市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440703', '4407', '3', '100', '蓬江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440704', '4407', '3', '100', '江海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440705', '4407', '3', '100', '新会区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440781', '4407', '3', '100', '台山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440783', '4407', '3', '100', '开平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440784', '4407', '3', '100', '鹤山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440785', '4407', '3', '100', '恩平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4408', '44', '2', '0', '湛江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440802', '4408', '3', '100', '赤坎区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440803', '4408', '3', '100', '霞山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440804', '4408', '3', '100', '坡头区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440811', '4408', '3', '100', '麻章区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440823', '4408', '3', '100', '遂溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440825', '4408', '3', '100', '徐闻县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440881', '4408', '3', '100', '廉江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440882', '4408', '3', '100', '雷州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440883', '4408', '3', '100', '吴川市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4409', '44', '2', '0', '茂名市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440902', '4409', '3', '100', '茂南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440904', '4409', '3', '100', '电白区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440981', '4409', '3', '100', '高州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440982', '4409', '3', '100', '化州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('440983', '4409', '3', '100', '信宜市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4412', '44', '2', '0', '肇庆市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441202', '4412', '3', '100', '端州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441203', '4412', '3', '100', '鼎湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441204', '4412', '3', '100', '高要区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441223', '4412', '3', '100', '广宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441224', '4412', '3', '100', '怀集县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441225', '4412', '3', '100', '封开县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441226', '4412', '3', '100', '德庆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441284', '4412', '3', '100', '四会市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4413', '44', '2', '0', '惠州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441302', '4413', '3', '100', '惠城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441303', '4413', '3', '100', '惠阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441322', '4413', '3', '100', '博罗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441323', '4413', '3', '100', '惠东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441324', '4413', '3', '100', '龙门县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4414', '44', '2', '0', '梅州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441402', '4414', '3', '100', '梅江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441403', '4414', '3', '100', '梅县区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441422', '4414', '3', '100', '大埔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441423', '4414', '3', '100', '丰顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441424', '4414', '3', '100', '五华县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441426', '4414', '3', '100', '平远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441427', '4414', '3', '100', '蕉岭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441481', '4414', '3', '100', '兴宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4415', '44', '2', '0', '汕尾市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441502', '4415', '3', '100', '城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441521', '4415', '3', '100', '海丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441523', '4415', '3', '100', '陆河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441581', '4415', '3', '100', '陆丰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4416', '44', '2', '0', '河源市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441602', '4416', '3', '100', '源城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441621', '4416', '3', '100', '紫金县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441622', '4416', '3', '100', '龙川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441623', '4416', '3', '100', '连平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441624', '4416', '3', '100', '和平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441625', '4416', '3', '100', '东源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4417', '44', '2', '0', '阳江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441702', '4417', '3', '100', '江城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441704', '4417', '3', '100', '阳东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441721', '4417', '3', '100', '阳西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441781', '4417', '3', '100', '阳春市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4418', '44', '2', '0', '清远市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441802', '4418', '3', '100', '清城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441803', '4418', '3', '100', '清新区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441821', '4418', '3', '100', '佛冈县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441823', '4418', '3', '100', '阳山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441825', '4418', '3', '100', '连山壮族瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441826', '4418', '3', '100', '连南瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441881', '4418', '3', '100', '英德市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441882', '4418', '3', '100', '连州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4419', '44', '2', '0', '东莞市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900003', '4419', '3', '100', '东城街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900004', '4419', '3', '100', '南城街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900005', '4419', '3', '100', '万江街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900006', '4419', '3', '100', '莞城街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900101', '4419', '3', '100', '石碣镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900102', '4419', '3', '100', '石龙镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900103', '4419', '3', '100', '茶山镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900104', '4419', '3', '100', '石排镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900105', '4419', '3', '100', '企石镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900106', '4419', '3', '100', '横沥镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900107', '4419', '3', '100', '桥头镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900108', '4419', '3', '100', '谢岗镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900109', '4419', '3', '100', '东坑镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900110', '4419', '3', '100', '常平镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900111', '4419', '3', '100', '寮步镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900112', '4419', '3', '100', '樟木头镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900113', '4419', '3', '100', '大朗镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900114', '4419', '3', '100', '黄江镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900115', '4419', '3', '100', '清溪镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900116', '4419', '3', '100', '塘厦镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900117', '4419', '3', '100', '凤岗镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900118', '4419', '3', '100', '大岭山镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900119', '4419', '3', '100', '长安镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900121', '4419', '3', '100', '虎门镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900122', '4419', '3', '100', '厚街镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900123', '4419', '3', '100', '沙田镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900125', '4419', '3', '100', '洪梅镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900126', '4419', '3', '100', '麻涌镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900127', '4419', '3', '100', '望牛墩镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900128', '4419', '3', '100', '中堂镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900401', '4419', '3', '100', '松山湖管委会', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900402', '4419', '3', '100', '东莞港', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('441900403', '4419', '3', '100', '东莞生态园', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4420', '44', '2', '0', '中山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000001', '4420', '3', '100', '石岐区街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000002', '4420', '3', '100', '东区街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000003', '4420', '3', '100', '火炬开发区街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000004', '4420', '3', '100', '西区街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000005', '4420', '3', '100', '南区街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000006', '4420', '3', '100', '五桂山街道办事处', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000100', '4420', '3', '100', '小榄镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000101', '4420', '3', '100', '黄圃镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000102', '4420', '3', '100', '民众镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000103', '4420', '3', '100', '东凤镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000104', '4420', '3', '100', '东升镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000105', '4420', '3', '100', '古镇镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000106', '4420', '3', '100', '沙溪镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000107', '4420', '3', '100', '坦洲镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000108', '4420', '3', '100', '港口镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000109', '4420', '3', '100', '三角镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000110', '4420', '3', '100', '横栏镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000111', '4420', '3', '100', '南头镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000112', '4420', '3', '100', '阜沙镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000113', '4420', '3', '100', '南朗镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000114', '4420', '3', '100', '三乡镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000115', '4420', '3', '100', '板芙镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000116', '4420', '3', '100', '大涌镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('442000117', '4420', '3', '100', '神湾镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4451', '44', '2', '0', '潮州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445102', '4451', '3', '100', '湘桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445103', '4451', '3', '100', '潮安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445122', '4451', '3', '100', '饶平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4452', '44', '2', '0', '揭阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445202', '4452', '3', '100', '榕城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445203', '4452', '3', '100', '揭东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445222', '4452', '3', '100', '揭西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445224', '4452', '3', '100', '惠来县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445281', '4452', '3', '100', '普宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4453', '44', '2', '0', '云浮市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445302', '4453', '3', '100', '云城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445303', '4453', '3', '100', '云安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445321', '4453', '3', '100', '新兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445322', '4453', '3', '100', '郁南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('445381', '4453', '3', '100', '罗定市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('45', null, '1', '0', '广西壮族自治区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4501', '45', '2', '0', '南宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450102', '4501', '3', '100', '兴宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450103', '4501', '3', '100', '青秀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450105', '4501', '3', '100', '江南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450107', '4501', '3', '100', '西乡塘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450108', '4501', '3', '100', '良庆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450109', '4501', '3', '100', '邕宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450110', '4501', '3', '100', '武鸣区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450123', '4501', '3', '100', '隆安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450124', '4501', '3', '100', '马山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450125', '4501', '3', '100', '上林县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450126', '4501', '3', '100', '宾阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450127', '4501', '3', '100', '横县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4502', '45', '2', '0', '柳州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450202', '4502', '3', '100', '城中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450203', '4502', '3', '100', '鱼峰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450204', '4502', '3', '100', '柳南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450205', '4502', '3', '100', '柳北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450206', '4502', '3', '100', '柳江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450222', '4502', '3', '100', '柳城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450223', '4502', '3', '100', '鹿寨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450224', '4502', '3', '100', '融安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450225', '4502', '3', '100', '融水苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450226', '4502', '3', '100', '三江侗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4503', '45', '2', '0', '桂林市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450302', '4503', '3', '100', '秀峰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450303', '4503', '3', '100', '叠彩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450304', '4503', '3', '100', '象山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450305', '4503', '3', '100', '七星区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450311', '4503', '3', '100', '雁山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450312', '4503', '3', '100', '临桂区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450321', '4503', '3', '100', '阳朔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450323', '4503', '3', '100', '灵川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450324', '4503', '3', '100', '全州县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450325', '4503', '3', '100', '兴安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450326', '4503', '3', '100', '永福县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450327', '4503', '3', '100', '灌阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450328', '4503', '3', '100', '龙胜各族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450329', '4503', '3', '100', '资源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450330', '4503', '3', '100', '平乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450332', '4503', '3', '100', '恭城瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450381', '4503', '3', '100', '荔浦市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4504', '45', '2', '0', '梧州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450403', '4504', '3', '100', '万秀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450405', '4504', '3', '100', '长洲区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450406', '4504', '3', '100', '龙圩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450421', '4504', '3', '100', '苍梧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450422', '4504', '3', '100', '藤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450423', '4504', '3', '100', '蒙山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450481', '4504', '3', '100', '岑溪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4505', '45', '2', '0', '北海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450502', '4505', '3', '100', '海城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450503', '4505', '3', '100', '银海区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450512', '4505', '3', '100', '铁山港区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450521', '4505', '3', '100', '合浦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4506', '45', '2', '0', '防城港市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450602', '4506', '3', '100', '港口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450603', '4506', '3', '100', '防城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450621', '4506', '3', '100', '上思县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450681', '4506', '3', '100', '东兴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4507', '45', '2', '0', '钦州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450702', '4507', '3', '100', '钦南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450703', '4507', '3', '100', '钦北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450721', '4507', '3', '100', '灵山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450722', '4507', '3', '100', '浦北县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4508', '45', '2', '0', '贵港市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450802', '4508', '3', '100', '港北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450803', '4508', '3', '100', '港南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450804', '4508', '3', '100', '覃塘区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450821', '4508', '3', '100', '平南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450881', '4508', '3', '100', '桂平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4509', '45', '2', '0', '玉林市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450902', '4509', '3', '100', '玉州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450903', '4509', '3', '100', '福绵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450921', '4509', '3', '100', '容县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450922', '4509', '3', '100', '陆川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450923', '4509', '3', '100', '博白县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450924', '4509', '3', '100', '兴业县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('450981', '4509', '3', '100', '北流市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4510', '45', '2', '0', '百色市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451002', '4510', '3', '100', '右江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451021', '4510', '3', '100', '田阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451022', '4510', '3', '100', '田东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451023', '4510', '3', '100', '平果县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451024', '4510', '3', '100', '德保县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451026', '4510', '3', '100', '那坡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451027', '4510', '3', '100', '凌云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451028', '4510', '3', '100', '乐业县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451029', '4510', '3', '100', '田林县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451030', '4510', '3', '100', '西林县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451031', '4510', '3', '100', '隆林各族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451081', '4510', '3', '100', '靖西市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4511', '45', '2', '0', '贺州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451102', '4511', '3', '100', '八步区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451103', '4511', '3', '100', '平桂区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451121', '4511', '3', '100', '昭平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451122', '4511', '3', '100', '钟山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451123', '4511', '3', '100', '富川瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4512', '45', '2', '0', '河池市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451202', '4512', '3', '100', '金城江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451203', '4512', '3', '100', '宜州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451221', '4512', '3', '100', '南丹县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451222', '4512', '3', '100', '天峨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451223', '4512', '3', '100', '凤山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451224', '4512', '3', '100', '东兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451225', '4512', '3', '100', '罗城仫佬族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451226', '4512', '3', '100', '环江毛南族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451227', '4512', '3', '100', '巴马瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451228', '4512', '3', '100', '都安瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451229', '4512', '3', '100', '大化瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4513', '45', '2', '0', '来宾市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451302', '4513', '3', '100', '兴宾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451321', '4513', '3', '100', '忻城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451322', '4513', '3', '100', '象州县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451323', '4513', '3', '100', '武宣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451324', '4513', '3', '100', '金秀瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451381', '4513', '3', '100', '合山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4514', '45', '2', '0', '崇左市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451402', '4514', '3', '100', '江州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451421', '4514', '3', '100', '扶绥县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451422', '4514', '3', '100', '宁明县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451423', '4514', '3', '100', '龙州县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451424', '4514', '3', '100', '大新县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451425', '4514', '3', '100', '天等县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('451481', '4514', '3', '100', '凭祥市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('46', null, '1', '0', '海南省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4601', '46', '2', '0', '海口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460105', '4601', '3', '100', '秀英区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460106', '4601', '3', '100', '龙华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460107', '4601', '3', '100', '琼山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460108', '4601', '3', '100', '美兰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4602', '46', '2', '0', '三亚市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460202', '4602', '3', '100', '海棠区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460203', '4602', '3', '100', '吉阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460204', '4602', '3', '100', '天涯区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460205', '4602', '3', '100', '崖州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4603', '46', '2', '0', '三沙市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460321', '4603', '3', '0', '西沙群岛', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460322', '4603', '3', '0', '南沙群岛', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460323', '4603', '3', '0', '中沙群岛的岛礁及其海域', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4604', '46', '2', '0', '儋州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400100', '4604', '3', '100', '那大镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400101', '4604', '3', '100', '和庆镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400102', '4604', '3', '100', '南丰镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400103', '4604', '3', '100', '大成镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400104', '4604', '3', '100', '雅星镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400105', '4604', '3', '100', '兰洋镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400106', '4604', '3', '100', '光村镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400107', '4604', '3', '100', '木棠镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400108', '4604', '3', '100', '海头镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400109', '4604', '3', '100', '峨蔓镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400111', '4604', '3', '100', '王五镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400112', '4604', '3', '100', '白马井镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400113', '4604', '3', '100', '中和镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400114', '4604', '3', '100', '排浦镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400115', '4604', '3', '100', '东成镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400116', '4604', '3', '100', '新州镇', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400499', '4604', '3', '100', '洋浦经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('460400500', '4604', '3', '100', '华南热作学院', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('4690', '46', '2', '0', '省直辖县级行政区划', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469001', '4690', '3', '100', '五指山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469002', '4690', '3', '100', '琼海市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469005', '4690', '3', '100', '文昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469006', '4690', '3', '100', '万宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469007', '4690', '3', '100', '东方市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469021', '4690', '3', '100', '定安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469022', '4690', '3', '100', '屯昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469023', '4690', '3', '100', '澄迈县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469024', '4690', '3', '100', '临高县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469025', '4690', '3', '100', '白沙黎族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469026', '4690', '3', '100', '昌江黎族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469027', '4690', '3', '100', '乐东黎族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469028', '4690', '3', '100', '陵水黎族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469029', '4690', '3', '100', '保亭黎族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('469030', '4690', '3', '100', '琼中黎族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('50', null, '1', '0', '重庆市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5001', '50', '2', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500101', '5001', '3', '100', '万州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500102', '5001', '3', '100', '涪陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500103', '5001', '3', '100', '渝中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500104', '5001', '3', '100', '大渡口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500105', '5001', '3', '100', '江北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500106', '5001', '3', '100', '沙坪坝区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500107', '5001', '3', '100', '九龙坡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500108', '5001', '3', '100', '南岸区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500109', '5001', '3', '100', '北碚区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500110', '5001', '3', '100', '綦江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500111', '5001', '3', '100', '大足区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500112', '5001', '3', '100', '渝北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500113', '5001', '3', '100', '巴南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500114', '5001', '3', '100', '黔江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500115', '5001', '3', '100', '长寿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500116', '5001', '3', '100', '江津区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500117', '5001', '3', '100', '合川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500118', '5001', '3', '100', '永川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500119', '5001', '3', '100', '南川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500120', '5001', '3', '100', '璧山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500151', '5001', '3', '100', '铜梁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500152', '5001', '3', '100', '潼南区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500153', '5001', '3', '100', '荣昌区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500154', '5001', '3', '100', '开州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500155', '5001', '3', '100', '梁平区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500156', '5001', '3', '100', '武隆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5002', '50', '2', '0', '县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500229', '5002', '3', '100', '城口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500230', '5002', '3', '100', '丰都县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500231', '5002', '3', '100', '垫江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500233', '5002', '3', '100', '忠县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500235', '5002', '3', '100', '云阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500236', '5002', '3', '100', '奉节县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500237', '5002', '3', '100', '巫山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500238', '5002', '3', '100', '巫溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500240', '5002', '3', '100', '石柱土家族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500241', '5002', '3', '100', '秀山土家族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500242', '5002', '3', '100', '酉阳土家族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('500243', '5002', '3', '100', '彭水苗族土家族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('51', null, '1', '0', '四川省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5101', '51', '2', '0', '成都市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510104', '5101', '3', '100', '锦江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510105', '5101', '3', '100', '青羊区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510106', '5101', '3', '100', '金牛区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510107', '5101', '3', '100', '武侯区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510108', '5101', '3', '100', '成华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510112', '5101', '3', '100', '龙泉驿区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510113', '5101', '3', '100', '青白江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510114', '5101', '3', '100', '新都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510115', '5101', '3', '100', '温江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510116', '5101', '3', '100', '双流区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510117', '5101', '3', '100', '郫都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510121', '5101', '3', '100', '金堂县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510129', '5101', '3', '100', '大邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510131', '5101', '3', '100', '蒲江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510132', '5101', '3', '100', '新津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510181', '5101', '3', '100', '都江堰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510182', '5101', '3', '100', '彭州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510183', '5101', '3', '100', '邛崃市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510184', '5101', '3', '100', '崇州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510185', '5101', '3', '100', '简阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5103', '51', '2', '0', '自贡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510302', '5103', '3', '100', '自流井区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510303', '5103', '3', '100', '贡井区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510304', '5103', '3', '100', '大安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510311', '5103', '3', '100', '沿滩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510321', '5103', '3', '100', '荣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510322', '5103', '3', '100', '富顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5104', '51', '2', '0', '攀枝花市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510402', '5104', '3', '100', '东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510403', '5104', '3', '100', '西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510411', '5104', '3', '100', '仁和区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510421', '5104', '3', '100', '米易县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510422', '5104', '3', '100', '盐边县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5105', '51', '2', '0', '泸州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510502', '5105', '3', '100', '江阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510503', '5105', '3', '100', '纳溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510504', '5105', '3', '100', '龙马潭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510521', '5105', '3', '100', '泸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510522', '5105', '3', '100', '合江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510524', '5105', '3', '100', '叙永县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510525', '5105', '3', '100', '古蔺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5106', '51', '2', '0', '德阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510603', '5106', '3', '100', '旌阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510604', '5106', '3', '100', '罗江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510623', '5106', '3', '100', '中江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510681', '5106', '3', '100', '广汉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510682', '5106', '3', '100', '什邡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510683', '5106', '3', '100', '绵竹市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5107', '51', '2', '0', '绵阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510703', '5107', '3', '100', '涪城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510704', '5107', '3', '100', '游仙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510705', '5107', '3', '100', '安州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510722', '5107', '3', '100', '三台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510723', '5107', '3', '100', '盐亭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510725', '5107', '3', '100', '梓潼县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510726', '5107', '3', '100', '北川羌族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510727', '5107', '3', '100', '平武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510781', '5107', '3', '100', '江油市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5108', '51', '2', '0', '广元市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510802', '5108', '3', '100', '利州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510811', '5108', '3', '100', '昭化区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510812', '5108', '3', '100', '朝天区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510821', '5108', '3', '100', '旺苍县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510822', '5108', '3', '100', '青川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510823', '5108', '3', '100', '剑阁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510824', '5108', '3', '100', '苍溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5109', '51', '2', '0', '遂宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510903', '5109', '3', '100', '船山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510904', '5109', '3', '100', '安居区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510921', '5109', '3', '100', '蓬溪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510922', '5109', '3', '100', '射洪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('510923', '5109', '3', '100', '大英县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5110', '51', '2', '0', '内江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511002', '5110', '3', '100', '市中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511011', '5110', '3', '100', '东兴区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511024', '5110', '3', '100', '威远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511025', '5110', '3', '100', '资中县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511071', '5110', '3', '100', '内江经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511083', '5110', '3', '100', '隆昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5111', '51', '2', '0', '乐山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511102', '5111', '3', '100', '市中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511111', '5111', '3', '100', '沙湾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511112', '5111', '3', '100', '五通桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511113', '5111', '3', '100', '金口河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511123', '5111', '3', '100', '犍为县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511124', '5111', '3', '100', '井研县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511126', '5111', '3', '100', '夹江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511129', '5111', '3', '100', '沐川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511132', '5111', '3', '100', '峨边彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511133', '5111', '3', '100', '马边彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511181', '5111', '3', '100', '峨眉山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5113', '51', '2', '0', '南充市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511302', '5113', '3', '100', '顺庆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511303', '5113', '3', '100', '高坪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511304', '5113', '3', '100', '嘉陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511321', '5113', '3', '100', '南部县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511322', '5113', '3', '100', '营山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511323', '5113', '3', '100', '蓬安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511324', '5113', '3', '100', '仪陇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511325', '5113', '3', '100', '西充县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511381', '5113', '3', '100', '阆中市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5114', '51', '2', '0', '眉山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511402', '5114', '3', '100', '东坡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511403', '5114', '3', '100', '彭山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511421', '5114', '3', '100', '仁寿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511423', '5114', '3', '100', '洪雅县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511424', '5114', '3', '100', '丹棱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511425', '5114', '3', '100', '青神县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5115', '51', '2', '0', '宜宾市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511502', '5115', '3', '100', '翠屏区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511503', '5115', '3', '100', '南溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511504', '5115', '3', '100', '叙州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511523', '5115', '3', '100', '江安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511524', '5115', '3', '100', '长宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511525', '5115', '3', '100', '高县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511526', '5115', '3', '100', '珙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511527', '5115', '3', '100', '筠连县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511528', '5115', '3', '100', '兴文县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511529', '5115', '3', '100', '屏山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5116', '51', '2', '0', '广安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511602', '5116', '3', '100', '广安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511603', '5116', '3', '100', '前锋区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511621', '5116', '3', '100', '岳池县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511622', '5116', '3', '100', '武胜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511623', '5116', '3', '100', '邻水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511681', '5116', '3', '100', '华蓥市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5117', '51', '2', '0', '达州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511702', '5117', '3', '100', '通川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511703', '5117', '3', '100', '达川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511722', '5117', '3', '100', '宣汉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511723', '5117', '3', '100', '开江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511724', '5117', '3', '100', '大竹县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511725', '5117', '3', '100', '渠县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511771', '5117', '3', '100', '达州经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511781', '5117', '3', '100', '万源市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5118', '51', '2', '0', '雅安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511802', '5118', '3', '100', '雨城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511803', '5118', '3', '100', '名山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511822', '5118', '3', '100', '荥经县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511823', '5118', '3', '100', '汉源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511824', '5118', '3', '100', '石棉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511825', '5118', '3', '100', '天全县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511826', '5118', '3', '100', '芦山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511827', '5118', '3', '100', '宝兴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5119', '51', '2', '0', '巴中市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511902', '5119', '3', '100', '巴州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511903', '5119', '3', '100', '恩阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511921', '5119', '3', '100', '通江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511922', '5119', '3', '100', '南江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511923', '5119', '3', '100', '平昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('511971', '5119', '3', '100', '巴中经济开发区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5120', '51', '2', '0', '资阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('512002', '5120', '3', '100', '雁江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('512021', '5120', '3', '100', '安岳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('512022', '5120', '3', '100', '乐至县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5132', '51', '2', '0', '阿坝藏族羌族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513201', '5132', '3', '100', '马尔康市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513221', '5132', '3', '100', '汶川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513222', '5132', '3', '100', '理县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513223', '5132', '3', '100', '茂县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513224', '5132', '3', '100', '松潘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513225', '5132', '3', '100', '九寨沟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513226', '5132', '3', '100', '金川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513227', '5132', '3', '100', '小金县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513228', '5132', '3', '100', '黑水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513230', '5132', '3', '100', '壤塘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513231', '5132', '3', '100', '阿坝县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513232', '5132', '3', '100', '若尔盖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513233', '5132', '3', '100', '红原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5133', '51', '2', '0', '甘孜藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513301', '5133', '3', '100', '康定市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513322', '5133', '3', '100', '泸定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513323', '5133', '3', '100', '丹巴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513324', '5133', '3', '100', '九龙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513325', '5133', '3', '100', '雅江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513326', '5133', '3', '100', '道孚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513327', '5133', '3', '100', '炉霍县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513328', '5133', '3', '100', '甘孜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513329', '5133', '3', '100', '新龙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513330', '5133', '3', '100', '德格县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513331', '5133', '3', '100', '白玉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513332', '5133', '3', '100', '石渠县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513333', '5133', '3', '100', '色达县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513334', '5133', '3', '100', '理塘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513335', '5133', '3', '100', '巴塘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513336', '5133', '3', '100', '乡城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513337', '5133', '3', '100', '稻城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513338', '5133', '3', '100', '得荣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5134', '51', '2', '0', '凉山彝族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513401', '5134', '3', '100', '西昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513422', '5134', '3', '100', '木里藏族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513423', '5134', '3', '100', '盐源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513424', '5134', '3', '100', '德昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513425', '5134', '3', '100', '会理县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513426', '5134', '3', '100', '会东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513427', '5134', '3', '100', '宁南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513428', '5134', '3', '100', '普格县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513429', '5134', '3', '100', '布拖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513430', '5134', '3', '100', '金阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513431', '5134', '3', '100', '昭觉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513432', '5134', '3', '100', '喜德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513433', '5134', '3', '100', '冕宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513434', '5134', '3', '100', '越西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513435', '5134', '3', '100', '甘洛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513436', '5134', '3', '100', '美姑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('513437', '5134', '3', '100', '雷波县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('52', null, '1', '0', '贵州省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5201', '52', '2', '0', '贵阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520102', '5201', '3', '100', '南明区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520103', '5201', '3', '100', '云岩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520111', '5201', '3', '100', '花溪区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520112', '5201', '3', '100', '乌当区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520113', '5201', '3', '100', '白云区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520115', '5201', '3', '100', '观山湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520121', '5201', '3', '100', '开阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520122', '5201', '3', '100', '息烽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520123', '5201', '3', '100', '修文县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520181', '5201', '3', '100', '清镇市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5202', '52', '2', '0', '六盘水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520201', '5202', '3', '100', '钟山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520203', '5202', '3', '100', '六枝特区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520221', '5202', '3', '100', '水城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520281', '5202', '3', '100', '盘州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5203', '52', '2', '0', '遵义市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520302', '5203', '3', '100', '红花岗区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520303', '5203', '3', '100', '汇川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520304', '5203', '3', '100', '播州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520322', '5203', '3', '100', '桐梓县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520323', '5203', '3', '100', '绥阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520324', '5203', '3', '100', '正安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520325', '5203', '3', '100', '道真仡佬族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520326', '5203', '3', '100', '务川仡佬族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520327', '5203', '3', '100', '凤冈县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520328', '5203', '3', '100', '湄潭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520329', '5203', '3', '100', '余庆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520330', '5203', '3', '100', '习水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520381', '5203', '3', '100', '赤水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520382', '5203', '3', '100', '仁怀市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5204', '52', '2', '0', '安顺市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520402', '5204', '3', '100', '西秀区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520403', '5204', '3', '100', '平坝区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520422', '5204', '3', '100', '普定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520423', '5204', '3', '100', '镇宁布依族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520424', '5204', '3', '100', '关岭布依族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520425', '5204', '3', '100', '紫云苗族布依族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5205', '52', '2', '0', '毕节市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520502', '5205', '3', '100', '七星关区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520521', '5205', '3', '100', '大方县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520522', '5205', '3', '100', '黔西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520523', '5205', '3', '100', '金沙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520524', '5205', '3', '100', '织金县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520525', '5205', '3', '100', '纳雍县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520526', '5205', '3', '100', '威宁彝族回族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520527', '5205', '3', '100', '赫章县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5206', '52', '2', '0', '铜仁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520602', '5206', '3', '100', '碧江区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520603', '5206', '3', '100', '万山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520621', '5206', '3', '100', '江口县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520622', '5206', '3', '100', '玉屏侗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520623', '5206', '3', '100', '石阡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520624', '5206', '3', '100', '思南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520625', '5206', '3', '100', '印江土家族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520626', '5206', '3', '100', '德江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520627', '5206', '3', '100', '沿河土家族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('520628', '5206', '3', '100', '松桃苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5223', '52', '2', '0', '黔西南布依族苗族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522301', '5223', '3', '100', '兴义市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522302', '5223', '3', '100', '兴仁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522323', '5223', '3', '100', '普安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522324', '5223', '3', '100', '晴隆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522325', '5223', '3', '100', '贞丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522326', '5223', '3', '100', '望谟县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522327', '5223', '3', '100', '册亨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522328', '5223', '3', '100', '安龙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5226', '52', '2', '0', '黔东南苗族侗族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522601', '5226', '3', '100', '凯里市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522622', '5226', '3', '100', '黄平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522623', '5226', '3', '100', '施秉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522624', '5226', '3', '100', '三穗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522625', '5226', '3', '100', '镇远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522626', '5226', '3', '100', '岑巩县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522627', '5226', '3', '100', '天柱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522628', '5226', '3', '100', '锦屏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522629', '5226', '3', '100', '剑河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522630', '5226', '3', '100', '台江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522631', '5226', '3', '100', '黎平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522632', '5226', '3', '100', '榕江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522633', '5226', '3', '100', '从江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522634', '5226', '3', '100', '雷山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522635', '5226', '3', '100', '麻江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522636', '5226', '3', '100', '丹寨县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5227', '52', '2', '0', '黔南布依族苗族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522701', '5227', '3', '100', '都匀市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522702', '5227', '3', '100', '福泉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522722', '5227', '3', '100', '荔波县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522723', '5227', '3', '100', '贵定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522725', '5227', '3', '100', '瓮安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522726', '5227', '3', '100', '独山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522727', '5227', '3', '100', '平塘县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522728', '5227', '3', '100', '罗甸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522729', '5227', '3', '100', '长顺县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522730', '5227', '3', '100', '龙里县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522731', '5227', '3', '100', '惠水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('522732', '5227', '3', '100', '三都水族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('53', null, '1', '0', '云南省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5301', '53', '2', '0', '昆明市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530102', '5301', '3', '100', '五华区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530103', '5301', '3', '100', '盘龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530111', '5301', '3', '100', '官渡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530112', '5301', '3', '100', '西山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530113', '5301', '3', '100', '东川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530114', '5301', '3', '100', '呈贡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530115', '5301', '3', '100', '晋宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530124', '5301', '3', '100', '富民县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530125', '5301', '3', '100', '宜良县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530126', '5301', '3', '100', '石林彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530127', '5301', '3', '100', '嵩明县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530128', '5301', '3', '100', '禄劝彝族苗族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530129', '5301', '3', '100', '寻甸回族彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530181', '5301', '3', '100', '安宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5303', '53', '2', '0', '曲靖市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530302', '5303', '3', '100', '麒麟区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530303', '5303', '3', '100', '沾益区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530304', '5303', '3', '100', '马龙区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530322', '5303', '3', '100', '陆良县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530323', '5303', '3', '100', '师宗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530324', '5303', '3', '100', '罗平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530325', '5303', '3', '100', '富源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530326', '5303', '3', '100', '会泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530381', '5303', '3', '100', '宣威市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5304', '53', '2', '0', '玉溪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530402', '5304', '3', '100', '红塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530403', '5304', '3', '100', '江川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530422', '5304', '3', '100', '澄江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530423', '5304', '3', '100', '通海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530424', '5304', '3', '100', '华宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530425', '5304', '3', '100', '易门县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530426', '5304', '3', '100', '峨山彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530427', '5304', '3', '100', '新平彝族傣族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530428', '5304', '3', '100', '元江哈尼族彝族傣族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5305', '53', '2', '0', '保山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530502', '5305', '3', '100', '隆阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530521', '5305', '3', '100', '施甸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530523', '5305', '3', '100', '龙陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530524', '5305', '3', '100', '昌宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530581', '5305', '3', '100', '腾冲市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5306', '53', '2', '0', '昭通市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530602', '5306', '3', '100', '昭阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530621', '5306', '3', '100', '鲁甸县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530622', '5306', '3', '100', '巧家县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530623', '5306', '3', '100', '盐津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530624', '5306', '3', '100', '大关县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530625', '5306', '3', '100', '永善县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530626', '5306', '3', '100', '绥江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530627', '5306', '3', '100', '镇雄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530628', '5306', '3', '100', '彝良县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530629', '5306', '3', '100', '威信县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530681', '5306', '3', '100', '水富市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5307', '53', '2', '0', '丽江市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530702', '5307', '3', '100', '古城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530721', '5307', '3', '100', '玉龙纳西族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530722', '5307', '3', '100', '永胜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530723', '5307', '3', '100', '华坪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530724', '5307', '3', '100', '宁蒗彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5308', '53', '2', '0', '普洱市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530802', '5308', '3', '100', '思茅区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530821', '5308', '3', '100', '宁洱哈尼族彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530822', '5308', '3', '100', '墨江哈尼族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530823', '5308', '3', '100', '景东彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530824', '5308', '3', '100', '景谷傣族彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530825', '5308', '3', '100', '镇沅彝族哈尼族拉祜族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530826', '5308', '3', '100', '江城哈尼族彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530827', '5308', '3', '100', '孟连傣族拉祜族佤族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530828', '5308', '3', '100', '澜沧拉祜族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530829', '5308', '3', '100', '西盟佤族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5309', '53', '2', '0', '临沧市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530902', '5309', '3', '100', '临翔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530921', '5309', '3', '100', '凤庆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530922', '5309', '3', '100', '云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530923', '5309', '3', '100', '永德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530924', '5309', '3', '100', '镇康县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530925', '5309', '3', '100', '双江拉祜族佤族布朗族傣族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530926', '5309', '3', '100', '耿马傣族佤族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('530927', '5309', '3', '100', '沧源佤族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5323', '53', '2', '0', '楚雄彝族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532301', '5323', '3', '100', '楚雄市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532322', '5323', '3', '100', '双柏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532323', '5323', '3', '100', '牟定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532324', '5323', '3', '100', '南华县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532325', '5323', '3', '100', '姚安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532326', '5323', '3', '100', '大姚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532327', '5323', '3', '100', '永仁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532328', '5323', '3', '100', '元谋县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532329', '5323', '3', '100', '武定县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532331', '5323', '3', '100', '禄丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5325', '53', '2', '0', '红河哈尼族彝族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532524', '5325', '3', '0', '建水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532525', '5325', '3', '0', '石屏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532527', '5325', '3', '0', '泸西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532528', '5325', '3', '0', '元阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532529', '5325', '3', '0', '红河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532530', '5325', '3', '0', '金平苗族瑶族傣族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532531', '5325', '3', '0', '绿春县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532532', '5325', '3', '0', '河口瑶族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5326', '53', '2', '0', '文山壮族苗族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532601', '5326', '3', '0', '文山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532622', '5326', '3', '0', '砚山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532623', '5326', '3', '0', '西畴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532624', '5326', '3', '0', '麻栗坡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532625', '5326', '3', '0', '马关县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532626', '5326', '3', '0', '丘北县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532627', '5326', '3', '0', '广南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532628', '5326', '3', '0', '富宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5328', '53', '2', '0', '西双版纳傣族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532801', '5328', '3', '0', '景洪市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532822', '5328', '3', '0', '勐海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532823', '5328', '3', '0', '勐腊县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5329', '53', '2', '0', '大理白族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532901', '5329', '3', '0', '大理市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532922', '5329', '3', '0', '漾濞彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532923', '5329', '3', '0', '祥云县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532924', '5329', '3', '0', '宾川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532925', '5329', '3', '0', '弥渡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532926', '5329', '3', '0', '南涧彝族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532927', '5329', '3', '0', '巍山彝族回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532928', '5329', '3', '0', '永平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532929', '5329', '3', '0', '云龙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532930', '5329', '3', '0', '洱源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532931', '5329', '3', '0', '剑川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('532932', '5329', '3', '0', '鹤庆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5331', '53', '2', '0', '德宏傣族景颇族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533102', '5331', '3', '0', '瑞丽市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533103', '5331', '3', '0', '芒市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533122', '5331', '3', '0', '梁河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533123', '5331', '3', '0', '盈江县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533124', '5331', '3', '0', '陇川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5333', '53', '2', '0', '怒江傈僳族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533301', '5333', '3', '0', '泸水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533323', '5333', '3', '0', '福贡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533324', '5333', '3', '0', '贡山独龙族怒族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533325', '5333', '3', '0', '兰坪白族普米族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5334', '53', '2', '0', '迪庆藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533401', '5334', '3', '0', '香格里拉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533422', '5334', '3', '0', '德钦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('533423', '5334', '3', '0', '维西傈僳族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('54', null, '1', '0', '西藏自治区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5401', '54', '2', '0', '拉萨市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540101', '5401', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540102', '5401', '3', '0', '城关区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540103', '5401', '3', '0', '堆龙德庆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540121', '5401', '3', '0', '林周县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540122', '5401', '3', '0', '当雄县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540123', '5401', '3', '0', '尼木县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540124', '5401', '3', '0', '曲水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540126', '5401', '3', '0', '达孜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540127', '5401', '3', '0', '墨竹工卡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5402', '54', '2', '0', '日喀则市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540202', '5402', '3', '0', '桑珠孜区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540221', '5402', '3', '0', '南木林县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540222', '5402', '3', '0', '江孜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540223', '5402', '3', '0', '定日县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540224', '5402', '3', '0', '萨迦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540225', '5402', '3', '0', '拉孜县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540226', '5402', '3', '0', '昂仁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540227', '5402', '3', '0', '谢通门县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540228', '5402', '3', '0', '白朗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540229', '5402', '3', '0', '仁布县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540230', '5402', '3', '0', '康马县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540231', '5402', '3', '0', '定结县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540232', '5402', '3', '0', '仲巴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540233', '5402', '3', '0', '亚东县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540234', '5402', '3', '0', '吉隆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540235', '5402', '3', '0', '聂拉木县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540236', '5402', '3', '0', '萨嘎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540237', '5402', '3', '0', '岗巴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5403', '54', '2', '0', '昌都市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540302', '5403', '3', '0', '卡若区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540321', '5403', '3', '0', '江达县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540322', '5403', '3', '0', '贡觉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540323', '5403', '3', '0', '类乌齐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540324', '5403', '3', '0', '丁青县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540325', '5403', '3', '0', '察雅县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540326', '5403', '3', '0', '八宿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540327', '5403', '3', '0', '左贡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540328', '5403', '3', '0', '芒康县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540329', '5403', '3', '0', '洛隆县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540330', '5403', '3', '0', '边坝县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5404', '54', '2', '0', '林芝市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540402', '5404', '3', '0', '巴宜区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540421', '5404', '3', '0', '工布江达县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540422', '5404', '3', '0', '米林县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540423', '5404', '3', '0', '墨脱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540424', '5404', '3', '0', '波密县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540425', '5404', '3', '0', '察隅县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540426', '5404', '3', '0', '朗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5405', '54', '2', '0', '山南市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540501', '5405', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540502', '5405', '3', '0', '乃东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540521', '5405', '3', '0', '扎囊县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540522', '5405', '3', '0', '贡嘎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540523', '5405', '3', '0', '桑日县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540524', '5405', '3', '0', '琼结县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540525', '5405', '3', '0', '曲松县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540526', '5405', '3', '0', '措美县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540527', '5405', '3', '0', '洛扎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540528', '5405', '3', '0', '加查县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540529', '5405', '3', '0', '隆子县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540530', '5405', '3', '0', '错那县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('540531', '5405', '3', '0', '浪卡子县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5424', '54', '2', '0', '那曲地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542421', '5424', '3', '0', '那曲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542422', '5424', '3', '0', '嘉黎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542423', '5424', '3', '0', '比如县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542424', '5424', '3', '0', '聂荣县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542425', '5424', '3', '0', '安多县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542426', '5424', '3', '0', '申扎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542427', '5424', '3', '0', '索县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542428', '5424', '3', '0', '班戈县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542429', '5424', '3', '0', '巴青县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542430', '5424', '3', '0', '尼玛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542431', '5424', '3', '0', '双湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('5425', '54', '2', '0', '阿里地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542521', '5425', '3', '0', '普兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542522', '5425', '3', '0', '札达县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542523', '5425', '3', '0', '噶尔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542524', '5425', '3', '0', '日土县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542525', '5425', '3', '0', '革吉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542526', '5425', '3', '0', '改则县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('542527', '5425', '3', '0', '措勤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('61', null, '1', '0', '陕西省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6101', '61', '2', '0', '西安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610101', '6101', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610102', '6101', '3', '0', '新城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610103', '6101', '3', '0', '碑林区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610104', '6101', '3', '0', '莲湖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610111', '6101', '3', '0', '灞桥区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610112', '6101', '3', '0', '未央区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610113', '6101', '3', '0', '雁塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610114', '6101', '3', '0', '阎良区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610115', '6101', '3', '0', '临潼区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610116', '6101', '3', '0', '长安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610117', '6101', '3', '0', '高陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610122', '6101', '3', '0', '蓝田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610124', '6101', '3', '0', '周至县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610125', '6101', '3', '0', '户县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6102', '61', '2', '0', '铜川市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610201', '6102', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610202', '6102', '3', '0', '王益区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610203', '6102', '3', '0', '印台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610204', '6102', '3', '0', '耀州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610222', '6102', '3', '0', '宜君县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6103', '61', '2', '0', '宝鸡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610301', '6103', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610302', '6103', '3', '0', '渭滨区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610303', '6103', '3', '0', '金台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610304', '6103', '3', '0', '陈仓区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610322', '6103', '3', '0', '凤翔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610323', '6103', '3', '0', '岐山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610324', '6103', '3', '0', '扶风县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610326', '6103', '3', '0', '眉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610327', '6103', '3', '0', '陇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610328', '6103', '3', '0', '千阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610329', '6103', '3', '0', '麟游县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610330', '6103', '3', '0', '凤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610331', '6103', '3', '0', '太白县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6104', '61', '2', '0', '咸阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610401', '6104', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610402', '6104', '3', '0', '秦都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610403', '6104', '3', '0', '杨陵区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610404', '6104', '3', '0', '渭城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610422', '6104', '3', '0', '三原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610423', '6104', '3', '0', '泾阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610424', '6104', '3', '0', '乾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610425', '6104', '3', '0', '礼泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610426', '6104', '3', '0', '永寿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610427', '6104', '3', '0', '彬县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610428', '6104', '3', '0', '长武县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610429', '6104', '3', '0', '旬邑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610430', '6104', '3', '0', '淳化县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610431', '6104', '3', '0', '武功县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610481', '6104', '3', '0', '兴平市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6105', '61', '2', '0', '渭南市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610501', '6105', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610502', '6105', '3', '0', '临渭区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610503', '6105', '3', '0', '华州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610522', '6105', '3', '0', '潼关县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610523', '6105', '3', '0', '大荔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610524', '6105', '3', '0', '合阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610525', '6105', '3', '0', '澄城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610526', '6105', '3', '0', '蒲城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610527', '6105', '3', '0', '白水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610528', '6105', '3', '0', '富平县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610581', '6105', '3', '0', '韩城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610582', '6105', '3', '0', '华阴市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6106', '61', '2', '0', '延安市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610601', '6106', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610602', '6106', '3', '0', '宝塔区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610603', '6106', '3', '0', '安塞区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610621', '6106', '3', '0', '延长县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610622', '6106', '3', '0', '延川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610623', '6106', '3', '0', '子长县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610625', '6106', '3', '0', '志丹县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610626', '6106', '3', '0', '吴起县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610627', '6106', '3', '0', '甘泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610628', '6106', '3', '0', '富县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610629', '6106', '3', '0', '洛川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610630', '6106', '3', '0', '宜川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610631', '6106', '3', '0', '黄龙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610632', '6106', '3', '0', '黄陵县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6107', '61', '2', '0', '汉中市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610701', '6107', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610702', '6107', '3', '0', '汉台区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610721', '6107', '3', '0', '南郑县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610722', '6107', '3', '0', '城固县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610723', '6107', '3', '0', '洋县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610724', '6107', '3', '0', '西乡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610725', '6107', '3', '0', '勉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610726', '6107', '3', '0', '宁强县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610727', '6107', '3', '0', '略阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610728', '6107', '3', '0', '镇巴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610729', '6107', '3', '0', '留坝县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610730', '6107', '3', '0', '佛坪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6108', '61', '2', '0', '榆林市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610801', '6108', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610802', '6108', '3', '0', '榆阳区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610803', '6108', '3', '0', '横山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610821', '6108', '3', '0', '神木县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610822', '6108', '3', '0', '府谷县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610824', '6108', '3', '0', '靖边县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610825', '6108', '3', '0', '定边县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610826', '6108', '3', '0', '绥德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610827', '6108', '3', '0', '米脂县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610828', '6108', '3', '0', '佳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610829', '6108', '3', '0', '吴堡县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610830', '6108', '3', '0', '清涧县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610831', '6108', '3', '0', '子洲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6109', '61', '2', '0', '安康市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610901', '6109', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610902', '6109', '3', '0', '汉滨区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610921', '6109', '3', '0', '汉阴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610922', '6109', '3', '0', '石泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610923', '6109', '3', '0', '宁陕县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610924', '6109', '3', '0', '紫阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610925', '6109', '3', '0', '岚皋县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610926', '6109', '3', '0', '平利县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610927', '6109', '3', '0', '镇坪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610928', '6109', '3', '0', '旬阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('610929', '6109', '3', '0', '白河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6110', '61', '2', '0', '商洛市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611001', '6110', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611002', '6110', '3', '0', '商州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611021', '6110', '3', '0', '洛南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611022', '6110', '3', '0', '丹凤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611023', '6110', '3', '0', '商南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611024', '6110', '3', '0', '山阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611025', '6110', '3', '0', '镇安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('611026', '6110', '3', '0', '柞水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('62', null, '1', '0', '甘肃省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6201', '62', '2', '0', '兰州市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620101', '6201', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620102', '6201', '3', '0', '城关区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620103', '6201', '3', '0', '七里河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620104', '6201', '3', '0', '西固区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620105', '6201', '3', '0', '安宁区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620111', '6201', '3', '0', '红古区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620121', '6201', '3', '0', '永登县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620122', '6201', '3', '0', '皋兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620123', '6201', '3', '0', '榆中县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6202', '62', '2', '0', '嘉峪关市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620201', '6202', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6203', '62', '2', '0', '金昌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620301', '6203', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620302', '6203', '3', '0', '金川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620321', '6203', '3', '0', '永昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6204', '62', '2', '0', '白银市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620401', '6204', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620402', '6204', '3', '0', '白银区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620403', '6204', '3', '0', '平川区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620421', '6204', '3', '0', '靖远县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620422', '6204', '3', '0', '会宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620423', '6204', '3', '0', '景泰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6205', '62', '2', '0', '天水市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620501', '6205', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620502', '6205', '3', '0', '秦州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620503', '6205', '3', '0', '麦积区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620521', '6205', '3', '0', '清水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620522', '6205', '3', '0', '秦安县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620523', '6205', '3', '0', '甘谷县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620524', '6205', '3', '0', '武山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620525', '6205', '3', '0', '张家川回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6206', '62', '2', '0', '武威市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620601', '6206', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620602', '6206', '3', '0', '凉州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620621', '6206', '3', '0', '民勤县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620622', '6206', '3', '0', '古浪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620623', '6206', '3', '0', '天祝藏族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6207', '62', '2', '0', '张掖市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620701', '6207', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620702', '6207', '3', '0', '甘州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620721', '6207', '3', '0', '肃南裕固族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620722', '6207', '3', '0', '民乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620723', '6207', '3', '0', '临泽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620724', '6207', '3', '0', '高台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620725', '6207', '3', '0', '山丹县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6208', '62', '2', '0', '平凉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620801', '6208', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620802', '6208', '3', '0', '崆峒区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620821', '6208', '3', '0', '泾川县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620822', '6208', '3', '0', '灵台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620823', '6208', '3', '0', '崇信县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620824', '6208', '3', '0', '华亭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620825', '6208', '3', '0', '庄浪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620826', '6208', '3', '0', '静宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6209', '62', '2', '0', '酒泉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620901', '6209', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620902', '6209', '3', '0', '肃州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620921', '6209', '3', '0', '金塔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620922', '6209', '3', '0', '瓜州县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620923', '6209', '3', '0', '肃北蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620924', '6209', '3', '0', '阿克塞哈萨克族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620981', '6209', '3', '0', '玉门市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('620982', '6209', '3', '0', '敦煌市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6210', '62', '2', '0', '庆阳市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621001', '6210', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621002', '6210', '3', '0', '西峰区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621021', '6210', '3', '0', '庆城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621022', '6210', '3', '0', '环县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621023', '6210', '3', '0', '华池县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621024', '6210', '3', '0', '合水县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621025', '6210', '3', '0', '正宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621026', '6210', '3', '0', '宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621027', '6210', '3', '0', '镇原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6211', '62', '2', '0', '定西市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621101', '6211', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621102', '6211', '3', '0', '安定区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621121', '6211', '3', '0', '通渭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621122', '6211', '3', '0', '陇西县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621123', '6211', '3', '0', '渭源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621124', '6211', '3', '0', '临洮县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621125', '6211', '3', '0', '漳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621126', '6211', '3', '0', '岷县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6212', '62', '2', '0', '陇南市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621201', '6212', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621202', '6212', '3', '0', '武都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621221', '6212', '3', '0', '成县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621222', '6212', '3', '0', '文县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621223', '6212', '3', '0', '宕昌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621224', '6212', '3', '0', '康县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621225', '6212', '3', '0', '西和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621226', '6212', '3', '0', '礼县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621227', '6212', '3', '0', '徽县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('621228', '6212', '3', '0', '两当县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6229', '62', '2', '0', '临夏回族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622901', '6229', '3', '0', '临夏市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622921', '6229', '3', '0', '临夏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622922', '6229', '3', '0', '康乐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622923', '6229', '3', '0', '永靖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622924', '6229', '3', '0', '广河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622925', '6229', '3', '0', '和政县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622926', '6229', '3', '0', '东乡族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('622927', '6229', '3', '0', '积石山保安族东乡族撒拉族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6230', '62', '2', '0', '甘南藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623001', '6230', '3', '0', '合作市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623021', '6230', '3', '0', '临潭县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623022', '6230', '3', '0', '卓尼县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623023', '6230', '3', '0', '舟曲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623024', '6230', '3', '0', '迭部县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623025', '6230', '3', '0', '玛曲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623026', '6230', '3', '0', '碌曲县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('623027', '6230', '3', '0', '夏河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('63', null, '1', '0', '青海省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6301', '63', '2', '0', '西宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630101', '6301', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630102', '6301', '3', '0', '城东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630103', '6301', '3', '0', '城中区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630104', '6301', '3', '0', '城西区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630105', '6301', '3', '0', '城北区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630121', '6301', '3', '0', '大通回族土族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630122', '6301', '3', '0', '湟中县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630123', '6301', '3', '0', '湟源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6302', '63', '2', '0', '海东市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630202', '6302', '3', '0', '乐都区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630203', '6302', '3', '0', '平安区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630222', '6302', '3', '0', '民和回族土族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630223', '6302', '3', '0', '互助土族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630224', '6302', '3', '0', '化隆回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('630225', '6302', '3', '0', '循化撒拉族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6322', '63', '2', '0', '海北藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632221', '6322', '3', '0', '门源回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632222', '6322', '3', '0', '祁连县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632223', '6322', '3', '0', '海晏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632224', '6322', '3', '0', '刚察县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6323', '63', '2', '0', '黄南藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632321', '6323', '3', '0', '同仁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632322', '6323', '3', '0', '尖扎县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632323', '6323', '3', '0', '泽库县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632324', '6323', '3', '0', '河南蒙古族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6325', '63', '2', '0', '海南藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632521', '6325', '3', '0', '共和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632522', '6325', '3', '0', '同德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632523', '6325', '3', '0', '贵德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632524', '6325', '3', '0', '兴海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632525', '6325', '3', '0', '贵南县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6326', '63', '2', '0', '果洛藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632621', '6326', '3', '0', '玛沁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632622', '6326', '3', '0', '班玛县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632623', '6326', '3', '0', '甘德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632624', '6326', '3', '0', '达日县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632625', '6326', '3', '0', '久治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632626', '6326', '3', '0', '玛多县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6327', '63', '2', '0', '玉树藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632701', '6327', '3', '0', '玉树市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632722', '6327', '3', '0', '杂多县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632723', '6327', '3', '0', '称多县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632724', '6327', '3', '0', '治多县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632725', '6327', '3', '0', '囊谦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632726', '6327', '3', '0', '曲麻莱县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6328', '63', '2', '0', '海西蒙古族藏族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632801', '6328', '3', '0', '格尔木市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632802', '6328', '3', '0', '德令哈市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632821', '6328', '3', '0', '乌兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632822', '6328', '3', '0', '都兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('632823', '6328', '3', '0', '天峻县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('64', null, '1', '0', '宁夏回族自治区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6401', '64', '2', '0', '银川市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640101', '6401', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640104', '6401', '3', '0', '兴庆区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640105', '6401', '3', '0', '西夏区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640106', '6401', '3', '0', '金凤区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640121', '6401', '3', '0', '永宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640122', '6401', '3', '0', '贺兰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640181', '6401', '3', '0', '灵武市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6402', '64', '2', '0', '石嘴山市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640201', '6402', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640202', '6402', '3', '0', '大武口区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640205', '6402', '3', '0', '惠农区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640221', '6402', '3', '0', '平罗县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6403', '64', '2', '0', '吴忠市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640301', '6403', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640302', '6403', '3', '0', '利通区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640303', '6403', '3', '0', '红寺堡区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640323', '6403', '3', '0', '盐池县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640324', '6403', '3', '0', '同心县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640381', '6403', '3', '0', '青铜峡市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6404', '64', '2', '0', '固原市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640401', '6404', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640402', '6404', '3', '0', '原州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640422', '6404', '3', '0', '西吉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640423', '6404', '3', '0', '隆德县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640424', '6404', '3', '0', '泾源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640425', '6404', '3', '0', '彭阳县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6405', '64', '2', '0', '中卫市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640501', '6405', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640502', '6405', '3', '0', '沙坡头区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640521', '6405', '3', '0', '中宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('640522', '6405', '3', '0', '海原县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('65', null, '1', '0', '新疆维吾尔自治区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6501', '65', '2', '0', '乌鲁木齐市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650101', '6501', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650102', '6501', '3', '0', '天山区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650103', '6501', '3', '0', '沙依巴克区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650104', '6501', '3', '0', '新市区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650105', '6501', '3', '0', '水磨沟区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650106', '6501', '3', '0', '头屯河区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650107', '6501', '3', '0', '达坂城区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650109', '6501', '3', '0', '米东区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650121', '6501', '3', '0', '乌鲁木齐县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6502', '65', '2', '0', '克拉玛依市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650201', '6502', '3', '0', '市辖区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650202', '6502', '3', '0', '独山子区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650203', '6502', '3', '0', '克拉玛依区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650204', '6502', '3', '0', '白碱滩区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650205', '6502', '3', '0', '乌尔禾区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6504', '65', '2', '0', '吐鲁番市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650402', '6504', '3', '0', '高昌区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650421', '6504', '3', '0', '鄯善县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650422', '6504', '3', '0', '托克逊县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6505', '65', '2', '0', '哈密市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650502', '6505', '3', '0', '伊州区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650521', '6505', '3', '0', '巴里坤哈萨克自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('650522', '6505', '3', '0', '伊吾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6523', '65', '2', '0', '昌吉回族自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652301', '6523', '3', '0', '昌吉市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652302', '6523', '3', '0', '阜康市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652323', '6523', '3', '0', '呼图壁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652324', '6523', '3', '0', '玛纳斯县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652325', '6523', '3', '0', '奇台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652327', '6523', '3', '0', '吉木萨尔县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652328', '6523', '3', '0', '木垒哈萨克自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6527', '65', '2', '0', '博尔塔拉蒙古自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652701', '6527', '3', '0', '博乐市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652702', '6527', '3', '0', '阿拉山口市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652722', '6527', '3', '0', '精河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652723', '6527', '3', '0', '温泉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6528', '65', '2', '0', '巴音郭楞蒙古自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652801', '6528', '3', '0', '库尔勒市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652822', '6528', '3', '0', '轮台县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652823', '6528', '3', '0', '尉犁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652824', '6528', '3', '0', '若羌县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652825', '6528', '3', '0', '且末县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652826', '6528', '3', '0', '焉耆回族自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652827', '6528', '3', '0', '和静县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652828', '6528', '3', '0', '和硕县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652829', '6528', '3', '0', '博湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6529', '65', '2', '0', '阿克苏地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652901', '6529', '3', '0', '阿克苏市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652922', '6529', '3', '0', '温宿县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652923', '6529', '3', '0', '库车县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652924', '6529', '3', '0', '沙雅县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652925', '6529', '3', '0', '新和县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652926', '6529', '3', '0', '拜城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652927', '6529', '3', '0', '乌什县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652928', '6529', '3', '0', '阿瓦提县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('652929', '6529', '3', '0', '柯坪县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6530', '65', '2', '0', '克孜勒苏柯尔克孜自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653001', '6530', '3', '0', '阿图什市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653022', '6530', '3', '0', '阿克陶县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653023', '6530', '3', '0', '阿合奇县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653024', '6530', '3', '0', '乌恰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6531', '65', '2', '0', '喀什地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653101', '6531', '3', '0', '喀什市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653121', '6531', '3', '0', '疏附县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653122', '6531', '3', '0', '疏勒县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653123', '6531', '3', '0', '英吉沙县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653124', '6531', '3', '0', '泽普县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653125', '6531', '3', '0', '莎车县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653126', '6531', '3', '0', '叶城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653127', '6531', '3', '0', '麦盖提县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653128', '6531', '3', '0', '岳普湖县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653129', '6531', '3', '0', '伽师县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653130', '6531', '3', '0', '巴楚县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653131', '6531', '3', '0', '塔什库尔干塔吉克自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6532', '65', '2', '0', '和田地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653201', '6532', '3', '0', '和田市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653221', '6532', '3', '0', '和田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653222', '6532', '3', '0', '墨玉县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653223', '6532', '3', '0', '皮山县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653224', '6532', '3', '0', '洛浦县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653225', '6532', '3', '0', '策勒县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653226', '6532', '3', '0', '于田县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('653227', '6532', '3', '0', '民丰县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6540', '65', '2', '0', '伊犁哈萨克自治州', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654002', '6540', '3', '0', '伊宁市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654003', '6540', '3', '0', '奎屯市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654004', '6540', '3', '0', '霍尔果斯市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654021', '6540', '3', '0', '伊宁县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654022', '6540', '3', '0', '察布查尔锡伯自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654023', '6540', '3', '0', '霍城县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654024', '6540', '3', '0', '巩留县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654025', '6540', '3', '0', '新源县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654026', '6540', '3', '0', '昭苏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654027', '6540', '3', '0', '特克斯县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654028', '6540', '3', '0', '尼勒克县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6542', '65', '2', '0', '塔城地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654201', '6542', '3', '0', '塔城市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654202', '6542', '3', '0', '乌苏市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654221', '6542', '3', '0', '额敏县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654223', '6542', '3', '0', '沙湾县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654224', '6542', '3', '0', '托里县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654225', '6542', '3', '0', '裕民县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654226', '6542', '3', '0', '和布克赛尔蒙古自治县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6543', '65', '2', '0', '阿勒泰地区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654301', '6543', '3', '0', '阿勒泰市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654321', '6543', '3', '0', '布尔津县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654322', '6543', '3', '0', '富蕴县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654323', '6543', '3', '0', '福海县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654324', '6543', '3', '0', '哈巴河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654325', '6543', '3', '0', '青河县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('654326', '6543', '3', '0', '吉木乃县', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('6590', '65', '2', '0', '自治区直辖县级行政区划', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('659001', '6590', '3', '0', '石河子市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('659002', '6590', '3', '0', '阿拉尔市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('659003', '6590', '3', '0', '图木舒克市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('659004', '6590', '3', '0', '五家渠市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('659006', '6590', '3', '0', '铁门关市', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('71', null, '1', '0', '台湾省', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('81', null, '1', '0', '香港特别行政区', '0', '0', '1', null, null);
INSERT INTO `zz_region` VALUES ('82', null, '1', '0', '澳门特别行政区', '0', '0', '1', null, null);

-- ----------------------------
-- Table structure for zz_seo
-- ----------------------------
DROP TABLE IF EXISTS `zz_seo`;
CREATE TABLE `zz_seo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) NOT NULL,
  `order_by` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='官网-SEO';

-- ----------------------------
-- Records of zz_seo
-- ----------------------------
INSERT INTO `zz_seo` VALUES ('1', 'site/index', '0', '首页', '{sitetitle}', '', '', null, '0', '1576488082', '1566547484');
INSERT INTO `zz_seo` VALUES ('17', 'site/product', '0', '产品列表', '{title}-{sitetitle}', '', '', '', '1', '1576488082', '1576488082');
INSERT INTO `zz_seo` VALUES ('18', 'site/product-detail', '0', '产品详情', '{title}-{sitetitle}', '', '', '', '1', '1576488105', '1576488105');

-- ----------------------------
-- Table structure for zz_tags
-- ----------------------------
DROP TABLE IF EXISTS `zz_tags`;
CREATE TABLE `zz_tags` (
  `article_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL COMMENT '标签数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zz_tags
-- ----------------------------
INSERT INTO `zz_tags` VALUES ('27', 'abb', null, null);
INSERT INTO `zz_tags` VALUES ('27', '11', null, null);
INSERT INTO `zz_tags` VALUES ('26', 'abb', null, null);
INSERT INTO `zz_tags` VALUES ('26', '数据中心', null, null);
INSERT INTO `zz_tags` VALUES ('25', 'qq', null, null);
INSERT INTO `zz_tags` VALUES ('25', 'php', null, null);
INSERT INTO `zz_tags` VALUES ('24', 'yii2', null, null);
INSERT INTO `zz_tags` VALUES ('23', 'composer', null, null);
INSERT INTO `zz_tags` VALUES ('23', 'yii', null, null);
INSERT INTO `zz_tags` VALUES ('23', 'web', null, null);
INSERT INTO `zz_tags` VALUES ('22', '应用结构', null, null);
INSERT INTO `zz_tags` VALUES ('22', 'yii2', null, null);
INSERT INTO `zz_tags` VALUES ('21', 'Laravel', null, null);
INSERT INTO `zz_tags` VALUES ('21', 'php', null, null);
INSERT INTO `zz_tags` VALUES ('20', 'Homestead', null, null);
INSERT INTO `zz_tags` VALUES ('20', 'lavarel', null, null);
INSERT INTO `zz_tags` VALUES ('20', '开发环境', null, null);
INSERT INTO `zz_tags` VALUES ('19', '环境配置', null, null);
INSERT INTO `zz_tags` VALUES ('19', 'lavarel配置', null, null);
INSERT INTO `zz_tags` VALUES ('15', 'tp6', null, null);
INSERT INTO `zz_tags` VALUES ('15', 'SESSION', null, null);
INSERT INTO `zz_tags` VALUES ('15', '严格模式', null, null);
INSERT INTO `zz_tags` VALUES ('14', 'composer', null, null);
INSERT INTO `zz_tags` VALUES ('14', 'PHP', null, null);

-- ----------------------------
-- Table structure for zz_type
-- ----------------------------
DROP TABLE IF EXISTS `zz_type`;
CREATE TABLE `zz_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `up_id` int(10) unsigned DEFAULT '0',
  `level` smallint(1) DEFAULT '1',
  `order_by` int(10) DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_at` int(10) unsigned DEFAULT NULL,
  `covers` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of zz_type
-- ----------------------------
INSERT INTO `zz_type` VALUES ('1', '0', '1', '0', null, 'php', '', '', null, null, '1', '1590742304', '1590742304', null);
INSERT INTO `zz_type` VALUES ('2', '0', '1', '0', null, 'thinkphp', '', '', null, null, '1', '1590742318', '1590742318', null);
INSERT INTO `zz_type` VALUES ('3', '0', '1', '0', null, 'yii2', '', '', null, null, '1', '1590742322', '1590742322', null);
INSERT INTO `zz_type` VALUES ('4', '0', '1', '0', null, 'ci', '', '', null, null, '1', '1590742325', '1590742325', null);
INSERT INTO `zz_type` VALUES ('5', '0', '1', '0', null, 'laraval', '', '', null, null, '1', '1590742340', '1590742340', null);
INSERT INTO `zz_type` VALUES ('27', '0', '1', '0', 'news', 'php', 'php是世界上最好的语言', '', null, null, '1', '1600411398', '1600411398', null);
INSERT INTO `zz_type` VALUES ('28', '0', '1', '0', 'news', 'yii2', '', '', null, null, '1', '1600411408', '1600411408', null);
INSERT INTO `zz_type` VALUES ('29', '0', '1', '0', 'news', 'ci', '', '', null, null, '1', '1600411415', '1600411415', null);
INSERT INTO `zz_type` VALUES ('30', '0', '1', '0', 'news', 'tp', '', '', null, null, '1', '1600411419', '1600411419', null);
INSERT INTO `zz_type` VALUES ('31', '0', '1', '0', 'news', 'lavarel', '', '', null, null, '1', '1600411427', '1600411427', null);

-- ----------------------------
-- Table structure for zz_user
-- ----------------------------
DROP TABLE IF EXISTS `zz_user`;
CREATE TABLE `zz_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cookie key',
  `password_hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '登录密码',
  `password_reset_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置token',
  `access_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'api token',
  `invalid_at` int(11) DEFAULT NULL COMMENT 'api 有效期',
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `group` tinyint(1) NOT NULL COMMENT '群组',
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册IP',
  `last_login_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后登录IP',
  `last_login_at` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `login_times` int(11) DEFAULT '0' COMMENT '登录次数',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `gender` tinyint(3) DEFAULT '0' COMMENT '性别',
  `nickname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `open_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'OPEN ID',
  `union_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UNION ID',
  `order_by` int(11) DEFAULT NULL,
  `verification_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` text COLLATE utf8_unicode_ci COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `password_reset_token` (`password_reset_token`) USING BTREE,
  UNIQUE KEY `access_token` (`access_token`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of zz_user
-- ----------------------------
INSERT INTO `zz_user` VALUES ('1', 'admin', 'x6xVZi7iauGqzXwxSGPLNHz8nHWDWE75', '$2y$13$XFBCi3DOjStRRgXXbfJQ7ey.DL/Wu9e1rjl0IMbFvLFd2DGdWWYoW', null, null, null, null, 'admin@qq.com', '9', '/attachment//2020/09/18/20091807255381431.jpg', '1', null, '58.39.226.81', '1603161893', '0', null, null, '1603161893', null, null, '0', '12', null, null, null, null, '超级管理员\r\n\r\n');
INSERT INTO `zz_user` VALUES ('2', 'front', 'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W', '$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC', null, null, null, null, null, '1', '/images/users/avatar.jpg', '1', null, '127.0.0.1', '1600412979', '4', null, null, '1600412979', null, null, '0', null, null, null, null, null, null);
INSERT INTO `zz_user` VALUES ('7', 'test', 'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W', '$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC', null, null, null, null, '', '8', '/attachment//2020/09/18/20091807263387489.jpg', '1', null, '58.39.224.20', '1600413978', '0', '1588063671', null, '1600413993', null, null, '0', 'test', null, null, null, null, '');
INSERT INTO `zz_user` VALUES ('12', 'woker', 'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W', '$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC', null, null, null, null, '1234@qq.com', '8', '/attachment//2020/05/29/20052916410793084.jpg', '1', null, '58.39.224.20', '1600414060', '0', '1589004836', null, '1600414060', null, null, '0', 'woker', null, null, null, null, '后台操作人员\r\n\r\n');
INSERT INTO `zz_user` VALUES ('13', '张三', 'lxymhs-8FjiY0i4E0nZ5_hiZcuzK7K1P', '$2y$13$l4DDZO6vzqCH5gZEHUDF6eKtQbkINKhMPY6785QksNwpQsQzWIRGe', null, null, null, null, '2835152688@qq.com', '1', null, '1', null, '58.39.224.20', '1602490983', '11', '1600412938', null, '1602490983', null, null, '0', null, null, null, null, 'F4LY-2cGInNCWF02Pu4EiUnif37WgCee_1600412936', null);

-- ----------------------------
-- Table structure for zz_user_log
-- ----------------------------
DROP TABLE IF EXISTS `zz_user_log`;
CREATE TABLE `zz_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0' COMMENT '类别',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `item_id` varchar(190) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联ID',
  `created_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='用户登录日志表';

-- ----------------------------
-- Records of zz_user_log
-- ----------------------------
INSERT INTO `zz_user_log` VALUES ('1', '1', '8', '后台退出!', null, '127.0.0.1', '1588930348');
INSERT INTO `zz_user_log` VALUES ('2', '1', '1', '后台登录!', null, '127.0.0.1', '1588930357');
INSERT INTO `zz_user_log` VALUES ('3', '1', '1', '后台登录!', null, '127.0.0.1', '1588987204');
INSERT INTO `zz_user_log` VALUES ('4', '1', '1', '后台登录!', null, '127.0.0.1', '1588993477');
INSERT INTO `zz_user_log` VALUES ('5', '1', '1', '后台退出!', null, '127.0.0.1', '1588993698');
INSERT INTO `zz_user_log` VALUES ('6', '1', '8', '后台登录!', null, '127.0.0.1', '1588993708');
INSERT INTO `zz_user_log` VALUES ('7', '1', '8', '后台退出!', null, '127.0.0.1', '1588993822');
INSERT INTO `zz_user_log` VALUES ('8', '1', '1', '后台登录!', null, '127.0.0.1', '1588993829');
INSERT INTO `zz_user_log` VALUES ('9', '1', '1', '后台登录!', null, '127.0.0.1', '1589245453');
INSERT INTO `zz_user_log` VALUES ('10', '1', '1', '后台登录!', null, '127.0.0.1', '1589245453');
INSERT INTO `zz_user_log` VALUES ('11', '1', '1', '后台退出!', null, '127.0.0.1', '1589245629');
INSERT INTO `zz_user_log` VALUES ('12', '1', '1', '后台登录!', null, '127.0.0.1', '1589245654');
INSERT INTO `zz_user_log` VALUES ('13', '1', '1', '后台退出!', null, '127.0.0.1', '1589245724');
INSERT INTO `zz_user_log` VALUES ('14', '1', '1', '后台登录!', null, '127.0.0.1', '1589245732');
INSERT INTO `zz_user_log` VALUES ('15', '1', '1', '后台退出!', null, '127.0.0.1', '1589246689');
INSERT INTO `zz_user_log` VALUES ('16', '1', '1', '后台登录!', null, '127.0.0.1', '1589246704');
INSERT INTO `zz_user_log` VALUES ('17', '1', '1', '后台退出!', null, '127.0.0.1', '1589246764');
INSERT INTO `zz_user_log` VALUES ('18', '1', '1', '后台登录!', null, '127.0.0.1', '1589246772');
INSERT INTO `zz_user_log` VALUES ('19', '1', '1', '后台登录!', null, '127.0.0.1', '1589276608');
INSERT INTO `zz_user_log` VALUES ('20', '1', '1', '后台登录!', null, '127.0.0.1', '1589523168');
INSERT INTO `zz_user_log` VALUES ('21', '1', '1', '后台登录!', null, '127.0.0.1', '1589523170');
INSERT INTO `zz_user_log` VALUES ('22', '1', '1', '后台登录!', null, '127.0.0.1', '1589789094');
INSERT INTO `zz_user_log` VALUES ('23', '1', '1', '后台登录!', null, '127.0.0.1', '1589789096');
INSERT INTO `zz_user_log` VALUES ('24', '1', '1', '后台退出!', null, '127.0.0.1', '1589789160');
INSERT INTO `zz_user_log` VALUES ('25', '1', '7', '后台登录!', null, '127.0.0.1', '1589789170');
INSERT INTO `zz_user_log` VALUES ('26', '1', '7', '后台退出!', null, '127.0.0.1', '1589789851');
INSERT INTO `zz_user_log` VALUES ('27', '1', '12', '后台登录!', null, '127.0.0.1', '1589789930');
INSERT INTO `zz_user_log` VALUES ('28', '1', '12', '后台退出!', null, '127.0.0.1', '1589789956');
INSERT INTO `zz_user_log` VALUES ('29', '1', '1', '后台登录!', null, '127.0.0.1', '1589789963');
INSERT INTO `zz_user_log` VALUES ('30', '1', '1', '后台退出!', null, '127.0.0.1', '1589790007');
INSERT INTO `zz_user_log` VALUES ('31', '1', '12', '后台登录!', null, '127.0.0.1', '1589790016');
INSERT INTO `zz_user_log` VALUES ('32', '1', '12', '后台退出!', null, '127.0.0.1', '1589790034');
INSERT INTO `zz_user_log` VALUES ('33', '1', '1', '后台登录!', null, '127.0.0.1', '1589790041');
INSERT INTO `zz_user_log` VALUES ('34', '1', '2', '前台登录!', null, '127.0.0.1', '1589880117');
INSERT INTO `zz_user_log` VALUES ('35', '1', '1', '后台登录!', null, '127.0.0.1', '1589936986');
INSERT INTO `zz_user_log` VALUES ('36', '1', '1', '后台登录!', null, '127.0.0.1', '1589936986');
INSERT INTO `zz_user_log` VALUES ('37', '1', '2', '前台登录!', null, '127.0.0.1', '1589941836');
INSERT INTO `zz_user_log` VALUES ('38', '1', '2', '前台登录!', null, '127.0.0.1', '1589954693');
INSERT INTO `zz_user_log` VALUES ('39', '1', '2', '前台退出!', null, '127.0.0.1', '1590046040');
INSERT INTO `zz_user_log` VALUES ('40', '1', '2', '前台登录!', null, '127.0.0.1', '1590051114');
INSERT INTO `zz_user_log` VALUES ('41', '1', '1', '后台登录!', null, '127.0.0.1', '1590051524');
INSERT INTO `zz_user_log` VALUES ('42', '1', '2', '前台退出!', null, '127.0.0.1', '1590111308');
INSERT INTO `zz_user_log` VALUES ('43', '1', '1', '后台登录!', null, '127.0.0.1', '1590115179');
INSERT INTO `zz_user_log` VALUES ('44', '1', '1', '后台登录!', null, '127.0.0.1', '1590115180');
INSERT INTO `zz_user_log` VALUES ('45', '1', '1', '后台登录!', null, '127.0.0.1', '1590115772');
INSERT INTO `zz_user_log` VALUES ('46', '1', '2', '前台登录!', null, '127.0.0.1', '1590116196');
INSERT INTO `zz_user_log` VALUES ('47', '1', '2', '前台退出!', null, '127.0.0.1', '1590116198');
INSERT INTO `zz_user_log` VALUES ('48', '1', '2', '前台登录!', null, '127.0.0.1', '1590116211');
INSERT INTO `zz_user_log` VALUES ('49', '1', '2', '前台退出!', null, '127.0.0.1', '1590116721');
INSERT INTO `zz_user_log` VALUES ('50', '1', '2', '前台登录!', null, '127.0.0.1', '1590116732');
INSERT INTO `zz_user_log` VALUES ('51', '1', '2', '前台退出!', null, '127.0.0.1', '1590116784');
INSERT INTO `zz_user_log` VALUES ('52', '1', '2', '前台登录!', null, '127.0.0.1', '1590116791');
INSERT INTO `zz_user_log` VALUES ('53', '1', '2', '前台退出!', null, '127.0.0.1', '1590117101');
INSERT INTO `zz_user_log` VALUES ('54', '1', '2', '前台登录!', null, '127.0.0.1', '1590117246');
INSERT INTO `zz_user_log` VALUES ('55', '1', '2', '前台登录!', null, '127.0.0.1', '1590117449');
INSERT INTO `zz_user_log` VALUES ('56', '1', '2', '前台退出!', null, '127.0.0.1', '1590117450');
INSERT INTO `zz_user_log` VALUES ('57', '1', '2', '前台登录!', null, '127.0.0.1', '1590117455');
INSERT INTO `zz_user_log` VALUES ('58', '1', '1', '后台退出!', null, '127.0.0.1', '1590117522');
INSERT INTO `zz_user_log` VALUES ('59', '1', '1', '后台登录!', null, '127.0.0.1', '1590117545');
INSERT INTO `zz_user_log` VALUES ('60', '1', '2', '前台退出!', null, '127.0.0.1', '1590117862');
INSERT INTO `zz_user_log` VALUES ('61', '1', '2', '前台登录!', null, '127.0.0.1', '1590117883');
INSERT INTO `zz_user_log` VALUES ('62', '1', '2', '前台登录!', null, '127.0.0.1', '1590129670');
INSERT INTO `zz_user_log` VALUES ('63', '1', '1', '后台登录!', null, '127.0.0.1', '1590373993');
INSERT INTO `zz_user_log` VALUES ('64', '1', '1', '后台登录!', null, '127.0.0.1', '1590373996');
INSERT INTO `zz_user_log` VALUES ('65', '1', '2', '前台登录!', null, '127.0.0.1', '1590463414');
INSERT INTO `zz_user_log` VALUES ('66', '1', '1', '后台退出!', null, '127.0.0.1', '1590483484');
INSERT INTO `zz_user_log` VALUES ('67', '1', '1', '后台登录!', null, '127.0.0.1', '1590483493');
INSERT INTO `zz_user_log` VALUES ('68', '1', '1', '后台退出!', null, '127.0.0.1', '1590483497');
INSERT INTO `zz_user_log` VALUES ('69', '1', '1', '后台登录!', null, '127.0.0.1', '1590483515');
INSERT INTO `zz_user_log` VALUES ('70', '1', '2', '前台登录!', null, '127.0.0.1', '1590484925');
INSERT INTO `zz_user_log` VALUES ('71', '1', '2', '前台登录!', null, '127.0.0.1', '1590541616');
INSERT INTO `zz_user_log` VALUES ('72', '1', '2', '前台登录!', null, '127.0.0.1', '1590566625');
INSERT INTO `zz_user_log` VALUES ('73', '1', '2', '前台登录!', null, '127.0.0.1', '1590572230');
INSERT INTO `zz_user_log` VALUES ('74', '1', '1', '后台登录!', null, '127.0.0.1', '1590655525');
INSERT INTO `zz_user_log` VALUES ('75', '1', '1', '后台登录!', null, '127.0.0.1', '1590655527');
INSERT INTO `zz_user_log` VALUES ('76', '1', '2', '前台登录!', null, '127.0.0.1', '1590655530');
INSERT INTO `zz_user_log` VALUES ('77', '1', '1', '后台登录!', null, '127.0.0.1', '1590722668');
INSERT INTO `zz_user_log` VALUES ('78', '1', '1', '后台登录!', null, '127.0.0.1', '1590722670');
INSERT INTO `zz_user_log` VALUES ('79', '1', '2', '前台登录!', null, '127.0.0.1', '1590722675');
INSERT INTO `zz_user_log` VALUES ('80', '1', '2', '前台登录!', null, '127.0.0.1', '1590725017');
INSERT INTO `zz_user_log` VALUES ('81', '1', '2', '前台登录!', null, '127.0.0.1', '1590730639');
INSERT INTO `zz_user_log` VALUES ('82', '1', '2', '前台登录!', null, '127.0.0.1', '1590732873');
INSERT INTO `zz_user_log` VALUES ('83', '1', '2', '前台登录!', null, '127.0.0.1', '1590736179');
INSERT INTO `zz_user_log` VALUES ('84', '1', '1', '后台退出!', null, '127.0.0.1', '1590740947');
INSERT INTO `zz_user_log` VALUES ('85', '1', '12', '后台登录!', null, '127.0.0.1', '1590740964');
INSERT INTO `zz_user_log` VALUES ('86', '1', '2', '前台登录!', null, '127.0.0.1', '1590740965');
INSERT INTO `zz_user_log` VALUES ('87', '1', '12', '后台退出!', null, '127.0.0.1', '1590741022');
INSERT INTO `zz_user_log` VALUES ('88', '1', '1', '后台登录!', null, '127.0.0.1', '1590741030');
INSERT INTO `zz_user_log` VALUES ('89', '1', '1', '后台退出!', null, '127.0.0.1', '1590741346');
INSERT INTO `zz_user_log` VALUES ('90', '1', '12', '后台登录!', null, '127.0.0.1', '1590741363');
INSERT INTO `zz_user_log` VALUES ('91', '1', '12', '后台退出!', null, '127.0.0.1', '1590741574');
INSERT INTO `zz_user_log` VALUES ('92', '1', '1', '后台登录!', null, '127.0.0.1', '1590741583');
INSERT INTO `zz_user_log` VALUES ('93', '1', '1', '后台退出!', null, '127.0.0.1', '1590741637');
INSERT INTO `zz_user_log` VALUES ('94', '1', '12', '后台登录!', null, '127.0.0.1', '1590741647');
INSERT INTO `zz_user_log` VALUES ('95', '1', '12', '后台退出!', null, '127.0.0.1', '1590741700');
INSERT INTO `zz_user_log` VALUES ('96', '1', '1', '后台登录!', null, '127.0.0.1', '1590741706');
INSERT INTO `zz_user_log` VALUES ('97', '1', '2', '前台退出!', null, '127.0.0.1', '1590743534');
INSERT INTO `zz_user_log` VALUES ('98', '1', '2', '前台登录!', null, '127.0.0.1', '1590743542');
INSERT INTO `zz_user_log` VALUES ('99', '1', '2', '前台登录!', null, '127.0.0.1', '1590973170');
INSERT INTO `zz_user_log` VALUES ('100', '1', '1', '后台登录!', null, '127.0.0.1', '1600238612');
INSERT INTO `zz_user_log` VALUES ('101', '1', '2', '前台登录!', null, '127.0.0.1', '1600240489');
INSERT INTO `zz_user_log` VALUES ('102', '1', '1', '后台登录!', null, '58.39.224.20', '1600399916');
INSERT INTO `zz_user_log` VALUES ('103', '1', '1', '后台登录!', null, '127.0.0.1', '1600400219');
INSERT INTO `zz_user_log` VALUES ('104', '1', '2', '前台登录!', null, '127.0.0.1', '1600400462');
INSERT INTO `zz_user_log` VALUES ('105', '1', '1', '后台退出!', null, '127.0.0.1', '1600400508');
INSERT INTO `zz_user_log` VALUES ('106', '1', '2', '前台退出!', null, '127.0.0.1', '1600400639');
INSERT INTO `zz_user_log` VALUES ('107', '1', '1', '后台登录!', null, '127.0.0.1', '1600402051');
INSERT INTO `zz_user_log` VALUES ('108', '1', '1', '后台退出!', null, '58.39.224.20', '1600402292');
INSERT INTO `zz_user_log` VALUES ('109', '1', '2', '前台登录!', null, '58.39.224.20', '1600408594');
INSERT INTO `zz_user_log` VALUES ('110', '1', '2', '前台退出!', null, '58.39.224.20', '1600408611');
INSERT INTO `zz_user_log` VALUES ('111', '1', '1', '后台登录!', null, '58.39.224.20', '1600409431');
INSERT INTO `zz_user_log` VALUES ('112', '1', '2', '前台登录!', null, '127.0.0.1', '1600412979');
INSERT INTO `zz_user_log` VALUES ('113', '1', '13', '前台登录!', null, '58.39.224.20', '1600413041');
INSERT INTO `zz_user_log` VALUES ('114', '1', '2', '前台退出!', null, '127.0.0.1', '1600413362');
INSERT INTO `zz_user_log` VALUES ('115', '1', '1', '后台退出!', null, '127.0.0.1', '1600413385');
INSERT INTO `zz_user_log` VALUES ('116', '1', '7', '后台登录!', null, '127.0.0.1', '1600413395');
INSERT INTO `zz_user_log` VALUES ('117', '1', '7', '后台退出!', null, '127.0.0.1', '1600413643');
INSERT INTO `zz_user_log` VALUES ('118', '1', '1', '后台登录!', null, '127.0.0.1', '1600413651');
INSERT INTO `zz_user_log` VALUES ('119', '1', '1', '后台退出!', null, '58.39.224.20', '1600413958');
INSERT INTO `zz_user_log` VALUES ('120', '1', '7', '后台登录!', null, '58.39.224.20', '1600413978');
INSERT INTO `zz_user_log` VALUES ('121', '1', '7', '后台退出!', null, '58.39.224.20', '1600413998');
INSERT INTO `zz_user_log` VALUES ('122', '1', '12', '后台登录!', null, '58.39.224.20', '1600414060');
INSERT INTO `zz_user_log` VALUES ('123', '1', '13', '前台登录!', null, '58.39.224.20', '1600414625');
INSERT INTO `zz_user_log` VALUES ('124', '1', '12', '后台退出!', null, '58.39.224.20', '1600414739');
INSERT INTO `zz_user_log` VALUES ('125', '1', '1', '后台登录!', null, '58.39.224.20', '1600414751');
INSERT INTO `zz_user_log` VALUES ('126', '1', '13', '前台登录!', null, '58.39.224.20', '1600419274');
INSERT INTO `zz_user_log` VALUES ('127', '1', '1', '后台登录!', null, '211.161.245.194', '1600600179');
INSERT INTO `zz_user_log` VALUES ('128', '1', '13', '前台登录!', null, '58.39.224.20', '1600755522');
INSERT INTO `zz_user_log` VALUES ('129', '1', '13', '前台登录!', null, '58.39.224.20', '1600917459');
INSERT INTO `zz_user_log` VALUES ('130', '1', '1', '后台登录!', null, '58.39.224.20', '1600917465');
INSERT INTO `zz_user_log` VALUES ('131', '1', '13', '前台登录!', null, '58.39.224.20', '1601192726');
INSERT INTO `zz_user_log` VALUES ('132', '1', '13', '前台登录!', null, '58.39.224.20', '1601192726');
INSERT INTO `zz_user_log` VALUES ('133', '1', '1', '后台登录!', null, '58.39.224.20', '1601192797');
INSERT INTO `zz_user_log` VALUES ('134', '1', '13', '前台登录!', null, '58.39.224.20', '1602227158');
INSERT INTO `zz_user_log` VALUES ('135', '1', '1', '后台登录!', null, '58.39.224.20', '1602227194');
INSERT INTO `zz_user_log` VALUES ('136', '1', '1', '后台登录!', null, '58.39.224.20', '1602485136');
INSERT INTO `zz_user_log` VALUES ('137', '1', '13', '前台登录!', null, '58.39.224.20', '1602485180');
INSERT INTO `zz_user_log` VALUES ('138', '1', '1', '后台退出!', null, '58.39.224.20', '1602487253');
INSERT INTO `zz_user_log` VALUES ('139', '1', '1', '后台登录!', null, '58.39.224.20', '1602487310');
INSERT INTO `zz_user_log` VALUES ('140', '1', '13', '前台登录!', null, '58.39.224.20', '1602487321');
INSERT INTO `zz_user_log` VALUES ('141', '1', '13', '前台登录!', null, '58.39.224.20', '1602490983');
INSERT INTO `zz_user_log` VALUES ('142', '1', '13', '前台退出!', null, '58.39.224.20', '1602490984');
INSERT INTO `zz_user_log` VALUES ('143', '1', '1', '后台登录!', null, '58.39.226.81', '1602646228');
INSERT INTO `zz_user_log` VALUES ('144', '1', '1', '后台登录!', null, '58.39.226.81', '1602842393');
INSERT INTO `zz_user_log` VALUES ('145', '1', '1', '后台登录!', null, '58.39.226.81', '1603161893');
