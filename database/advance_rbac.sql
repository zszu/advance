/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : advance

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-04-29 16:53:28
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `zz_auth_assignment` VALUES ('backend/news/index', '7', '1588148149');

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
INSERT INTO `zz_auth_item` VALUES ('admin', '1', null, null, null, '1588147812', '1588147812');
INSERT INTO `zz_auth_item` VALUES ('backend/amount/index', '2', '资金流水', null, 0x693A313031393B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/category/category-goods', '2', '商品分类管理', null, 0x693A313031353B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/category/category-news', '2', '新闻分类管理', null, 0x693A313031303B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/default/page', '2', '单页管理', null, 0x693A313030353B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/down/index', '2', '下载资料管理', null, 0x693A313031313B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/express/index', '2', '快递公司管理', null, 0x693A313030383B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/feedback/index', '2', '留言管理', null, 0x693A313031373B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/goods/brand', '2', '品牌管理', null, 0x693A313031363B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/goods/index', '2', '商品管理', null, 0x693A313031343B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/help/help-page', '2', '问题单页管理', null, 0x693A313031333B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/help/index', '2', '常见问题管理', null, 0x693A313031323B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/invoice/index', '2', '发票管理', null, 0x693A313032303B, '1588147814', '1588147814');
INSERT INTO `zz_auth_item` VALUES ('backend/member-change/index', '2', '会员资料审核', null, 0x693A313032323B, '1588147814', '1588147814');
INSERT INTO `zz_auth_item` VALUES ('backend/member/index', '2', '会员管理', null, 0x693A313032313B, '1588147814', '1588147814');
INSERT INTO `zz_auth_item` VALUES ('backend/news/index', '2', '新闻管理', null, 0x693A313030393B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/order/index', '2', '订单管理', null, 0x693A313031383B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/site/company-param', '2', '设置公司信息', null, 0x693A313030333B, '1588147812', '1588147812');
INSERT INTO `zz_auth_item` VALUES ('backend/site/email-param', '2', '设置邮箱参数', null, 0x693A313030343B, '1588147812', '1588147812');
INSERT INTO `zz_auth_item` VALUES ('backend/site/site-param', '2', '设置站点参数', null, 0x693A313030313B, '1588147812', '1588147812');
INSERT INTO `zz_auth_item` VALUES ('backend/site/system-param', '2', '设置系统参数', null, 0x693A313030323B, '1588147812', '1588147812');
INSERT INTO `zz_auth_item` VALUES ('backend/slide/index', '2', '焦点图管理', null, 0x693A313030373B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('backend/user/index', '2', '用户管理', null, 0x693A313032333B, '1588147814', '1588147814');
INSERT INTO `zz_auth_item` VALUES ('backend/user/level', '2', '会员等级管理', null, 0x693A313030363B, '1588147813', '1588147813');
INSERT INTO `zz_auth_item` VALUES ('worker', '1', null, null, null, '1588147812', '1588147812');

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
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/amount/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/category/category-goods');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/category/category-news');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/default/page');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/down/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/express/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/feedback/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/goods/brand');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/goods/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/help/help-page');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/help/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/invoice/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/member-change/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/member/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/news/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/order/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/site/company-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/site/email-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/site/site-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/site/system-param');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/slide/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/user/index');
INSERT INTO `zz_auth_item_child` VALUES ('admin', 'backend/user/level');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表';

-- ----------------------------
-- Records of zz_comment
-- ----------------------------
INSERT INTO `zz_comment` VALUES ('2', '0', '0', '写的不错', null, null, '1588060337', '1588060773', '0', '1', '17');
INSERT INTO `zz_comment` VALUES ('7', '0', '0', '1', null, null, '1588064599', '1588064599', '0', '1', '17');

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
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻表';

-- ----------------------------
-- Records of zz_news
-- ----------------------------
INSERT INTO `zz_news` VALUES ('17', '0', '25', 'ABB全球变压器智能制造基地落户重庆两江新区', null, null, '12月5日，重庆ABB变压器有限公司与重庆梁江新区管理委员会正式签署了合作协议。共同促进梁江新区变压器智能制造基地的建设。重庆市委常委、重庆梁江新区党委书记段成刚。ABB高级副总裁ABB电网投资(中国)有限公司总裁张金泉出席了签字仪式。', '<p>\r\n	12月5日，重庆ABB变压器有限公司与重庆梁江新区管理委员会正式签署了合作协议。共同促进梁江新区变压器智能制造基地的建设。重庆市委常委、重庆梁江新区党委书记段成刚。ABB高级副总裁ABB电网投资(中国)有限公司总裁张金泉出席了签字仪式。\r\n</p>\r\n<p>\r\n	今年7月，ABB与重庆人民政府签署了ABB双河新区变压器智能制造基地投资合作协议。根据协议，重庆ABB变压器有限公司将在梁江新区裕富工业园区建设变压器制造基地，预计将于2020年建成。它于2022年完成并投入使用。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104173241_49234.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	张金泉说，重庆具有独特的区位优势和成熟的制造业基础。经过20多年的发展，重庆ABB变压器有限公司已成为业界的基准，并多次跻身中国电气工业前100名。在未来，我们将利用梁江新区良好的政策环境和一流的创新集聚资源，建设世界领先的变压器智能制造基地。\r\n</p>\r\n<p>\r\n	梁江新区党委副主任李顺在讲话中说，ABB变压器智能制造基地已经安顿下来。在促进梁江新区电气设备产业链的发展方面发挥着积极的作用。希望双方加强合作，为重庆乃至西部地区电力设备产业的高质量发展作出积极贡献。\r\n</p>\r\n<p>\r\n	重庆ABB变压器有限公司成立于1998年，涉及制造、销售和服务。专注于电力变压器电抗器和高压直流变压器的设计和生产.该公司参与了一些国内重点项目。例如，三峡水利枢纽工程北京奥运会上海世博会和世博会，包括世界上最高的输电容量，最大输电距离为1100kV昌吉-古泉特高。\r\n</p>\r\n<p>\r\n	在国家一带一路倡议下，该产品出口到新加坡、老挝、澳大利亚等19个海外市场，导致重庆设备产品出口到海外。\r\n</p>', '/data/attachment/news/20010417325898131.jpg', null, null, null, null, null, null, '0', '0', '1578130378', '1578130378', '1', null, null, 'ABB全球变压器智能制造基地落户重庆两江新区', '');
INSERT INTO `zz_news` VALUES ('18', '0', '26', 'ABB智能技术聚焦中国国际海事展', null, null, '今天在上海开幕的中国国际海上展览(马林泰中国2019年)，ABB充分展示了船舶和海洋工程领域的数字技术智能解决方案和生命周期服务，为船舶制造业和运营商提高业绩、安全性和绿色发展提供有力支持。', '<p>\r\n	今天在上海开幕的中国国际海上展览(马林泰中国2019年)，ABB充分展示了船舶和海洋工程领域的数字技术智能解决方案和生命周期服务，为船舶制造业和运营商提高业绩、安全性和绿色发展提供有力支持。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104173627_62352.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	电气化、数字化和智慧的融合正在席卷全球海洋产业，颠覆传统的航运方式。作为一个全球的造船国，中国正面临着数字化和智能化转型的关键时期，以满足更高的效率和环境保护需求。它已成为中国航运业实现高质量发展的必然选择。ABB在船舶数字化和智能领域得到了广泛的创新解决，将技术优势产业经验与地方服务结合起来。积极支持中国航运业从大到强向产业链的高端转型.\r\n</p>\r\n<p>\r\n	今年的中国海事展览会。ABB船舶领航系统，船舶电力推进系统，涡轮增压数字解决方案，船舶储能系统，ABBAilityTM联合运行中心，智能电机吸引观众停下来参观和交流。\r\n</p>\r\n<p>\r\n	本次展览展示了ABB在船舶领域的明星产品AzipodCarpol系统。该系统是一种无齿轮旋转吊舱电力促进系统，其电机悬挂在船体外部的水下吊舱内，可提高燃油效率20%。目前，它已广泛应用于豪华游轮、破冰船、冰区航行器和海上居住平台等船舶。中国第一艘极地科学研究破冰船，雪龙2号，第一艘国内豪华邮轮，科学号海洋科学考验船，都使用阿兹帕克推广电力。\r\n</p>\r\n<p>\r\n	同时，也出现了ABBAbilityTM船舶导航系统。这是一套解决方案，包括航行控制和新一代智能船舶和无人驾驶船舶的决定。该系统采用智能传感器和最新的计算机视觉技术，实现了船舶环境的实时可视化和感知。帮助操作者预测船舶的航行状况，避免潜在碰撞风险，提高航行安全性和操作效率。基于该船的导航控制技术，芬兰城堡2号冰上客轮于2018年底在芬兰成功完成了世界上第一次远程无人驾驶海上试验。该系统还将用于新加坡的一家海洋公司，以帮助它开发独立的渡船。\r\n</p>\r\n<p>\r\n	展出的涡轮增压产品和解决方案。特别令人关切的是，升级版本的ABBAbilityTMTekomarXpert数字解决方案。作为分析和诊断发动机性能的智能软件，它实现了从设备系统到云的数字整合，为整个团队的发动机提供了性能评估和综合分析。然后提高发动机的效率，降低燃油成本。根据提供的分析和具体建议，每艘船每天可节省0.5至3吨燃料。解决方案已在世界各地安装了1800多艘船舶。\r\n</p>\r\n<p>\r\n	ABB为航运业提供了综合的测量和分析产品，以帮助优化航运效率，降低运营成本。海事展览ABB展示了各种测量和分析产品，如船舶压载水测量、燃油能耗管理和气体排放监测。以Gaaa610-M型船舶废气连续排放监测系统为例，包括一套完整的系统，如采样探针样品输送管道预处理系统和气体分析仪。通过各种船舶类型的认证，可以帮助船舶用户有效地监测废气排放，更好地满足国际海事组织自2020年以来正式实施的更严格的硫禁令。\r\n</p>\r\n<p>\r\n	航运业的特殊环境对航运产品的要求很高。ABB还推出了一些传动产品和远程服务，如船舶智能设备的直流电网变流器、船舶传动模块等。ACS880直流电网转移器可用于各种新型能源车辆。将储能设备连接到直流电网到直流电网的强大功能是具有船舶类型认证的船舶产品。\r\n</p>\r\n<p>\r\n	电机和发电机也广泛应用于新一代高性能钢筋冷电机、三相同步发电机和智能电机等船舶产品中.以智能电机为例，它是ABB低压电机和ABB电机的组合，可以实时监测电机的不同操作参数。通过对智能算法的分析，为客户提供更可视化的管理，可以缩短70%的停机时间。将电机寿命延长30%，能耗降低10%。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104173644_56220.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	展览会。ABB还展示了一项中压智能解决方案，包括ABBAbability健康管理和设备运行监控系统的船用低压配电数字解决方案。其中，MNS3.0采用低压配电数字解决方案，将数字智能测温与以太网通信技术相结合。将传统的船舶低压开关柜转化为智能物联网成员，为客户提供基于条件的预测维护建议和能耗报告，通过智能操作节省全生循环成本。\r\n</p>\r\n<p>\r\n	ABBBBechale参加了一个完整的工业控制产品线，这些产品符合船级认证，包括PLC工业个人电脑冗余系统安全系统。并且整个船舶和钻井平台的总体操作监测系统APROL可以通过数字工艺控制平台提高船舶的安全性和效率，同时降低运行成本。船舶上的所有机械设备都由分布式船舶监测系统进行全自动控制和管理，包括能源监测设备状态的监测、操作和监测。该系统不仅可以在船舶上进行本地化，而且可以在陆地上的船舶管理中心进行远程操作。\r\n</p>\r\n<p>\r\n	根据船舶工业的环保节能和数字智能操作的发展方向。ABB造船业务上海联合运营中心采用了大量安装在船舶系统上的传感器和先进的分析软件。对客户船舶上的设备和系统的运行数据进行24小时实时监测和分析，以识别船舶设备的潜在问题。提供预防维修建议，规划最佳路线，帮助客户提高决策的科学性，提高船舶的整体性能和运行效率。\r\n</p>\r\n<p>\r\n	中国国际海事博览会是亚洲最大的世界第二大海事博览会，它是国际海事产业寻求全面、多层次合作的桥梁和纽带。第二十届中国国际海事博览会于2019年12月3日至6日在上海新国际博览中心举行。促进产业互联，促进海事产业的发展和发展。\r\n</p>\r\n<p>\r\n	ABB(ABBN：SIXSwissEx)是一家全球技术领导者，为数字产业提供全面的产品服务和解决方案。基于130多年的创新历史，ABB已成为以客户为中心的数字产业领先者。世界领先的四大企业-电气工业自动化运动控制机器人和离散自动化和通用ABBAbility平台。ABB的主要电网业务将于2020年移交给日立集团。ABB集团在全球100多个国家和地区拥有147000名员工。ABB在中国拥有全方位的业务活动，如研发、制造、销售和工程服务。44家当地公司的近2万名员工在130多个城市。在线和离线渠道覆盖全国约700个城市。\r\n</p>\r\n<br />', '/data/attachment/news/20010417380697231.jpg', null, null, null, null, null, null, '0', '0', '1578130614', '1578130686', '1', null, null, 'ABB智能技术聚焦中国国际海事展', '');
INSERT INTO `zz_news` VALUES ('19', '0', '31', 'ABB全球开放创新中心在深圳启动引领技术变革', null, null, '联合国预计到2040年将有60亿人居住在这个城市。 随着这一趋势，ABB在中国深圳开设了其新的全球开放创新中心，致力于为未来的智能家居和建筑开发解决方案。', '<p>\r\n	联合国预计到2040年将有60亿人居住在这个城市。 \r\n随着这一趋势，ABB在中国深圳开设了其新的全球开放创新中心，致力于为未来的智能家居和建筑开发解决方案。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104173915_64308.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	2019年11月29日，ABB开放创新中心在深圳隆重开幕.. 该中心将重点开发核心领域，包括人工智能云服务网络安全和智能建筑。\r\n</p>\r\n<p>\r\n	ABB中国电力部主管赵永菊表示，中国现在是ABB世界第二大市场，也是世界上最具潜力的市场之一。 \r\n开放的创新中心将积极整合城市基础设施和建筑中的智能连接技术。 更快地响应中国市场需求，为中国客户提供更安全、更可持续的电力解决方案。\r\n</p>\r\n<p>\r\n	深圳是中国高科技之都和最具创新性的城市. 基于ABB的数字发展战略和深圳的工业投资环境和人才优势，ABB决定在深圳建立一个全球开放的创新中心。 \r\n抓住第四次工业革命带来的无限机遇。该中心将专注于与世界各地的数字技术公司和初创公司的第三方合作。\r\n</p>\r\n<p>\r\n	ABB开放创新中心拥有50名研发人员，重点是推广ABA智能数字解决方案和服务。 \r\n促进人工智能等技术集成的开放解决方案的应用，为未来智能建筑解决方案提供了新的想法和资源。 提高了建筑物的安全性、舒适性和效率。\r\n</p>\r\n<p>\r\n	ABB智能建筑业务单位全球负责人奥利弗·伊尔特伯格(OliverIltisberger)表示：我们长期以来一直在开发深耕耘的智能建筑解决方案 \r\n在这个新的开放式创新中心的帮助下，我们在这个领域的业务将达到一个新的水平。 \r\nABB研发人员和外部人才的融合将有力地促进我们相互连接的智能建筑解决方案的发展，为最终用户带来利润。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104173932_39617.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	深圳多年来一直是中国申请专利最多的城市之一，拥有大量的全球工业巨头，如新能源互联网和中国优秀公司，在深圳设立了一个研发中心。 \r\n同时，深圳也是中国经济中排名第三的城市。 ABB和深圳将于2015年底签署合作框架协议，在新能源供电和绿色运输方面进行深入的合作。\r\n</p>\r\n<p>\r\n	2017年12月6日。 ABB正式启程于ABB深圳新能源技术中心，这是中国第一家面向太阳能和电动汽车充电设施的全球电力电子研发中心。 \r\n依靠ABB现有的开放式创新中心，将进一步促进全球智能建筑解决方案的发展和应用。\r\n</p>\r\n<p>\r\n	ABB（ABBN：SIXSWISEX）是一家致力于促进行业数字转型和升级的全球技术领导者。 \r\n基于130多年的创新历史，ABB是世界领先的四大企业，电气工业自动化运动控制机器人和分离自动化。 和ABB阿比利猫数字平台。 \r\nABB电网业务将于2020年移交给日立集团。\r\n</p>\r\n<p>\r\n	ABB集团在全球100多个国家和地区拥有147000名员工。 \r\nABB在中国拥有全方位的业务活动，如研发、制造、销售和工程服务。44家当地公司的近2万名员工在130多个城市。 在线和离线渠道覆盖全国约700个城市。\r\n</p>', '/data/attachment/news/20010511060710701.jpg', null, null, null, null, null, null, '0', '0', '1578130782', '1578193567', '1', null, null, 'ABB全球开放创新中心在深圳启动引领技术变革', '');
INSERT INTO `zz_news` VALUES ('20', '0', '25', 'ABB在“改革开放再启动中国制造奖”中获多项大奖', null, null, '在今天的中国制造2025年企业家国际论坛上。 改革开放和开放的结果，强大的中国制造业-领先的企业，最好的投资工厂和领先的人物，正式宣布了ABB的许多奖项。 这次活动的重点是选择新的基础建筑，以及对中国制造业做出突出贡献的制造商和领导者。', '<p>\r\n	在今天的中国制造2025年企业家国际论坛上。 \r\n改革开放和开放的结果，强大的中国制造业-领先的企业，最好的投资工厂和领先的人物，正式宣布了ABB的许多奖项。 \r\n这次活动的重点是选择新的基础建筑，以及对中国制造业做出突出贡献的制造商和领导者。\r\n</p>\r\n<p>\r\n	经过40多年的改革开放，中国制造业已经形成了世界上最具活力的市场和完整的工业体系。 \r\nABB是一家植根于中国的全球技术公司，从创建智能未来工厂到促进行业数字化转型，为中国制造业带来了高质量的发展。\r\n</p>\r\n<p>\r\n	在这一选择中，ABB中国行业领导品牌意识和市场竞争力再次被授予领先企业奖。 几十年来，ABB坚持在中国为中国和世界开发战略，在中国投资17亿元。 \r\n根据中国经济转型和升级的总体趋势，ABB继续提高当地数字研发的实力，为各行业提供领先的数字解决方案。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104174145_59105.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	今年9月，ABB和华为宣布与华为云合作，促进中国工业数字化，并积极扩大数字生态系统。 \r\n新成立的ABB未来实验室和ABB开放创新中心将进一步促进人工智能机器学习云服务网络安全智能建设的尖端发展。 为未来建立一个创新体系。\r\n</p>\r\n<p>\r\n	上海ABB工程有限公司凭借机器人业务在规模现代化和行业基准方面的突出优势赢得了最佳投资工厂奖。 \r\nABB机器人是工业机器人行业的先驱，早在1994年就进入了中国市场，并于2005年开始开发和生产。\r\n</p>\r\n<p>\r\n	ABB是迄今为止在中国开展机器人研发、生产和销售项目系统的唯一跨国公司。 今年9月，ABB在上海投资了1.5亿美元的机器人新工厂和研发基地。 \r\n它将成为ABB世界上最先进、最灵活的机器人工厂。\r\n</p>\r\n<p>\r\n	领导人物奖的目的是确定长期以来在工业发展和领导企业中取得的持续增长，并为制造业的转型和升级做出突出贡献。 \r\nABB中国机器人和分离自动化部门的负责人李钢在1994年加入了ABB机器人业务部门。 \r\n密切关注中国市场机遇，促进机器人地方研发与生产体系的整合，实现机器人业务多年的快速发展。 它确立了ABB在中国工业机器人工业中的领先地位。 \r\n自2012年以来，他一直负责领导ABB机器人和相关业务在中国市场的发展。\r\n</p>\r\n<p>\r\n	贝加莱工业自动化(China)是工业自动化领域的领导者，也是工业自动化领域的领导者。 \r\nBechale是一家创新的驱动自动化公司，总部设在奥地利，拥有全球分支机构。2017年，它成为ABB全球机器和工厂的自动化业务单位。\r\n</p>\r\n<p>\r\n	Bergale集成了尖端技术和先进的工程能力，为各行业客户提供机器和工厂自动化运动控制HMI和综合安全技术的完整解决方案。 \r\n贝加莱工业自动化大中华区总裁肖伟荣博士获得了ABB中国机器人和分离自动化部机械自动化营业部主任肖伟荣的领导人奖。\r\n</p>\r\n<p>\r\n	2019年（第三）中国制造2025年企业家国际论坛由“M现代制造”全媒体举办，重点关注新基础设施的高质量轧机。 \r\n通过寻找新的基础设施为制造业带来的市场机遇和创新势头，掌握2025年中国对接智能制造的实践和需求。 为工业4.0新阶段的发展注入活力..\r\n</p>', '/data/attachment/news/20010417414722711.jpg', null, null, null, null, null, null, '0', '0', '1578130907', '1578130907', '1', null, null, 'ABB在“改革开放再启动中国制造奖”中获多项大奖', '');
INSERT INTO `zz_news` VALUES ('21', '0', '26', 'ABB支持中国单一较大海上风电项目', null, null, '11月初，广核阳江南鹏岛海上风电工程第一台5.5MW风机正式联网发电。这标志着该国的海上风电项目的正式启动。随着世界领先的电网技术ABB为该项目提供了若干解决方案，以积极支持广东省可再生能源的开发和利用。', '<p>\r\n	11月初，广核阳江南鹏岛海上风电工程第一台5.5MW风机正式联网发电。这标志着该国的海上风电项目的正式启动。随着世界领先的电网技术ABB为该项目提供了若干解决方案，以积极支持广东省可再生能源的开发和利用。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104174315_69626.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	中广渭阳江南鹏岛海上风电工程位于广东省阳江市东平镇南侧海岭岛东南侧。总装机容量401.5MW，配合建设220kV海上助推站和1个陆地集中控制中心。该项目预计将于2019年底完成20台风扇的发电。项目竣工后，预计每年将有10.15亿千瓦时的互联网用电量与同类燃煤发电厂相比。每年可节省标准煤311500吨，减少灰渣20600吨，减少二氧化碳828800吨。\r\n</p>\r\n<p>\r\n	在该项目中，ABB为南鹏岛风电场提供了240MVA/230kV变压器产品，用于海上助推器站的建设。ABB变压器产品具有防腐性强、抗震性强、可靠性高等特点，能很好地适应海上潮湿、风强的工作环境。主变压器是海上风力发电工程的核心设备。该设备的稳定运行将确保风力发电厂在2020年为风力发电提供可靠的技术支持。\r\n</p>\r\n<p>\r\n	开发适应各种严格条件的电力设备一直是ABB的专业知识。ABB为项目提供了紧凑、防腐的220kV气体绝缘封闭组合电器(GIS)设备。可以保证海上助推器站与陆地助推器站之间的平稳连接。吉斯是一种紧凑型金属封闭式开关设备，通过使用压缩绝缘气体在封闭空间中安全运行，大大降低了设备的尺寸。它广泛应用于远程功率传输和清洁能源。与普通空气绝缘设备相比，吉斯可以节省90%的空间，非常适合在有限的海上平台上安装。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104174327_48809.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	为了确保功率的稳定运输，ABB还为项目提供了35kV内圆锥形电缆终端和35kV冷缩电缆终端。35kV内锥插拔终端具有独特的斜向螺栓固定设计，安装方便，无特殊安装工具，大大降低了安装人员的现场操作难度。提高了产品的整体可靠性，35kV冷缩终端具有良好的抗紫外线、抗老化、防水、耐腐蚀等特点。适用于高海拔湿盐雾和重污染地区.\r\n</p>\r\n<p>\r\n	ABB集团高级副总裁张金泉表示。我们很荣幸地将ABB世界领先的海上风电技术和丰富的行业经验应用于该国的单一海上风电项目。由于广阔的海域成熟产业集群和详细的海上风电发展规划，广东海上风电发展已进入快速通道。在未来，希望ABB能够将更多的尖端技术引入广东。为广东省能源结构的调整和粤港澳大湾地区现代能源体系的建设提供了更多的支持。。\r\n</p>\r\n<p>\r\n	多年来，ABB一直与广东密切合作，帮助广东实现能源转型和产业升级。2018年11月，ABB与广东签署了一项全面的战略合作框架协议。双方将在能源先进制造新能源汽车、铁路运输和智能城市等领域进行深入的合作。\r\n</p>', '/data/attachment/news/20010417433639010.jpg', null, null, null, null, null, null, '0', '0', '1578131016', '1578242623', '1', null, null, 'ABB支持中国单一较大海上风电项目', '');
INSERT INTO `zz_news` VALUES ('22', '0', '25', 'ABB能力？高精度气体泄漏检测系统在世博会首次亮相', null, null, '11月6日，中国第二届国际进口博览会(进入新闻发布会)正如火如荼地进行着。ABB首次通过ABB专用软件的成熟算法和分析仪对ABB专用软件的成熟算法进行了测试。基于北斗导航系统的精确服务，有效地保证了城市燃气管网的安全。', '<p>\r\n	11月6日，中国第二届国际进口博览会(进入新闻发布会)正如火如荼地进行着。ABB首次通过ABB专用软件的成熟算法和分析仪对ABB专用软件的成熟算法进行了测试。基于北斗导航系统的精确服务，有效地保证了城市燃气管网的安全。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104174609_91508.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	ABB高级副总裁张志强在开幕式上的讲话中说，我们很高兴再次来到这个节目。展示和分享世界领先的创新技术和数字解决方案。我们希望将ABB在燃气管网泄漏试验领域的最新技术与我国领先的北斗高精度服务体系相结合。为促进城市安全管理和建设智能城市创造更大的价值。。\r\n</p>\r\n<p>\r\n	近年来，我国燃气行业管网规模不断扩大。在过去的五年里，燃气管网达到了400000~800000公里的飞速增长。同时，旧管道安全隐患越来越突出，历史遗留下来的管网问题对气体泄漏检测提出了更高的要求。迫切需要快速、准确和有效的管网体检。\r\n</p>\r\n<p>\r\n	针对这一市场需求，ABB推出了世界领先的高精度气体泄漏检测系统.该系统采用ABB专用泄漏检测软件成熟的泄漏检测算法。结合ABB甲烷/乙烷分析器检测到的气体浓度数据和北斗精密服务提供的时空位置信息。实时显示具有多种气体浓度的地理信息图，对气体泄漏进行准确的评价。\r\n</p>\r\n<p>\r\n	该系统可广泛应用于气体泄漏检测、气体管道常规检测、管道建设规划和管理隐患、应急抢修、大型活动和重要会议，以确保恶劣天气。根据云计算和信息安全技术，城市经理可以随时随地获取数据和泄漏报告。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104174622_77736.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	ABB工业自动化部测量和分析业务单位北亚和中国负责人潘英女士说。ABB测量和分析业务正在积极开发和提供各种智能测量、分析设备和数字解决方案。在城市天然气工业安全管理中存在诸多困难的基础上，引入了ABB高精度天然气泄漏检测系统。在早期的市场探索中得到了积极的反馈。。\r\n</p>\r\n<p>\r\n	该系统已在国内多家大型输气企业完成了10000多公里的输气管网检测和评价任务。为中国非洲论坛第六届世界互联网大会提供安全保障服务。\r\n</p>\r\n<p>\r\n	该系统基于ABBAbilityWaty平台开发的数字解决方案，实现了从设备系统到云的数字整合。结合ABB10亿级泄漏检测技术和北斗10cm高精度位置服务，充分发挥作用。\r\n</p>\r\n<p>\r\n	中国导航协会副秘书长王燕燕在新闻发布会上说，北斗导航系统是由中国独立开发和独立运行的全球导航系统。通过北斗精密服务站的建设，可以实现水平亚米水平的精确定位。北斗精度服务与北斗精度服务相结合，将促进城市燃气安全管理达到一个新的水平。促进智能城市的可持续发展。。\r\n</p>\r\n<p>\r\n	未来，根据不同应用场所的需要，不仅可以采用车载形式的高精度气体泄漏检测系统。还可以使用无人机和单人手持设备进行检查。在确保城市燃气安全的基础上，该系统还可以在北斗精确时空数据的基础上进一步发挥管网数据的价值。为管理决策提供支持，促进我国智能城市建设。\r\n</p>', '/data/attachment/news/20010417462427328.jpg', null, null, null, null, null, null, '7', '0', '1578131184', '1578131184', '1', null, null, 'ABB能力？高精度气体泄漏检测系统在世博会首次亮相', '');
INSERT INTO `zz_news` VALUES ('23', '0', '25', 'ABB赢得了升级巴西Copel水电站的合同', null, null, 'ABB的数字解决方案和工程服务将改善巴拉那州的电力可用性和可靠性，其中ABB赢得了250万美元的合同，升级了Copel的GovernadorJoséRicha水电站。', '<p>\r\n	ABB的数字解决方案和工程服务将改善巴拉那州的电力可用性和可靠性，其中ABB赢得了250万美元的合同，升级了Copel的GovernadorJoséRicha水电站。\r\n</p>\r\n<p>\r\n	ABB将为位于伊瓜苏河上已有20年历史的GovernadorJoséRicha \r\n1水电站的四台发电机组提供励磁系统和调速，并通过预测诊断帮助Copel（能源效率公司）提高其运行数据的可视性。该水力发电厂的装机功率为1240兆瓦，可满足大约450万居民（占巴拉那州人口的40％）的电力需求。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200105/20200105110945_24144.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	“励磁系统和涡轮调速器的升级以及它们与ABB Ability?800xA自动化系统的集成，将改善该水力发电厂的性能和可靠性，” \r\nABB巴西工业自动化主管MaurícioCunha说。\r\n</p>\r\n<p>\r\n	ABB的Unitrol?6000静态励磁系统（SES）包括一个高性能控制器。现代硬件使Unitrol?6000控制回路能够更快地响应电网干扰，而无需断开设备与电网的连接。Unitrol?6000 \r\nSES还具有两个独立的通道和一个用于应急控制发电机的附加备用通道。每个通道均设计为可处理最大励磁电流，从而提高了可靠性。“热交换” 2 \r\n维护，当系统仍在运行时，ii将提高可用性并延长工厂发电机的正常运行时间。延长正常运行时间可提高获利能力，同时还可保护电气组件。\r\n</p>\r\n<p>\r\n	Copel是巴西电力行业最大的公司之一。它拥有自己的46个发电厂-20个水力发电厂，1个热电厂和25个风电场-并经营着一定数量的水力发电厂。Copel对其他11个发电项目感兴趣，总装机容量为6,394 \r\nMW。ABB还通过资产管理和生命周期服务为Copel提供支持，以优化工厂。\r\n</p>\r\n<p>\r\n	“现代化旨在提高发电厂的运营效率，这是Copel Kuhn的战略目标，” Copel GeT发电业务主管Jaime de Oliveira \r\nKuhn说道。“经过20年的运营并产生了总计1.3亿兆瓦时的电力，现在是时候对约瑟夫·里奇哈（Governador）JoséRicha发电厂进行现代化改造，以确保其高性能和可靠性水平持续下去。ABB的生命周期支持使我们可以放心地更新我们的系统，并确保将提供适当的培训，而不必担心成本高昂的停机时间。”\r\n</p>\r\n<p>\r\n	新系统包括一个速度涡轮调节器，并符合电网规范合规性规定。ABB工业自动化ABB的工业自动化业务为过程和混合行业的客户提供广泛的产品，系统和解决方案。其中包括特定行业的集成自动化，电气化和数字解决方案，控制技术，软件和生命周期服务，以及测量和分析，船舶和涡轮增压产品。\r\n</p>\r\n<p>\r\n	ABB工业自动化 \r\nABB的工业自动化业务为过程和混合行业的客户提供广泛的产品，系统和解决方案。其中包括特定行业的集成自动化，电气化和数字解决方案，控制技术，软件和生命周期服务，以及测量和分析，船舶和涡轮增压产品。ABB的工业自动化业务在全球市场排名第二。凭借深厚的专业知识，经验和专业知识，ABB工业自动化可帮助客户提高竞争力，提高投资回报率并进行安全，智能和可持续的运营。\r\n</p>', '/data/attachment/news/20010511095515016.jpg', null, null, null, null, null, null, '0', '0', '1578193795', '1578193795', '1', null, null, 'ABB赢得了升级巴西Copel水电站的合同', '');
INSERT INTO `zz_news` VALUES ('24', '0', '25', 'ABB为AGRANA的新小麦淀粉工厂提供安全性和可靠性', null, null, '最长的生产正常运行时间对于位于奥地利Pischelsdorf的新工厂投资1亿欧元至关重要。为了确保连续运行，AGRANA依靠ABB驱动器以及完整的低压配电系统。', '<p>\r\n	最长的生产正常运行时间对于位于奥地利Pischelsdorf的新工厂投资1亿欧元至关重要。为了确保连续运行，AGRANA依靠ABB驱动器以及完整的低压配电系统。\r\n</p>\r\n<p>\r\n	奥地利食品加工集团AGRANA今天（2019年11月25日）在其Pischelsdorf工厂举行了第二家小麦淀粉生产工厂的正式开业。ABB提供，安装和调试了数百个驱动器以及完整的低压（LV）配电系统，可确保安全，可靠地控制工厂运营的各个方面，从接收原材料到加工到存储。\r\n</p>\r\n<p>\r\n	AGRANA已在新工厂投资约1亿欧元，使小麦淀粉产量翻了一番。目的是为了满足对小麦淀粉不断增长的需求，特别是由于再生纸使用量的增加，特别是造纸工业的需求。当前在线零售业的繁荣也推动了全球对包装材料的需求。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200105/20200105111124_34985.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	为了确保工厂的安全无间断运行，AGRANA对驱动器和配电系统设定了严格的要求。ABB在该站点于2013年开业的现有小麦淀粉工厂中拥有出色的业绩记录。这使AGRANA有信心选择ABB为其提供，安装和调试数百套ACS880驱动器和多驱动器以及MNS?低压开关设备。第二工厂。ABB食品与饮料副总裁Tatjana \r\nMilenovic表示：“ \r\nABB与AGRANA之间的高度合作是对我们对客户零距离承诺的切实证明。安全，系统灵活性，可靠性和效率等价值驱动因素可通过ABB的低压开关设备和驱动器得到有效解决。”\r\n</p>\r\n<p>\r\n	ABB设备部署在工厂的所有过程步骤中-从接收小麦原料到碾磨，倾析，淀粉提取再到淀粉料仓运输-广泛用于各种应用，包括泵，风扇，输送机和压缩机。\r\n</p>\r\n<p>\r\n	除能效和精确控制外，ABB驱动器内置的基于驱动器的集成安全功能还实现了高水平的安全性。MNS低压开关柜还具有全模块化，可抽出式设计，可为工厂的配电网络提供高水平的安全性，可用性和可靠性，从而最大程度地减少了因意外停机而造成的损失。\r\n</p>', null, null, null, null, null, null, null, '0', '0', '1578193886', '1578193886', '1', null, null, 'ABB为AGRANA的新小麦淀粉工厂提供安全性和可靠性', '');
INSERT INTO `zz_news` VALUES ('25', '0', '25', '用于ABB通用电机控制器的新软件，可更快，更轻松地配置设备', null, null, '工业控制系统领导者ABB已为其UMC100.3通用电动机控制器发布了新的软件FIM UMC版本，该配置使配置更快，更简单，可在几分钟内扫描识别并启用对设备的访问权限。对于过程工业，该软件有助于使UMC100.3成为用于预测性应用程序，维护和资产管理的智能数据中心。', '<p>\r\n	工业控制系统领导者ABB已为其UMC100.3通用电动机控制器发布了新的软件FIM \r\nUMC版本，该配置使配置更快，更简单，可在几分钟内扫描识别并启用对设备的访问权限。对于过程工业，该软件有助于使UMC100.3成为用于预测性应用程序，维护和资产管理的智能数据中心。\r\n</p>\r\n<p>\r\n	ABB全球产品专家HelmutSchönfelder表示：“ ABB \r\nUMC100.3提供了关键过程工业功能所需的高水平保护，同时将控制和通信提升到了新的水平。UBB 100.3的软件质量，适应性和立即熟悉的用户界面使UMC \r\n100.3成为最可用于未来的解决方案。”\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200105/20200105111342_10790.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	UMC100.3广泛用于过程工业，使低压电动机能够安全可靠地运行。该设备可以轻松地与ABB \r\n800xA分布式控制系统集成，作为完整的ABB解决方案的一部分，充当ABB Ability™基于云的数据分析和数字服务的网关。\r\n</p>\r\n<p>\r\n	UMC100.3的新现场信息管理器(FIM)软件使配置和集成现场设备，测试设置以及监视状态和诊断变得容易。它是唯一实现新的现场设备集成(FDI)标准的通用电动机控制器，可与平板电脑，笔记本电脑，PC和工作站兼容。\r\n</p>\r\n<p>\r\n	与任何其他电机控制器相比，UMC100.3与更多的通信协议兼容。这不仅减少了接线和安装;它使与其他控制系统和可编程逻辑控制器(PLC)的集成更加容易。\r\n</p>\r\n<p>\r\n	Schönfelder表示：“数据是关键工艺行业持续提高可靠性的关键。” \r\n“更多的数据意味着可以更快地发现错误：UMC100.3及其软件旨在提供这些数据，同时使流程更加人性化和通用。”\r\n</p>\r\n<p>\r\n	多语言FIM软件提供有效使用UMC100.3所需的所有功能。设备参数化以及操作和监视模式使配置，测试和在线诊断变得快速而轻松。集成项目管理工具支持较大的项目。\r\n</p>\r\n<p>\r\n	具有相同外观的通用软件工具的发布使UMC \r\n100.3更易于安装，使用和维护。ABB软件工具旨在使用户能够更快地访问关键参数，从而加快导航速度，从而节省时间。ABB的FIM允许用户一键访问设备菜单，轻松地从一台设备切换到另一台设备，并显着加快操作，诊断和参数设置的速度。\r\n</p>', '/data/attachment/news/20010511134799879.jpg', null, null, null, null, null, '', '0', '0', '1578194027', '1587972470', '1', null, null, '用于ABB通用电机控制器的新软件，可更快，更轻松地配置设备', '');
INSERT INTO `zz_news` VALUES ('26', '0', '25', 'ABB为荷兰托管数据中心的电气化提供动力', null, null, '托管数据中心和基础设施提供商Serverius选择ABB作为其两个主要站点的电力基础设施的翻新和扩展的战略合作伙伴。', '<p>\r\n	托管数据中心和基础设施提供商Serverius选择ABB作为其两个主要站点的电力基础设施的翻新和扩展的战略合作伙伴。\r\n</p>\r\n<p>\r\n	凭借自己的IP网络和不断增长的全球客户群，Serverius目前在阿姆斯特丹和法兰克福之间的数据高速公路上运营着两个数据中心。\r\n</p>\r\n<p>\r\n	经过近几年的快速发展，Serverius选择了ABB的一系列解决方案和服务，以对其位于Meppel和Dronten的数据中心进行现代化改造。这些解决方案将为其托管客户提供快速安全的连接，并具有更高的效率，可靠性和正常运行时间。\r\n</p>\r\n<p>\r\n	根据业务的当前需求，至关重要的是，可以在短时间内升级和改造这两个设施，并可以根据Serverius的客户需求灵活伸缩以保护托管数据中心的未来愿景。\r\n</p>\r\n<p>\r\n	Serverius面临两个主要挑战。在有限的空间内扩展其容量，并为他们现有的数据中心负载保持电源运行。为期六个月的项目使ABB提供了一系列电气化解决方案和数据中心安装功能。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200105/20200105111803_91523.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	ABB全球数据中心业务主管Ciaran \r\nFlanagan表示：“我们很荣幸能与这样一家领先的数据中心提供商合作。我们知道智能数据需要智能电源，在ABB，我们致力于为客户提供最灵活，可靠和智能的数据中心解决方案，以确保他们的业务一天24小时高效，安全地运行。”\r\n</p>\r\n<p>\r\n	提供完整交钥匙包的能力，包括全面的项目管理，安装合作伙伴关系以及可实现连续运营的灵活产品范围，对于任何托管服务提供商都是至关重要的。ABB系统的模块化设计意味着Serverius不需要关闭任何服务器机架，并且可以在升级工作期间保持服务交付。\r\n</p>\r\n<p>\r\n	Serverius技术基础架构负责人Alfred van den \r\nBerg解释说：“对我们而言，投资一套完整的电气化解决方案至关重要，这将有助于我们快速构建并确保在构建阶段的正常运行时间。从项目管理到最终交付，我们利用ABB的国际专业知识来执行整个项目。”\r\n</p>\r\n<p>\r\n	新的电力基础设施的核心是ABB的配电系统，这是一种经过验证的解决方案，将高水平的可靠性和质量与安全性结合在一起。中央开关柜一直到Amax断路器都包含ABB解决方案，使Serverius可以更直观地了解系统的运行状况。\r\n</p>\r\n<p>\r\n	ABB能够在高架地板下安装配电单元（PDU），以在不占用服务器机房宝贵空间的情况下提供额外的服务器电源，从而在有限的区域内提供更大的容量并保持数据负载运行。\r\n</p>\r\n<p>\r\n	ABB的SMISSLINE \r\nTP系统，世界上第一个触摸安全母线系统，使这一切成为可能。它允许卸下无负载的模块和组件并使其带电运行，而无需个人保护设备（PPE）来防止电气危险。插件模块节省了安装时间，并提供了干净整洁的机柜设计。\r\n</p>\r\n<p>\r\n	配电系统将与许多冗余DPA 500 UPS系统结合使用，从而优化电源的可用性。一个模块将用作附加的“安全系统”，而此2N + \r\n1解决方案的UPS总安装容量将等于1 MW。\r\n</p>\r\n<p>\r\n	Serverius的董事总经理Gijs van \r\nGemert补充道：“虽然我们于2009年在谷仓里成立，但现在我们已发展成为具有国际知名度和声誉的主要数据中心公司。对于期望值不断提高的客户，我们现在和将来都希望继续满足这一需求。通过与ABB合作，我们可以放心，我们将继续取得成功。”\r\n</p>', '/data/attachment/news/20010511182718598.jpg', null, null, null, null, null, null, '0', '0', '1578194299', '1578194307', '1', null, null, 'ABB为荷兰托管数据中心的电气化提供动力', '');
INSERT INTO `zz_news` VALUES ('15', '0', '26', '什么是abb电机', null, null, 'ABB电机是由瑞士制造的，因为ABB集团在瑞士苏黎世跻身全球500强企业之列。 ABB发明了许多产品和技术。 它们包括世界上第一个三相输电系统，世界上第一个自冷变压器，高压直流输电技术和第一个电动工业机器人，并带头使用它们。 ABB有广泛的产品线，包括全系列电力变压器和配电变压器。', '<p>\r\n	ABB电机是由瑞士制造的，因为ABB集团在瑞士苏黎世跻身全球500强企业之列。 ABB发明了许多产品和技术。 \r\n它们包括世界上第一个三相输电系统，世界上第一个自冷变压器，高压直流输电技术和第一个电动工业机器人，并带头使用它们。 \r\nABB有广泛的产品线，包括全系列电力变压器和配电变压器。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104171611_84195.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	本发明实时控制和优化了机器人软硬件和模拟系统的高效节能电机和传动系统。 功率质量转换和同步系统保护功率系统安全熔断和开关设备.. \r\n这些产品已广泛应用于工业和商业电力和公共产业。\r\n</p>\r\n<p>\r\n	ABB电机变压器是一种电磁感应原理，将电压电源转化为另一种电压电源(通常是交流电源)。 各种变压器都是从生产和输送电力到各种电力供应商使用的。\r\n</p>\r\n<p>\r\n	首先，变压器是电力系统的主要设备。 不可能将大功率电源远离较低的电压。\r\n</p>\r\n<p>\r\n	这是因为一方面，大电流会在输电线路上造成很大的功率损耗，另一方面，大电流也会在输电线路上造成很大的电压降落，使电力根本无法发电。 \r\n为此，需要变压器来提高发电机的端电压，从而降低相应的电流。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104171625_44844.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	此外，ABB是世界著名的大型技术集团，位于瑞士苏利斯。 主要服务于制造业、加工业、消费品行业、公用事业、石油天然气行业和基础设施行业。 \r\nABB在全球100多个国家拥有数千名雇员。\r\n</p>\r\n<p>\r\n	ABB电机采用耐温200°C漆线固定转子采用冷轧硅钢板浸漆技术，使固定转子表面和冷轧硅钢板间隙涂层均匀.. \r\n无细泡防止过大的气隙电阻有效地降低温度提高和电机效率，特别是进口SKF轴承，有效地延长了电机的使用寿命。 确保电机的安全运行。\r\n</p>', '/data/attachment/news/20010417272524982.jpg', null, null, null, null, null, '', '0', '0', '1578129389', '1587972233', '1', null, null, '什么是abb电机', '');
INSERT INTO `zz_news` VALUES ('16', '0', '31', 'ABB已在上海完成了两家合资企业的剥离工作', null, null, 'ABB(China)有限公司已经完成了上海两家合资企业的电力部门的剥离工作。 ABB将上海ABB开关有限公司和上海ABB广播电视有限公司的股份转让给上海广播电视有限公司(Group)的控股子公司。 上海广播电视(集团)股份有限公司是两家公司的合资伙伴，财务细节尚未披露。', '<p style=\"color:#000000;text-indent:0px;\">\r\n	ABB(China)有限公司已经完成了上海两家合资企业的电力部门的剥离工作。 \r\nABB将上海ABB开关有限公司和上海ABB广播电视有限公司的股份转让给上海广播电视有限公司(Group)的控股子公司。 \r\n上海广播电视(集团)股份有限公司是两家公司的合资伙伴，财务细节尚未披露。\r\n</p>\r\n<p style=\"color:#000000;text-indent:0px;\">\r\n	ABB电气部门总裁Meita说：这笔交易将减少ABB中国电气业务的复杂性，并加强我们对这一关键市场的关注。 \r\n这也是ABB促进积极产品组合战略的重要一步。\r\n</p>\r\n<p style=\"color:#000000;text-indent:0px;\" align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104172627_59569.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"color:#000000;text-indent:0px;\">\r\n	2018年，当ABB收购GE产业体系时，两家合资公司获得了60%的股份。 \r\n随着交易的完成，上海广播电视电气(Group)有限公司控股了这两家公司。 \r\nABB和上海广播电视电视有限公司(Group)将继续通过多年的供应协议作为长期合作伙伴进行业务。\r\n</p>\r\n<p style=\"color:#000000;text-indent:0px;\">\r\n	ABB与中国的关系可以追溯到1907年。 \r\n经过几十年的发展，ABB在中国拥有研发、制造、销售和工程服务。 44家当地公司的近2万名员工在130多个城市。 \r\n自1992年以来，ABB在中国的销售收入约为24亿美元，来自当地制造的产品系统和服务。 中国目前是世界第二大市场。\r\n</p>\r\n<p style=\"color:#000000;text-indent:0px;\">\r\n	ABB(Abbn)：SIXSwissEx是一家致力于促进行业数字转型和升级的全球技术领导者。 \r\n基于130多年的创新历史，ABB是世界领先的四大企业-电气工业自动化运动控制机器人和分离自动化。 和ABB阿比利猫数字平台。 \r\nABB电网业务将于2020年移交给日立集团。 ABB集团在全球100多个国家和地区拥有147000名员工。\r\n</p>', '/data/attachment/news/20010417265618377.jpg', null, null, null, null, null, null, '0', '0', '1578130003', '1578130016', '1', null, null, 'ABB已在上海完成了两家合资企业的剥离工作', '310000');
INSERT INTO `zz_news` VALUES ('14', '0', '25', '直线电机的正向和反向控制的原理和作用！', null, null, '如下图所示，电机可以控制前后启动方向，并且接近开关以自动停止行程控制电路。 接近开关是一种非接触开关，只要移动金属物体接近一定距离，就可以发出接近开关的信号。 控制移动物体的位置而不碰撞它。 因为它使用晶体管接近开关(无触点开关)，它比机械行程开关更可靠、更长。', '<p>\r\n	如下图所示，电机可以控制前后启动方向，并且接近开关以自动停止行程控制电路。 \r\n接近开关是一种非接触开关，只要移动金属物体接近一定距离，就可以发出接近开关的信号。 控制移动物体的位置而不碰撞它。 \r\n因为它使用晶体管接近开关(无触点开关)，它比机械行程开关更可靠、更长。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104170928_95496.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<strong>电机正向旋转</strong>：关闭电源开关Q关闭旋转开关S，接近开关SQ1SQ2线圈。 \r\n按下启动按钮SBKM1，并吸收电机正向运行，驱动金属体向下或向右移动，当金属体接近指定位置时。 \r\n接近开关SQ1的正常接触SQ1切断了前向控制电路，以阻止电机。\r\n</p>\r\n<p>\r\n	<strong>电机的反向旋转</strong>：按下反向启动按钮，SB3，KM2，电机反向运行，驱动金属体向下或向左移动。 \r\n当金属接近指定位置时，通常关闭的接触SQ2动作切断反向控制电路以阻止马达。\r\n</p>\r\n<p>\r\n	<strong>本电路的特点</strong>：具有控制可靠性、准确性和安全性的特点，适用于各种生产机械，需要上下移动，可以在指定的位置停止。\r\n</p>\r\n<h3>\r\n	第二个按钮锁定电机前后控制电路布线图\r\n</h3>\r\n<p>\r\n	如下图所示，电路是一种按钮互锁正负控制电路。实际上，它移除了接触器互锁电机的正负控制电路图。 更换复合按钮的封闭接触，以控制前后锁。 \r\n复合按钮的特点是在同一按钮上通常打开的触点与正常关闭的触点连接，并且在操作时经常关闭触点，然后关闭和复位。 经常关闭联系人。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104171138_43258.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	正向控制：关闭电源开关Q，按下正向旋转按钮，KM1线圈，吸收主触点，关闭辅助触点，关闭和自锁。 电机正在转动。 \r\n此时，电机的电源相序为A≤B-C.\r\n</p>\r\n<p>\r\n	<strong>反向控制：</strong>按反向启动按钮SB3，当SB3关闭时，SB3通常关闭触点首先关闭前向接触器KM1的线圈电源按钮SB3通常开启触点。 \r\n打开反向接触器KM2线圈的电源，以便km2吸力辅助打开接触点，关闭自锁主触点，关闭电机反转。 此时，电机的电源相序为C≤B-A。\r\n</p>\r\n<p>\r\n	如果需要马达停止并按下停止按钮SB1。\r\n</p>\r\n<p>\r\n	<strong>这种电路的特点</strong>：当电机前转时，可以直接按下反向按钮来逆转电机。 另外，当反向旋转时，可以直接按下前向旋转按钮，使电机的前向运行更加方便。 \r\n此外，由于两个启动按钮的正常关闭辅助接触锁，两个接触器不能同时通电，以避免短路事故。 本电路常适用于各种生产机械，需要积极、消极、连续运行，不经常运行。\r\n</p>\r\n<h3>\r\n	三个转换开关预选电机前后起止控制电路\r\n</h3>\r\n<p>\r\n	如下图所示，电路布线图可以实现电机前后控制.. \r\n在启动电机之前，先转换开关SA，然后通过启动按钮控制接触器，然后通过接触器的主触点打开和关闭电机的三相电源。 实现了电机的启动和停止。\r\n</p>\r\n<p>\r\n	事实上，该电路是在电机单向旋转控制电路的基础上，改变电机三相绕组与电源的连接，以实现电机的正向旋转。\r\n</p>\r\n<p>\r\n	转换开关SA有四个联系人和三个位置。当SA处于电源开关的顶部时，Q电机的三相绕组按A-B-C的顺序连接电源。 \r\n按下启动按钮SB2以实现前向转动;当SA处于中间位置时，当电机三相电源断开时，马达不会转动;当SA处于较低的位置时。 \r\n电机三相绕组按C-B-A相序访问电源，启动按钮SB2可以逆转电机。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104171239_15577.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<strong>本电路的特点是控制电路简单，不经常改变电机方向的生产机械。</strong>\r\n</p>\r\n<h3>\r\n	防止相间短路的电机前后控制电路布线图\r\n</h3>\r\n<p>\r\n	以下电路采用链式继电器延长转换时间，防止相位短路.. \r\n按下按钮SB3时，前转接触器KM1采用电吸合并自锁电机正向启动操作，KM1正常开启辅助接触km1/1/2紧闭。 \r\nKM1km2电路中连接的关闭触点K(3)K(4)K(5)6)断开，使KM2无法获得电源。 实现相互锁定。 \r\n当按下反向按钮SB2时，当主触点完全熄灭时，首先断开KM1控制电路KM1断开。 \r\n此时，K的正常关闭接触K(5)6)关闭KM2，以获得电吸和自锁电机的反向旋转。\r\n</p>\r\n<p>\r\n	该电路可以完全防止电弧短路在正负转换过程中适用于转换时间小于断弧时间的情况。\r\n</p>\r\n<h3>\r\n	刀开关控制电机启动单向旋转电路\r\n</h3>\r\n<p>\r\n	刀开关主要用于照明电路、三相电路和7.5kW以下的电机启动电路，因为它的虾具有熔断器。 它不仅可以起到开关的作用，而且可以起到短路保护的作用。 \r\n下图显示了马达单向旋转刀开关控制电路.\r\n</p>\r\n<p>\r\n	当关闭刀开关时，电机在单向启动时停止转动。 在电路短路事故的情况下，将熔断器连接到刀开关上，以切断电机的电源，防止电机烧坏。\r\n</p>\r\n<p>\r\n	该电路具有结构简单、维护方便、成本低等优点。 然而，它的现场拉合闸的灭弧能力较弱，只适用于不经常启动的小容量电机，不易实现远程控制。\r\n</p>\r\n<h3>\r\n	台自动往复带双向延迟电机控制电路\r\n</h3>\r\n<p>\r\n	下图显示了自动往复带双向延迟停留的控制电路. 该电路还具有移动控制功能。 按下SB3或SB4而不按SB2进行正向和反向移动操作。 \r\nSB2是自动往复启动按钮. SQ1是一个积极的变化，反向冲程开关SQ2是逆转正向冲程开关。\r\n</p>\r\n<p>\r\n	当按下SB2时，中间继电器KA被打开并自我锁定时，与接触器线圈电路连接的接触点被关闭，以便为自动循环做好准备。 \r\n然后按SB3KM1进行电吸和自锁电机正向旋转，当工作台正向到达极限位置时，行程开关SQ1断开KM1断电。 切断马达前向的马达。 \r\n同时，SQ1经常打开接触KT2，通过延迟停留KT2，关闭接触KM2，以吸收和锁定电机的反向启动。 \r\n行程开关SQ1复位通常打开触点断开，使KT2断电时关闭触点，为KM1准备电源。\r\n</p>\r\n<p>\r\n	当工作台反向运行到极限位置时，冲程开关SQ2允许其正常关闭触点被断开，KM2断电机的反向电源停止。 \r\n同时，SQ2经常打开接触关闭KT1，通过延迟停留KT1，关闭接触KM1和电吸合并自锁。 电机又开始向前移动。 从而实现自动往复循环工作。\r\n</p>\r\n<p>\r\n	本电路适用于炼铁高炉饲料汽车电机的控制。\r\n</p>\r\n<h3>\r\n	串直流电机刀开关正负控制电路布线图\r\n</h3>\r\n<p>\r\n	下图显示了一系列直流电机刀开关的可逆控制电路。 在图中，双刀双掷开关可以通过Q改变电枢绕组的电流方向，从而改变电机在连接到直流电源后的方向。 \r\n当开关开关开关时，电机的方向发生了变化，因为它只改变了电枢绕组的电流方向。 该电路可用于蓄电池车。\r\n</p>\r\n<h3>\r\n	改变直流电机电枢电压极，实现前后启动电路\r\n</h3>\r\n<p>\r\n	下图显示了一个启动电路图，以改变直流电机的电枢电压极，以实现电机的正负。 \r\n在图中，KM1km2是正向和负向接触器Rf，正向启动按钮SB3是反向启动按钮SB1作为停止按钮。\r\n</p>\r\n<p>\r\n	正向启动：关闭电源开关Q，按下启动按钮，SB2KM1线圈，并关闭自锁主触点，关闭电枢电路，电机正向启动并运行。 \r\n此外，由于KM1串联在KM2线圈电路中的正常关闭接触断开，km2不能用电互锁。\r\n</p>\r\n<p>\r\n	反向启动：如果在关闭电源开关Q后按下启动按钮SB3KM2线圈，并将主触点关闭并打开电枢电路。 电机的反向启动和操作。 \r\n此外，km2串联在km1线圈电路中的正常关闭接触断开，使km2无法获得电源以发挥相互锁定的作用。\r\n</p>\r\n<p>\r\n	停止3个马达：按下停止按钮SB1公里1(或km2)切断主触点，切断电机电枢电源马达。\r\n</p>\r\n<p>\r\n	为了防止电压损坏，励磁电路中放电电阻RF的电阻一般为励磁绕组电阻的5倍。\r\n</p>\r\n<h3>\r\n	顺利开关控制电机前后电路接线图\r\n</h3>\r\n<p>\r\n	逆向开关，也称为可逆转开关，是一种组合开关，倒置和平滑开关的操作手柄有三个位置。 \r\n适用于50Hz额定电压至380V的电路，可直接切断单台异步电机，停止正反转控制。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104171306_17374.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	如下图所示，KO3系列逆开关控制电机前后电路由三个相同的蝴蝶触点和九个U形静触点组成。 采用薄钢板防护外壳触点作为双断点形式，采用中间转轴操作。 \r\n在布线中间的三个触点连接到三相电源的右侧。\r\n</p>\r\n<p>\r\n	(1)当倒车开关的手柄在中间停止时，电源切断并不与电机接触。\r\n</p>\r\n<p>\r\n	第二，当手柄在右边时，电机的三相绕组ABC按顺序连接三相电机。\r\n</p>\r\n<p>\r\n	(3)当手柄在左侧时，电机的三相绕组BAC相序连接三相电机的反向旋转。\r\n</p>\r\n<p>\r\n	采用逆向开关控制的正负电路只适用于电机换向不频繁的情况下，如铣床主轴的正负选择和某些机床的电机的换向控制。\r\n</p>\r\n<h3>\r\n	旋转开关控制电机前后电路布线图\r\n</h3>\r\n<p>\r\n	转换控制开关适用于50赫兹或60赫兹交流电压至500V直流至440V的电路.. 作为一种小容量电机，直接启动停止和改变方向(前后逆转)。 \r\n如右图所示，用于转换开关控制的电机前后电路布线图。\r\n</p>\r\n<p>\r\n	根据电机的原理，只要电机上的电源线可以连接到电机上的任何两个阶段，就可以实现正负控制。 电路的工作方式如下。\r\n</p>\r\n<p>\r\n	转换开关SA有四个联系人和三个位置。 当电源开关Q将转换开关SA拉到顶部时，电源与电机M的三相绕组ABC连接。\r\n</p>\r\n<p>\r\n	2.当旋转开关SA拉到中间位置时，三相绕组电源被切断并停止旋转。\r\n</p>\r\n<p>\r\n	3.当旋转开关SA被拉到较低的位置时，电源可以与电机M的三相绕组ABC连接。\r\n</p>\r\n<p>\r\n	由于转换开关不具有灭弧装置，因此只适用于不经常启动和停止的场合，电机容量小于5.5kW。 特别适用于电机控制，如电动起重机。\r\n</p>\r\n<h3>\r\n	接触器互锁电机前后控制电路布线图\r\n</h3>\r\n<p>\r\n	一些生产机械往往要求运动部件在前后运动。 \r\n例如，机床的前向和后向主轴的前向和后向主轴的前向和后向起重机的上升和下降，这就要求拖动生产机械的电机来实现正负控制。\r\n</p>\r\n<p>\r\n	下图显示了两个接触器在主电路图中使用的主电路与接触器互锁，其中km1用于正向旋转km2。 这两个接触器不能同时通电，否则会导致两相电源短路. \r\n因此，将两个接触器的正常关闭辅助接触连接到另一个线圈电路以实现相互锁定。\r\n</p>\r\n<p>\r\n	正向旋转控制：关闭电源开关Q，按下前启动按钮SB2卷起触器KM1，吸收主触点，并经常打开辅助触点关闭自己。 马达M在前面旋转。 \r\n同时，KM1的正常关闭辅助触点被切断，以避免接触器km2的功率传输。 此时，电机连接电源的相序为A≤B-C.\r\n</p>\r\n<p>\r\n	反向旋转控制：如果需要电机从正向旋转转到反向旋转，请按下停止按钮SB1，使前向电路断开。 \r\n然后按下反向启动按钮SB3掩蔽接触km2线圈，并吸收主触点和辅助触点，以扭转电机。 同时，KM2的正常关闭辅助触点被切断，以避免接触器km1的功率传输。 \r\n此时，电机的电源相序为C≤B-A。\r\n</p>\r\n<p>\r\n	如果马达停止，按下停止按钮SB1。\r\n</p>\r\n<p>\r\n	当改变电机转向时，必须按下停止按钮，然后按下反向启动按钮来逆转电机。 该电路适用于需要可逆性操作的各种生产机械。\r\n</p>\r\n<h3>\r\n	个可逆行程开关控制电机自动停止电路接线图\r\n</h3>\r\n<p>\r\n	下图显示了一个可逆的启动和自动停止控制的行程开关。 行程开关由安装在运动部件上的冲击块按下，冲击块的安装位置按行程要求调整。 \r\n最大的特点是机械设备可以在每次启动后自动停止。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200104/20200104171359_69527.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	电机正向转动控制：关闭电源开关Q，按下启动按钮SB2触摸器KM1线圈，吸收主触点关闭，辅助触点关闭和自锁。 \r\n打开电机电机，由移动机械驱动的碰撞块向前或向右移动。 当冲击块到达指定位置时，冲程开关SQ1通常被关闭，导致前控制电路断开。\r\n</p>\r\n<p>\r\n	电机反向旋转控制：按下反向启动按钮SB2欧洲接触器KM2线圈，吸收主触点关闭辅助触点，关闭自锁主电路。 电机开始并倒转。 \r\n并由运动机械驱动的撞击块向下或向左移动。当碰撞块到指定位置时，冲程开关SQ2经常关闭触点并切断反向控制电路。 停止马达。\r\n</p>\r\n<p>\r\n	这种电路常用于各种生产机械，需要上下移动，并可在指定位置自动停止。\r\n</p>', '/data/attachment/news/20010417141655818.jpg', null, null, null, null, null, null, '0', '0', '1578129256', '1578129256', '1', null, null, '直线电机的正向和反向控制的原理和作用！', '');
INSERT INTO `zz_news` VALUES ('27', '0', '25', 'ABB赢得牵引设备订单，以扩大美国和欧洲的铁路车队', null, null, 'ABB已从瑞士火车制造商Stadler获得价值超过1.4亿美元的订单，为美国和一些欧洲国家的火车和机车提供最先进的牵引设备。这些订单已于2019年第二季度预订。', '<p>\r\n	ABB已从瑞士火车制造商Stadler获得价值超过1.4亿美元的订单，为美国和一些欧洲国家的火车和机车提供最先进的牵引设备。这些订单已于2019年第二季度预订。\r\n</p>\r\n<p>\r\n	在美国，该订单包括用于Caltrain的19列双层火车的牵引变流器，以满足旧金山湾区预计的旅行需求增长。配备ABB设备的新列车将有助于提供更好的服务，更快的连接和可持续的通勤服务。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200105/20200105112039_75984.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	订单包括ABB为挪威国有客运运营商Norske \r\nTog(NT)的27列区域火车提供的高效牵引变压器和牵引变流器。新的火车中有14套配备了ABB车载储能系统，可提高能源效率并提高车队的可持续性。\r\n</p>\r\n<p>\r\n	在德国，最新一代的车顶式牵引变流器和干式牵引变压器将安装在用于汉诺威S-Bahn网络的64列新型FLIRT(快速创新区域火车)列车上。这些转换器基于ABB的专利多级拓扑结构，并采用最新的半导体技术构建。还将为瑞士运营商SchweizerischeSüdostbahn(SOB)的12列新型FLIRT列车安装类似的牵引设备。由ABB供电的火车将为区域和长途路线服务。\r\n</p>\r\n<p>\r\n	Stadler在瓦伦西亚的西班牙子公司已订购15台机车的牵引变流器和牵引变压器，以在包括法国，德国和西班牙在内的多个国家/地区运行。此外，还为意大利和斯洛伐克的其他欧洲运营商订购了用于新型轨道车辆的牵引设备。\r\n</p>\r\n<p>\r\n	“与Stadler合作，我们已经成功地将新技术集成到现代火车中已有17年以上，” ABB Motion业务总裁Morten Wierod说。“ \r\nABB的高度紧凑和轻便的牵引技术使火车更加节能，改善了运行性能，并增加了空间以提高乘客的舒适度。”\r\n</p>\r\n<p>\r\n	ABB在为铁路部门提供创新和节能技术，制造和维修用于铁路基础设施和铁路车辆的城市，城际和高速网络中的所有组件和子系统的悠久历史。ABB还提供生命周期服务支持，包括为其庞大的全球客户群提供维护和翻新。\r\n</p>', '/data/attachment/news/20010511205794250.jpg', null, null, null, null, null, null, '0', '0', '1578194445', '1578194457', '1', null, null, 'ABB赢得牵引设备订单，以扩大美国和欧洲的铁路车队', '');
INSERT INTO `zz_news` VALUES ('28', '0', '25', 'ABB推出开放式API平台以促进智能家居自动化', null, null, '几十年来，ABB一直处在加速智能家居技术进步的最前沿，其连接的ABB-free @home?系统的近500万组件已安装在全球40多个国家中。', '<p>\r\n	几十年来，ABB一直处在加速智能家居技术进步的最前沿，其连接的ABB-free @home?系统的近500万组件已安装在全球40多个国家中。\r\n</p>\r\n<p>\r\n	随着对智能家居自动化的需求持续以两位数的速度增长，ABB今天推出了专业智能家居领域的第一个真正开放的API平台，它将为开发人员和合作伙伴提供完整的电器集成。\r\n</p>\r\n<p>\r\n	ABB的“智慧家庭开发人员计划”经验表明，需要一种更有效的ABB与开发人员之间的合作和沟通方式。因此，ABB已迈出了下一步，为将来集成第三方应用程序提供对其API平台的开放访问。\r\n</p>\r\n<p>\r\n	凭借在该领域已建立并经过验证的合作关系，ABB凭借其在建立合作伙伴关系方面的广泛经验为最终用户带来了收益。该公司已经利用Sonos，Signify和Amazon \r\nAlexa的API将应用程序集成到其ABB-free @home?和ABBi-bus?KNX系统中。\r\n</p>\r\n<p align=\"center\">\r\n	<img src=\"/data/upload/image/20200105/20200105115120_51500.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	首先，ABB将通过ABBi-bus?KNXBusch-ControlTouch?获得与Sonos进行KNX集成的正式认证。正如去年宣布的那样，ABB还与Signify紧密合作，通过其Philips \r\nHue开关控制环境照明。预计将于2019年底通过ABB-free @home?的API集成Miele设备和B / S / H设备。\r\n</p>\r\n<p>\r\n	决定开放其API的依据是最近几项引人注目的安装成功，这些安装已使用集成来推动成功。在酒店领域，ABB最近与Betterspace \r\n360??合作，通过与ABB-free @home?集成开发了定制的酒店客房服务应用程序。\r\n</p>\r\n<p>\r\n	Betterspace 360??在接待部门提供从大厅到酒店房间的数字解决方案。将来自ABB-free \r\n@home?系统的数据以及酒店房间内的其他应用程序集成到自定义的平板电脑界面中，客人可以通过一个简单的设备轻松控制酒店的所有功能，从照明到咖啡机或订餐服务。\r\n</p>\r\n<p>\r\n	环境辅助生活（AAL）空间中的另一项安装是开发虚拟助手化身，该化身与ABB-free \r\n@home?集成在一起，以促进老年人使用智能技术。该试验是与卢塞恩应用科技大学的iHomeLab合作设计的，目的是使用交互式解决方案提高老年人的福利。\r\n</p>\r\n<p>\r\n	“我的生活，我的方式”项目是第一个使用ABB新的开放式API为辅助生活环境中的社会和临床护理提供关键方面提供整体护理和虚拟支持的替代方法。\r\n</p>\r\n<p>\r\n	居民通过语音控制或平板电脑与之互动的虚拟助手可帮助用户控制典型的自动化功能，例如百叶窗的打开和关闭，以及包括视频通话在内的互动新应用。该试验是如此成功，以至于三分之二的参与者希望在试验期结束时保留该解决方案，因为他们认为该方案改善了他们的独立性和生活质量。\r\n</p>\r\n<p>\r\n	ABB Smart Buildings董事总经理Oliver \r\nIltisberger在评论开发过程时说：“凭借我们的开放API平台，我们是业内首家与其他行业参与者和合作伙伴合作全面开放技术的公司，从而受益匪浅。的消费者。这一举动将有助于使我们的生活空间更加满足我们的需求，使它们变得更加舒适，温馨，环保并为未来提供安全保障。”\r\n</p>\r\n<p>\r\n	通过由ABB具有云功能的数字平台ABB Ability?支持的MyBuildings Portal，可以访问API平台。\r\n</p>\r\n<p>\r\n	“ \r\nABB一直对创新技术如何创造更智能的生活空间有着清晰的愿景。开放我们的API只是ABB致力于释放以前尚未开发的潜力的又一例证，这最终将把智能家居技术提升到一个新的水平，并为房主提供更好的体验，” \r\nIltisberger补充说。\r\n</p>', '/data/attachment/news/20010511513385098.jpg', null, null, null, null, null, null, '1', '0', '1578196283', '1578196293', '1', null, null, 'ABB推出开放式API平台以促进智能家居自动化', '');
INSERT INTO `zz_news` VALUES ('37', '0', '0', '1', null, null, null, '', null, null, null, null, null, null, '', '0', '0', '1587971635', '1587971635', '1', null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of zz_user
-- ----------------------------
INSERT INTO `zz_user` VALUES ('1', 'admin', 'OEf8xA_PMABjae33xZvPC1RSwTAVnk0S', '$2y$13$0XWBG55M3OJyEdQSU5jCr.pqZG3RGoW9TTAk1KbRBQkxRO/qLt9Ci', null, null, null, null, null, '9', null, '1', null, '127.0.0.1', '1588063743', '0', null, null, '1588063743', null, null, '0', null, null, null, null, null, null);
INSERT INTO `zz_user` VALUES ('2', 'front', 'OEf8xA_PMABjae33xZvPC1RSwTAVnk0S', '$2y$13$0XWBG55M3OJyEdQSU5jCr.pqZG3RGoW9TTAk1KbRBQkxRO/qLt9Ci', null, null, null, null, null, '1', null, '1', null, '127.0.0.1', '1587892462', '0', null, null, '1587892462', null, null, '0', null, null, null, null, null, null);
INSERT INTO `zz_user` VALUES ('7', 'test', 'llkIVhd0Sjfw_hKEtmLuYMYxrxqUb56W', '$2y$13$umQt.Tqfi79fhWHM6fImM.05AJQoIKoEHVAvx9Q25jlha0BQ.DbZC', null, null, null, null, '', '8', null, '1', null, '127.0.0.1', '1588063707', '0', '1588063671', null, '1588064573', null, null, '0', 'test', null, null, null, null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='用户登录日志表';

-- ----------------------------
-- Records of zz_user_log
-- ----------------------------
INSERT INTO `zz_user_log` VALUES ('1', '1', '2', '前台退出!', null, '127.0.0.1', '1587721038');
INSERT INTO `zz_user_log` VALUES ('2', '1', '2', '前台登录!', null, '127.0.0.1', '1587721528');
INSERT INTO `zz_user_log` VALUES ('3', '1', '1', '后台登录!', null, '127.0.0.1', '1587887657');
INSERT INTO `zz_user_log` VALUES ('4', '1', '2', '前台登录!', null, '127.0.0.1', '1587892462');
INSERT INTO `zz_user_log` VALUES ('5', '1', '2', '前台退出!', null, '127.0.0.1', '1587953000');
INSERT INTO `zz_user_log` VALUES ('6', '1', '1', '后台登录!', null, '127.0.0.1', '1588045483');
INSERT INTO `zz_user_log` VALUES ('7', '1', '1', '后台登录!', null, '127.0.0.1', '1588045484');
INSERT INTO `zz_user_log` VALUES ('8', '1', '1', '后台退出!', null, '127.0.0.1', '1588063143');
INSERT INTO `zz_user_log` VALUES ('9', '1', '7', '后台登录!', null, '127.0.0.1', '1588063692');
INSERT INTO `zz_user_log` VALUES ('10', '1', '7', '后台退出!', null, '127.0.0.1', '1588063696');
INSERT INTO `zz_user_log` VALUES ('11', '1', '7', '后台登录!', null, '127.0.0.1', '1588063707');
INSERT INTO `zz_user_log` VALUES ('12', '1', '7', '后台退出!', null, '127.0.0.1', '1588063708');
INSERT INTO `zz_user_log` VALUES ('13', '1', '1', '后台登录!', null, '127.0.0.1', '1588063743');
INSERT INTO `zz_user_log` VALUES ('14', '1', '1', '后台退出!', null, '127.0.0.1', '1588143099');
INSERT INTO `zz_user_log` VALUES ('15', '1', '7', '后台登录!', null, '127.0.0.1', '1588143113');
INSERT INTO `zz_user_log` VALUES ('16', '1', '7', '后台退出!', null, '127.0.0.1', '1588149136');
INSERT INTO `zz_user_log` VALUES ('17', '1', '1', '后台登录!', null, '127.0.0.1', '1588149143');
