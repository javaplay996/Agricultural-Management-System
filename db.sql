/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - nongshiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nongshiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nongshiguanli`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,'收货人2','17703786902','地址2',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,'收货人3','17703786903','地址3',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,2,'收货人4','17703786904','地址4',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,1,'收货人5','17703786905','地址5',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,1,'收货人6','17703786906','地址6',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,2,'收货人7','17703786907','地址7',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,3,'收货人8','17703786908','地址8',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,2,'收货人9','17703786909','地址9',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,1,'收货人10','17703786910','地址10',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,1,'收货人11','17703786911','地址11',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,1,'收货人12','17703786912','地址12',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,3,'收货人13','17703786913','地址13',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,3,'收货人14','17703786914','地址14',1,'2023-05-13 10:53:39','2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,4,'张娜','17788889999','地址111',2,'2023-05-13 11:29:22','2023-05-13 11:29:21','2023-05-13 11:29:22');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`shangpin_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (1,1,3,2,'2023-05-13 11:13:18',NULL,'2023-05-13 11:13:18'),(2,1,13,2,'2023-05-13 11:13:40',NULL,'2023-05-13 11:13:40');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1第三个十多个','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-13 10:52:09'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-13 10:52:09'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-13 10:52:09'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-13 10:52:09'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-13 10:52:09'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-13 10:52:09'),(7,'nongzuowu_types','农作物类型',1,'农作物类型1',NULL,NULL,'2023-05-13 10:52:09'),(8,'nongzuowu_types','农作物类型',2,'农作物类型2',NULL,NULL,'2023-05-13 10:52:09'),(9,'nongzuowu_types','农作物类型',3,'农作物类型3',NULL,NULL,'2023-05-13 10:52:09'),(10,'nongzuowu_types','农作物类型',4,'农作物类型4',NULL,NULL,'2023-05-13 10:52:09'),(11,'nongzuowu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-13 10:52:09'),(12,'nongzuowu_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-13 10:52:09'),(13,'nongzuowu_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-13 10:52:09'),(14,'tudi_types','土地类型',1,'土地类型1',NULL,NULL,'2023-05-13 10:52:09'),(15,'tudi_types','土地类型',2,'土地类型2',NULL,NULL,'2023-05-13 10:52:09'),(16,'tudi_types','土地类型',3,'土地类型3',NULL,NULL,'2023-05-13 10:52:09'),(17,'tudi_types','土地类型',4,'土地类型4',NULL,NULL,'2023-05-13 10:52:09'),(18,'tudi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-13 10:52:09'),(19,'tudi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-13 10:52:09'),(20,'tudi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-13 10:52:09'),(21,'qixiangshuju_types','气象数据类型',1,'气象数据类型1',NULL,NULL,'2023-05-13 10:52:09'),(22,'qixiangshuju_types','气象数据类型',2,'气象数据类型2',NULL,NULL,'2023-05-13 10:52:09'),(23,'qixiangshuju_types','气象数据类型',3,'气象数据类型3',NULL,NULL,'2023-05-13 10:52:09'),(24,'qixiangshuju_types','气象数据类型',4,'气象数据类型4',NULL,NULL,'2023-05-13 10:52:09'),(25,'qixiangshuju_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-13 10:52:09'),(26,'qixiangshuju_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-13 10:52:09'),(27,'qixiangshuju_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-13 10:52:09'),(28,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-05-13 10:52:09'),(29,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-05-13 10:52:09'),(30,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-05-13 10:52:09'),(31,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-05-13 10:52:09'),(32,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-13 10:52:09'),(33,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-13 10:52:09'),(34,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-13 10:52:09'),(35,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-05-13 10:52:09'),(36,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-05-13 10:52:09'),(37,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-05-13 10:52:09'),(38,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-05-13 10:52:09'),(39,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-05-13 10:52:09'),(40,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-05-13 10:52:10'),(41,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-05-13 10:52:10'),(42,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-05-13 10:52:10'),(43,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-13 10:52:10'),(44,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-13 10:52:10'),(45,'jiankongjiedian_types','监控节点类型',1,'监控节点类型1',NULL,NULL,'2023-05-13 10:52:10'),(46,'jiankongjiedian_types','监控节点类型',2,'监控节点类型2',NULL,NULL,'2023-05-13 10:52:10'),(47,'jiankongjiedian_types','监控节点类型',3,'监控节点类型3',NULL,NULL,'2023-05-13 10:52:10'),(48,'jiankongjiedian_types','监控节点类型',4,'监控节点类型4',NULL,NULL,'2023-05-13 10:52:10'),(49,'xuanmiaoyuzhong_types','选苗育种类型',1,'选苗育种类型1',NULL,NULL,'2023-05-13 10:52:10'),(50,'xuanmiaoyuzhong_types','选苗育种类型',2,'选苗育种类型2',NULL,NULL,'2023-05-13 10:52:10'),(51,'xuanmiaoyuzhong_types','选苗育种类型',3,'选苗育种类型3',NULL,NULL,'2023-05-13 10:52:10'),(52,'xuanmiaoyuzhong_types','选苗育种类型',4,'选苗育种类型4',NULL,NULL,'2023-05-13 10:52:10'),(53,'nongshianpai_types','农事安排类型',1,'农事安排类型1',NULL,NULL,'2023-05-13 10:52:10'),(54,'nongshianpai_types','农事安排类型',2,'农事安排类型2',NULL,NULL,'2023-05-13 10:52:10'),(55,'nongshianpai_types','农事安排类型',3,'农事安排类型3',NULL,NULL,'2023-05-13 10:52:10'),(56,'nongshianpai_types','农事安排类型',4,'农事安排类型4',NULL,NULL,'2023-05-13 10:52:10'),(57,'xuanmiaoyuzhong_types','选苗育种类型',5,'选苗育种类型5',NULL,'','2023-05-13 11:32:08');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-05-13 10:53:39','公告详情1','2023-05-13 10:53:39'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-13 10:53:39','公告详情2','2023-05-13 10:53:39'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-05-13 10:53:39','公告详情3','2023-05-13 10:53:39'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-05-13 10:53:39','公告详情4','2023-05-13 10:53:39'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-05-13 10:53:39','公告详情5','2023-05-13 10:53:39'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-13 10:53:39','公告详情6','2023-05-13 10:53:39'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-05-13 10:53:39','公告详情7','2023-05-13 10:53:39'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-13 10:53:39','公告详情8','2023-05-13 10:53:39'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-05-13 10:53:39','公告详情9','2023-05-13 10:53:39'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-13 10:53:39','公告详情10','2023-05-13 10:53:39'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-13 10:53:39','公告详情11','2023-05-13 10:53:39'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-13 10:53:39','公告详情12','2023-05-13 10:53:39'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-13 10:53:39','公告详情13','2023-05-13 10:53:39'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-13 10:53:39','公告详情14','2023-05-13 10:53:39');

/*Table structure for table `jiankongjiedian` */

DROP TABLE IF EXISTS `jiankongjiedian`;

CREATE TABLE `jiankongjiedian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiankongjiedian_uuid_number` varchar(200) DEFAULT NULL COMMENT '监控节点编号',
  `jiankongjiedian_name` varchar(200) DEFAULT NULL COMMENT '监控节点名称  Search111 ',
  `jiankongjiedian_photo` varchar(200) DEFAULT NULL COMMENT '监控节点照片',
  `jiankongjiedian_address` varchar(200) DEFAULT NULL COMMENT '监控位置',
  `jiankongjiedian_types` int(11) DEFAULT NULL COMMENT '监控节点类型 Search111',
  `jiankongjiedian_content` longtext COMMENT '监控节点备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='监控节点';

/*Data for the table `jiankongjiedian` */

insert  into `jiankongjiedian`(`id`,`jiankongjiedian_uuid_number`,`jiankongjiedian_name`,`jiankongjiedian_photo`,`jiankongjiedian_address`,`jiankongjiedian_types`,`jiankongjiedian_content`,`insert_time`,`create_time`) values (1,'1683946419358','监控节点名称1','upload/jiankongjiedian1.jpg','监控位置1',3,'监控节点备注1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,'1683946419323','监控节点名称2','upload/jiankongjiedian2.jpg','监控位置2',4,'监控节点备注2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,'1683946419364','监控节点名称3','upload/jiankongjiedian3.jpg','监控位置3',2,'监控节点备注3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,'1683946419353','监控节点名称4','upload/jiankongjiedian4.jpg','监控位置4',1,'监控节点备注4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,'1683946419368','监控节点名称5','upload/jiankongjiedian5.jpg','监控位置5',4,'监控节点备注5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,'1683946419344','监控节点名称6','upload/jiankongjiedian6.jpg','监控位置6',3,'监控节点备注6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,'1683946419412','监控节点名称7','upload/jiankongjiedian7.jpg','监控位置7',1,'监控节点备注7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,'1683946419332','监控节点名称8','upload/jiankongjiedian8.jpg','监控位置8',2,'监控节点备注8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,'1683946419392','监控节点名称9','upload/jiankongjiedian9.jpg','监控位置9',2,'监控节点备注9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,'1683946419339','监控节点名称10','upload/jiankongjiedian10.jpg','监控位置10',3,'监控节点备注10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,'1683946419330','监控节点名称11','upload/jiankongjiedian11.jpg','监控位置11',3,'监控节点备注11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,'1683946419320','监控节点名称12','upload/jiankongjiedian12.jpg','监控位置12',2,'监控节点备注12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,'1683946419365','监控节点名称13','upload/jiankongjiedian13.jpg','监控位置13',2,'监控节点备注13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,'1683946419366','监控节点名称14','upload/jiankongjiedian14.jpg','监控位置14',3,'监控节点备注14','2023-05-13 10:53:39','2023-05-13 10:53:39');

/*Table structure for table `jiankongjiedian_jilu` */

DROP TABLE IF EXISTS `jiankongjiedian_jilu`;

CREATE TABLE `jiankongjiedian_jilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiankongjiedian_jilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '监控记录编号',
  `jiankongjiedian_jilu_name` varchar(200) DEFAULT NULL COMMENT '监控记录名称  Search111 ',
  `jiankongjiedian_jilu_photo` varchar(200) DEFAULT NULL COMMENT '监拍照片',
  `jiankongjiedian_shuzhi` varchar(200) DEFAULT NULL COMMENT '监控数值',
  `jiankongjiedian_jilu_content` longtext COMMENT '监控记录备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='监控记录';

/*Data for the table `jiankongjiedian_jilu` */

insert  into `jiankongjiedian_jilu`(`id`,`jiankongjiedian_jilu_uuid_number`,`jiankongjiedian_jilu_name`,`jiankongjiedian_jilu_photo`,`jiankongjiedian_shuzhi`,`jiankongjiedian_jilu_content`,`insert_time`,`create_time`) values (1,'1683946419321','监控记录名称1','upload/jiankongjiedian_jilu1.jpg','监控数值1','监控记录备注1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,'1683946419396','监控记录名称2','upload/jiankongjiedian_jilu2.jpg','监控数值2','监控记录备注2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,'1683946419324','监控记录名称3','upload/jiankongjiedian_jilu3.jpg','监控数值3','监控记录备注3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,'1683946419339','监控记录名称4','upload/jiankongjiedian_jilu4.jpg','监控数值4','监控记录备注4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,'1683946419391','监控记录名称5','upload/jiankongjiedian_jilu5.jpg','监控数值5','监控记录备注5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,'1683946419318','监控记录名称6','upload/jiankongjiedian_jilu6.jpg','监控数值6','监控记录备注6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,'1683946419324','监控记录名称7','upload/jiankongjiedian_jilu7.jpg','监控数值7','监控记录备注7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,'1683946419326','监控记录名称8','upload/jiankongjiedian_jilu8.jpg','监控数值8','监控记录备注8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,'1683946419357','监控记录名称9','upload/jiankongjiedian_jilu9.jpg','监控数值9','监控记录备注9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,'1683946419394','监控记录名称10','upload/jiankongjiedian_jilu10.jpg','监控数值10','监控记录备注10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,'1683946419391','监控记录名称11','upload/jiankongjiedian_jilu11.jpg','监控数值11','监控记录备注11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,'1683946419340','监控记录名称12','upload/jiankongjiedian_jilu12.jpg','监控数值12','监控记录备注12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,'1683946419397','监控记录名称13','upload/jiankongjiedian_jilu13.jpg','监控数值13','监控记录备注13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,'1683946419367','监控记录名称14','upload/jiankongjiedian_jilu14.jpg','监控数值14','监控记录备注14','2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,'1683948690705','名称111','/upload/1683948698080.jpg','54','<p>个第三个十多个第三个</p>','2023-05-13 11:31:43','2023-05-13 11:31:43');

/*Table structure for table `nongshianpai` */

DROP TABLE IF EXISTS `nongshianpai`;

CREATE TABLE `nongshianpai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `nongshianpai_uuid_number` varchar(200) DEFAULT NULL COMMENT '农事安排编号',
  `nongshianpai_name` varchar(200) DEFAULT NULL COMMENT '农事安排标题  Search111 ',
  `nongshianpai_file` varchar(200) DEFAULT NULL COMMENT '农事安排附件',
  `nongshianpai_address` varchar(200) DEFAULT NULL COMMENT '安排地点',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '安排时间',
  `nongshianpai_time` timestamp NULL DEFAULT NULL COMMENT '要执行时间',
  `nongshianpai_types` int(11) DEFAULT NULL COMMENT '农事安排类型 Search111',
  `nongshianpai_content` longtext COMMENT '农事安排内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='农事安排';

/*Data for the table `nongshianpai` */

insert  into `nongshianpai`(`id`,`yuangong_id`,`nongshianpai_uuid_number`,`nongshianpai_name`,`nongshianpai_file`,`nongshianpai_address`,`insert_time`,`nongshianpai_time`,`nongshianpai_types`,`nongshianpai_content`,`create_time`) values (1,2,'1683946419379','农事安排标题1','upload/file.rar','安排地点1','2023-05-13 10:53:39','2023-05-13 10:53:39',1,'农事安排内容1','2023-05-13 10:53:39'),(2,1,'1683946419334','农事安排标题2','upload/file.rar','安排地点2','2023-05-13 10:53:39','2023-05-13 10:53:39',2,'农事安排内容2','2023-05-13 10:53:39'),(3,2,'1683946419326','农事安排标题3','upload/file.rar','安排地点3','2023-05-13 10:53:39','2023-05-13 10:53:39',4,'农事安排内容3','2023-05-13 10:53:39'),(4,1,'1683946419346','农事安排标题4','upload/file.rar','安排地点4','2023-05-13 10:53:39','2023-05-13 10:53:39',3,'农事安排内容4','2023-05-13 10:53:39'),(5,1,'1683946419340','农事安排标题5','upload/file.rar','安排地点5','2023-05-13 10:53:39','2023-05-13 10:53:39',4,'农事安排内容5','2023-05-13 10:53:39'),(6,2,'1683946419344','农事安排标题6','upload/file.rar','安排地点6','2023-05-13 10:53:39','2023-05-13 10:53:39',2,'农事安排内容6','2023-05-13 10:53:39'),(7,3,'1683946419375','农事安排标题7','upload/file.rar','安排地点7','2023-05-13 10:53:39','2023-05-13 10:53:39',1,'农事安排内容7','2023-05-13 10:53:39'),(8,2,'1683946419365','农事安排标题8','upload/file.rar','安排地点8','2023-05-13 10:53:39','2023-05-13 10:53:39',3,'农事安排内容8','2023-05-13 10:53:39'),(9,1,'1683946419400','农事安排标题9','upload/file.rar','安排地点9','2023-05-13 10:53:39','2023-05-13 10:53:39',2,'农事安排内容9','2023-05-13 10:53:39'),(10,2,'1683946419337','农事安排标题10','upload/file.rar','安排地点10','2023-05-13 10:53:39','2023-05-13 10:53:39',3,'农事安排内容10','2023-05-13 10:53:39'),(11,3,'1683946419391','农事安排标题11','upload/file.rar','安排地点11','2023-05-13 10:53:39','2023-05-13 10:53:39',2,'农事安排内容11','2023-05-13 10:53:39'),(12,2,'1683946419333','农事安排标题12','upload/file.rar','安排地点12','2023-05-13 10:53:39','2023-05-13 10:53:39',2,'农事安排内容12','2023-05-13 10:53:39'),(13,1,'1683946419396','农事安排标题13','upload/file.rar','安排地点13','2023-05-13 10:53:39','2023-05-13 10:53:39',4,'农事安排内容13','2023-05-13 10:53:39'),(14,2,'1683946419333','农事安排标题14','upload/file.rar','安排地点14','2023-05-13 10:53:39','2023-05-13 10:53:39',4,'农事安排内容14','2023-05-13 10:53:39'),(15,1,'1683948797518','安排1111','/upload/1683948803894.doc','地点111','2023-05-13 11:33:31','2023-05-13 11:33:27',2,'<p>更汗的是广东省格式的</p>','2023-05-13 11:33:31');

/*Table structure for table `nongzuowu` */

DROP TABLE IF EXISTS `nongzuowu`;

CREATE TABLE `nongzuowu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tudi_id` int(11) DEFAULT NULL COMMENT '土地',
  `nongzuowu_uuid_number` varchar(200) DEFAULT NULL COMMENT '农作物编号',
  `nongzuowu_name` varchar(200) DEFAULT NULL COMMENT '农作物名称  Search111 ',
  `nongzuowu_photo` varchar(200) DEFAULT NULL COMMENT '农作物照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `nongzuowu_types` int(11) DEFAULT NULL COMMENT '农作物类型 Search111',
  `nongzuowu_kucun_number` int(11) DEFAULT NULL COMMENT '种植数量',
  `nongzuowu_clicknum` int(11) DEFAULT NULL COMMENT '农作物热度',
  `nongzuowu_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '种植开始时间',
  `nongzuowu_yujijieshu_time` timestamp NULL DEFAULT NULL COMMENT '种植预计结束时间',
  `nongzuowu_content` longtext COMMENT '农作物种植备注',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='农作物';

/*Data for the table `nongzuowu` */

insert  into `nongzuowu`(`id`,`tudi_id`,`nongzuowu_uuid_number`,`nongzuowu_name`,`nongzuowu_photo`,`zan_number`,`cai_number`,`nongzuowu_types`,`nongzuowu_kucun_number`,`nongzuowu_clicknum`,`nongzuowu_kaishi_time`,`nongzuowu_yujijieshu_time`,`nongzuowu_content`,`shangxia_types`,`insert_time`,`create_time`) values (1,1,'1683946419342','农作物名称1','upload/nongzuowu1.jpg',92,270,2,101,289,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注1',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,'1683946419411','农作物名称2','upload/nongzuowu2.jpg',6,336,4,102,3,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注2',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,'1683946419407','农作物名称3','upload/nongzuowu3.jpg',460,152,3,103,328,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注3',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,'1683946419358','农作物名称4','upload/nongzuowu4.jpg',209,483,3,104,15,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注4',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,'1683946419387','农作物名称5','upload/nongzuowu5.jpg',362,446,1,105,233,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注5',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,'1683946419401','农作物名称6','upload/nongzuowu6.jpg',445,256,1,106,237,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注6',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,'1683946419387','农作物名称7','upload/nongzuowu7.jpg',314,378,4,107,109,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注7',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,'1683946419343','农作物名称8','upload/nongzuowu8.jpg',271,352,1,108,352,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注8',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,'1683946419342','农作物名称9','upload/nongzuowu9.jpg',3,262,1,109,36,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注9',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,'1683946419329','农作物名称10','upload/nongzuowu10.jpg',259,460,1,1010,259,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注10',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,'1683946419354','农作物名称11','upload/nongzuowu11.jpg',184,494,1,1011,228,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注11',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,'1683946419350','农作物名称12','upload/nongzuowu12.jpg',337,338,4,1012,192,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注12',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,'1683946419378','农作物名称13','upload/nongzuowu13.jpg',66,260,3,1013,294,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注13',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,'1683946419387','农作物名称14','upload/nongzuowu14.jpg',385,136,4,1014,312,'2023-05-13 10:53:39','2023-05-13 10:53:39','农作物种植备注14',1,'2023-05-13 10:53:39','2023-05-13 10:53:39');

/*Table structure for table `nongzuowu_collection` */

DROP TABLE IF EXISTS `nongzuowu_collection`;

CREATE TABLE `nongzuowu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongzuowu_id` int(11) DEFAULT NULL COMMENT '农作物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongzuowu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='农作物收藏';

/*Data for the table `nongzuowu_collection` */

insert  into `nongzuowu_collection`(`id`,`nongzuowu_id`,`yonghu_id`,`nongzuowu_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,3,4,2,'2023-05-13 11:28:31','2023-05-13 11:28:31'),(16,3,4,1,'2023-05-13 11:28:33','2023-05-13 11:28:33');

/*Table structure for table `nongzuowu_liuyan` */

DROP TABLE IF EXISTS `nongzuowu_liuyan`;

CREATE TABLE `nongzuowu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongzuowu_id` int(11) DEFAULT NULL COMMENT '农作物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongzuowu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='农作物留言';

/*Data for the table `nongzuowu_liuyan` */

insert  into `nongzuowu_liuyan`(`id`,`nongzuowu_id`,`yonghu_id`,`nongzuowu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-05-13 10:53:39','回复信息1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,1,'留言内容2','2023-05-13 10:53:39','回复信息2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,2,'留言内容3','2023-05-13 10:53:39','回复信息3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,1,'留言内容4','2023-05-13 10:53:39','回复信息4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,3,'留言内容5','2023-05-13 10:53:39','回复信息5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,2,'留言内容6','2023-05-13 10:53:39','回复信息6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,1,'留言内容7','2023-05-13 10:53:39','回复信息7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,3,'留言内容8','2023-05-13 10:53:39','回复信息8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,3,'留言内容9','2023-05-13 10:53:39','回复信息9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,2,'留言内容10','2023-05-13 10:53:39','回复信息10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,1,'留言内容11','2023-05-13 10:53:39','回复信息11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,3,'留言内容12','2023-05-13 10:53:39','回复信息12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,1,'留言内容13','2023-05-13 10:53:39','回复信息13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,1,'留言内容14','2023-05-13 10:53:39','回复信息14','2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,3,4,'hdfshsh孤独颂歌','2023-05-13 11:28:38',NULL,NULL,'2023-05-13 11:28:38');

/*Table structure for table `qixiangshuju` */

DROP TABLE IF EXISTS `qixiangshuju`;

CREATE TABLE `qixiangshuju` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qixiangshuju_name` varchar(200) DEFAULT NULL COMMENT '气象数据标题  Search111 ',
  `qixiangshuju_uuid_number` varchar(200) DEFAULT NULL COMMENT '气象数据编号',
  `qixiangshuju_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `qixiangshuju_address` varchar(200) DEFAULT NULL COMMENT '气象地址',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `qixiangshuju_types` int(11) DEFAULT NULL COMMENT '气象类型 Search111',
  `qixiangshuju_da_zhi` decimal(10,2) DEFAULT NULL COMMENT '气象值(大)',
  `qixiangshuju_xiao_zhi` decimal(10,2) DEFAULT NULL COMMENT '气象值(小)',
  `qixiangshuju_clicknum` int(11) DEFAULT NULL COMMENT '气象热度',
  `qixiangshuju_time` timestamp NULL DEFAULT NULL COMMENT '所属时间',
  `qixiangshuju_content` longtext COMMENT '气象数据详情',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='气象数据';

/*Data for the table `qixiangshuju` */

insert  into `qixiangshuju`(`id`,`qixiangshuju_name`,`qixiangshuju_uuid_number`,`qixiangshuju_photo`,`qixiangshuju_address`,`zan_number`,`cai_number`,`qixiangshuju_types`,`qixiangshuju_da_zhi`,`qixiangshuju_xiao_zhi`,`qixiangshuju_clicknum`,`qixiangshuju_time`,`qixiangshuju_content`,`shangxia_types`,`insert_time`,`create_time`) values (1,'气象数据标题1','1683946419365','upload/qixiangshuju1.jpg','气象地址1',237,282,1,'335.73','107.66',372,'2023-05-13 10:53:39','气象数据详情1',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,'气象数据标题2','1683946419345','upload/qixiangshuju2.jpg','气象地址2',115,120,2,'715.12','631.12',269,'2023-05-13 10:53:39','气象数据详情2',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,'气象数据标题3','1683946419383','upload/qixiangshuju3.jpg','气象地址3',445,105,2,'974.48','706.82',91,'2023-05-13 10:53:39','气象数据详情3',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,'气象数据标题4','1683946419363','upload/qixiangshuju4.jpg','气象地址4',40,204,4,'244.70','503.33',160,'2023-05-13 10:53:39','气象数据详情4',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,'气象数据标题5','1683946419399','upload/qixiangshuju5.jpg','气象地址5',414,171,2,'540.58','475.53',391,'2023-05-13 10:53:39','气象数据详情5',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,'气象数据标题6','1683946419385','upload/qixiangshuju6.jpg','气象地址6',409,205,3,'940.78','269.54',225,'2023-05-13 10:53:39','气象数据详情6',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,'气象数据标题7','1683946419396','upload/qixiangshuju7.jpg','气象地址7',228,253,3,'145.17','517.29',173,'2023-05-13 10:53:39','气象数据详情7',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,'气象数据标题8','1683946419419','upload/qixiangshuju8.jpg','气象地址8',41,467,1,'890.30','737.22',24,'2023-05-13 10:53:39','气象数据详情8',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,'气象数据标题9','1683946419363','upload/qixiangshuju9.jpg','气象地址9',475,222,3,'327.81','978.34',166,'2023-05-13 10:53:39','气象数据详情9',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,'气象数据标题10','1683946419388','upload/qixiangshuju10.jpg','气象地址10',236,84,2,'583.66','106.14',118,'2023-05-13 10:53:39','气象数据详情10',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,'气象数据标题11','1683946419366','upload/qixiangshuju11.jpg','气象地址11',71,434,3,'622.42','924.19',325,'2023-05-13 10:53:39','气象数据详情11',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,'气象数据标题12','1683946419376','upload/qixiangshuju12.jpg','气象地址12',188,57,3,'861.19','440.55',79,'2023-05-13 10:53:39','气象数据详情12',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,'气象数据标题13','1683946419342','upload/qixiangshuju13.jpg','气象地址13',57,463,4,'153.77','73.79',327,'2023-05-13 10:53:39','气象数据详情13',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,'气象数据标题14','1683946419387','upload/qixiangshuju14.jpg','气象地址14',334,69,4,'167.84','203.46',474,'2023-05-13 10:53:39','气象数据详情14',1,'2023-05-13 10:53:39','2023-05-13 10:53:39');

/*Table structure for table `qixiangshuju_collection` */

DROP TABLE IF EXISTS `qixiangshuju_collection`;

CREATE TABLE `qixiangshuju_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qixiangshuju_id` int(11) DEFAULT NULL COMMENT '气象数据',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qixiangshuju_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='气象数据收藏';

/*Data for the table `qixiangshuju_collection` */

insert  into `qixiangshuju_collection`(`id`,`qixiangshuju_id`,`yonghu_id`,`qixiangshuju_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,1,4,1,'2023-05-13 11:30:14','2023-05-13 11:30:14');

/*Table structure for table `qixiangshuju_liuyan` */

DROP TABLE IF EXISTS `qixiangshuju_liuyan`;

CREATE TABLE `qixiangshuju_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qixiangshuju_id` int(11) DEFAULT NULL COMMENT '气象数据',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qixiangshuju_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='气象数据留言';

/*Data for the table `qixiangshuju_liuyan` */

insert  into `qixiangshuju_liuyan`(`id`,`qixiangshuju_id`,`yonghu_id`,`qixiangshuju_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-05-13 10:53:39','回复信息1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,2,'留言内容2','2023-05-13 10:53:39','回复信息2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,1,'留言内容3','2023-05-13 10:53:39','回复信息3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,1,'留言内容4','2023-05-13 10:53:39','回复信息4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,3,'留言内容5','2023-05-13 10:53:39','回复信息5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,3,'留言内容6','2023-05-13 10:53:39','回复信息6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,2,'留言内容7','2023-05-13 10:53:39','回复信息7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,3,'留言内容8','2023-05-13 10:53:39','回复信息8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,1,'留言内容9','2023-05-13 10:53:39','回复信息9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,1,'留言内容10','2023-05-13 10:53:39','回复信息10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,3,'留言内容11','2023-05-13 10:53:39','回复信息11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,1,'留言内容12','2023-05-13 10:53:39','回复信息12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,1,'留言内容13','2023-05-13 10:53:39','回复信息13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,3,'留言内容14','2023-05-13 10:53:39','回复信息14','2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,5,4,'固定死萨达高大上','2023-05-13 11:28:48','广大发给','2023-05-13 11:34:26','2023-05-13 11:28:48');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_address` varchar(200) DEFAULT NULL COMMENT '出产地点',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_yuzhi` int(11) DEFAULT NULL COMMENT '阈值',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_address`,`zan_number`,`cai_number`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_yuzhi`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_cangku`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`insert_time`,`create_time`) values (1,'商品名称1','1683946419417','upload/shangpin1.jpg','出产地点1',250,400,2,101,10,'976.50','348.59','所属仓库1',43,'商品介绍1',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,'商品名称2','1683946419368','upload/shangpin2.jpg','出产地点2',380,139,2,102,10,'757.72','167.88','所属仓库2',114,'商品介绍2',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,'商品名称3','1683946419348','upload/shangpin3.jpg','出产地点3',29,345,2,97,10,'815.02','150.82','所属仓库3',443,'商品介绍3',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,'商品名称4','1683946419409','upload/shangpin4.jpg','出产地点4',16,224,2,104,10,'802.62','432.78','所属仓库4',287,'商品介绍4',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,'商品名称5','1683946419391','upload/shangpin5.jpg','出产地点5',216,228,2,105,10,'920.08','17.62','所属仓库5',377,'商品介绍5',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,'商品名称6','1683946419424','upload/shangpin6.jpg','出产地点6',235,376,1,106,10,'797.94','113.93','所属仓库6',450,'商品介绍6',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,'商品名称7','1683946419430','upload/shangpin7.jpg','出产地点7',61,311,1,107,10,'877.13','93.62','所属仓库7',125,'商品介绍7',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,'商品名称8','1683946419423','upload/shangpin8.jpg','出产地点8',76,36,4,108,10,'598.39','60.38','所属仓库8',341,'商品介绍8',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,'商品名称9','1683946419405','upload/shangpin9.jpg','出产地点9',217,195,4,109,10,'889.92','194.67','所属仓库9',123,'商品介绍9',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,'商品名称10','1683946419379','upload/shangpin10.jpg','出产地点10',419,357,1,1010,10,'615.67','122.68','所属仓库10',77,'商品介绍10',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,'商品名称11','1683946419357','upload/shangpin11.jpg','出产地点11',131,500,2,1011,10,'807.00','152.83','所属仓库11',70,'商品介绍11',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,'商品名称12','1683946419378','upload/shangpin12.jpg','出产地点12',489,78,4,10,10,'794.11','143.39','所属仓库12',430,'商品介绍12',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,'商品名称13','1683946419362','upload/shangpin13.jpg','出产地点13',73,283,3,1009,10,'931.25','410.91','所属仓库13',401,'商品介绍13',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,'商品名称14','1683946419415','upload/shangpin14.jpg','出产地点14',473,348,4,1014,10,'669.83','35.53','所属仓库14',6,'商品介绍14',1,'2023-05-13 10:53:39','2023-05-13 10:53:39');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,13,4,1,'2023-05-13 11:29:44','2023-05-13 11:29:44');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-05-13 10:53:39','回复信息1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,3,'评价内容2','2023-05-13 10:53:39','回复信息2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,3,'评价内容3','2023-05-13 10:53:39','回复信息3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,2,'评价内容4','2023-05-13 10:53:39','回复信息4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,2,'评价内容5','2023-05-13 10:53:39','回复信息5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,1,'评价内容6','2023-05-13 10:53:39','回复信息6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,1,'评价内容7','2023-05-13 10:53:39','回复信息7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,1,'评价内容8','2023-05-13 10:53:39','回复信息8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,2,'评价内容9','2023-05-13 10:53:39','回复信息9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,2,'评价内容10','2023-05-13 10:53:39','回复信息10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,2,'评价内容11','2023-05-13 10:53:39','回复信息11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,1,'评价内容12','2023-05-13 10:53:39','回复信息12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,1,'评价内容13','2023-05-13 10:53:39','回复信息13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,3,'评价内容14','2023-05-13 10:53:39','回复信息14','2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,3,4,'个核酸的观点是个','2023-05-13 11:30:40','个第三个十多个','2023-05-13 11:32:24','2023-05-13 11:30:40');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1683947615788',12,3,1,2,'301.64',NULL,NULL,101,1,'2023-05-13 11:13:36','2023-05-13 11:13:36'),(2,'1683947623057',6,13,1,2,'821.82',NULL,NULL,101,1,'2023-05-13 11:13:43','2023-05-13 11:13:43'),(3,'1683948588654',15,13,4,1,'410.91','圆通','54641',103,1,'2023-05-13 11:29:49','2023-05-13 11:29:49'),(4,'1683948601454',15,13,4,1,'410.91','顺丰','14541341',103,1,'2023-05-13 11:30:01','2023-05-13 11:30:01'),(5,'1683948601454',15,3,4,4,'603.28','顺丰','215416543541',105,1,'2023-05-13 11:30:01','2023-05-13 11:30:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','8pg10n9z6okizk30b5hp6zf6mwgjbwvh','2023-05-13 10:55:25','2023-05-13 11:55:26'),(2,1,'admin','users','管理员','71k2irkmmd7axxcnob8wph1ba2t0ow0v','2023-05-13 10:59:35','2023-05-13 12:37:07'),(3,1,'a1','yuangong','员工','7stot4w9ckw970m182am5ov8c86vzu58','2023-05-13 11:20:48','2023-05-13 12:30:54'),(4,4,'a5','yonghu','用户','pi4zg2yj09u2kes80br2iaua4kp7y5wi','2023-05-13 11:28:14','2023-05-13 12:28:15');

/*Table structure for table `tudi` */

DROP TABLE IF EXISTS `tudi`;

CREATE TABLE `tudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tudi_name` varchar(200) DEFAULT NULL COMMENT '土地名称  Search111 ',
  `tudi_uuid_number` varchar(200) DEFAULT NULL COMMENT '土地编号',
  `tudi_photo` varchar(200) DEFAULT NULL COMMENT '土地照片',
  `tudi_address` varchar(200) DEFAULT NULL COMMENT '土地位置',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `tudi_types` int(11) DEFAULT NULL COMMENT '土地类型 Search111',
  `tudi_mianji` int(11) DEFAULT NULL COMMENT '土地面积(平方)',
  `tudi_clicknum` int(11) DEFAULT NULL COMMENT '土地热度',
  `tudi_time` timestamp NULL DEFAULT NULL COMMENT '规划时间',
  `tudi_content` longtext COMMENT '土地备注 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='土地规划';

/*Data for the table `tudi` */

insert  into `tudi`(`id`,`tudi_name`,`tudi_uuid_number`,`tudi_photo`,`tudi_address`,`zan_number`,`cai_number`,`tudi_types`,`tudi_mianji`,`tudi_clicknum`,`tudi_time`,`tudi_content`,`shangxia_types`,`insert_time`,`create_time`) values (1,'土地名称1','1683946419436','upload/tudi1.jpg','土地位置1',436,29,4,43,54,'2023-05-13 10:53:39','土地备注1',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,'土地名称2','1683946419410','upload/tudi2.jpg','土地位置2',358,382,4,207,277,'2023-05-13 10:53:39','土地备注2',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,'土地名称3','1683946419379','upload/tudi3.jpg','土地位置3',459,152,3,203,52,'2023-05-13 10:53:39','土地备注3',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,'土地名称4','1683946419412','upload/tudi4.jpg','土地位置4',464,409,4,412,1,'2023-05-13 10:53:39','土地备注4',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,'土地名称5','1683946419394','upload/tudi5.jpg','土地位置5',486,381,4,364,463,'2023-05-13 10:53:39','土地备注5',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,'土地名称6','1683946419401','upload/tudi6.jpg','土地位置6',112,245,1,25,166,'2023-05-13 10:53:39','土地备注6',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,'土地名称7','1683946419377','upload/tudi7.jpg','土地位置7',16,468,1,372,256,'2023-05-13 10:53:39','土地备注7',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,'土地名称8','1683946419429','upload/tudi8.jpg','土地位置8',129,186,4,191,345,'2023-05-13 10:53:39','土地备注8',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,'土地名称9','1683946419445','upload/tudi9.jpg','土地位置9',51,35,2,457,235,'2023-05-13 10:53:39','土地备注9',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,'土地名称10','1683946419381','upload/tudi10.jpg','土地位置10',180,443,3,402,460,'2023-05-13 10:53:39','土地备注10',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,'土地名称11','1683946419397','upload/tudi11.jpg','土地位置11',441,342,3,124,194,'2023-05-13 10:53:39','土地备注11',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,'土地名称12','1683946419403','upload/tudi12.jpg','土地位置12',105,460,4,116,236,'2023-05-13 10:53:39','土地备注12',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,'土地名称13','1683946419438','upload/tudi13.jpg','土地位置13',367,248,1,100,73,'2023-05-13 10:53:39','土地备注13',1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,'土地名称14','1683946419370','upload/tudi14.jpg','土地位置14',219,286,1,391,314,'2023-05-13 10:53:39','土地备注14',1,'2023-05-13 10:53:39','2023-05-13 10:53:39');

/*Table structure for table `tudi_collection` */

DROP TABLE IF EXISTS `tudi_collection`;

CREATE TABLE `tudi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_id` int(11) DEFAULT NULL COMMENT '土地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tudi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='土地规划收藏';

/*Data for the table `tudi_collection` */

insert  into `tudi_collection`(`id`,`tudi_id`,`yonghu_id`,`tudi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,1,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,3,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,2,1,'2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,10,4,1,'2023-05-13 11:28:53','2023-05-13 11:28:53'),(16,10,4,2,'2023-05-13 11:28:55','2023-05-13 11:28:55');

/*Table structure for table `tudi_liuyan` */

DROP TABLE IF EXISTS `tudi_liuyan`;

CREATE TABLE `tudi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_id` int(11) DEFAULT NULL COMMENT '土地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tudi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='土地留言';

/*Data for the table `tudi_liuyan` */

insert  into `tudi_liuyan`(`id`,`tudi_id`,`yonghu_id`,`tudi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-05-13 10:53:39','回复信息1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,2,2,'留言内容2','2023-05-13 10:53:39','回复信息2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,3,1,'留言内容3','2023-05-13 10:53:39','回复信息3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,4,2,'留言内容4','2023-05-13 10:53:39','回复信息4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,5,1,'留言内容5','2023-05-13 10:53:39','回复信息5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,6,3,'留言内容6','2023-05-13 10:53:39','回复信息6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,7,1,'留言内容7','2023-05-13 10:53:39','回复信息7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,8,2,'留言内容8','2023-05-13 10:53:39','回复信息8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,9,3,'留言内容9','2023-05-13 10:53:39','回复信息9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,10,2,'留言内容10','2023-05-13 10:53:39','回复信息10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,11,2,'留言内容11','2023-05-13 10:53:39','回复信息11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,12,1,'留言内容12','2023-05-13 10:53:39','回复信息12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,13,3,'留言内容13','2023-05-13 10:53:39','回复信息13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,14,3,'留言内容14','2023-05-13 10:53:39','回复信息14挂号','2023-05-13 11:20:42','2023-05-13 10:53:39'),(15,10,4,'更汗的是分公司的风格','2023-05-13 11:28:59','和第三个十多个','2023-05-13 11:33:10','2023-05-13 11:28:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-13 10:52:08');

/*Table structure for table `xuanmiaoyuzhong` */

DROP TABLE IF EXISTS `xuanmiaoyuzhong`;

CREATE TABLE `xuanmiaoyuzhong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuanmiaoyuzhong_uuid_number` varchar(200) DEFAULT NULL COMMENT '选苗育种编号',
  `xuanmiaoyuzhong_name` varchar(200) DEFAULT NULL COMMENT '选苗育种标题  Search111 ',
  `xuanmiaoyuzhong_photo` varchar(200) DEFAULT NULL COMMENT '选苗育种照片',
  `xuanmiaoyuzhong_address` varchar(200) DEFAULT NULL COMMENT '选苗育种地点',
  `xuanmiaoyuzhong_types` int(11) DEFAULT NULL COMMENT '选苗育种类型 Search111',
  `xuanmiaoyuzhong_tiaoxuan_number` int(11) DEFAULT NULL COMMENT '挑选数量',
  `xuanmiaoyuzhong_tiaoxuanhou_number` int(11) DEFAULT NULL COMMENT '挑选出数量',
  `xuanmiaoyuzhong_time` timestamp NULL DEFAULT NULL COMMENT '挑选时间',
  `xuanmiaoyuzhong_content` longtext COMMENT '选苗育种备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='选苗育种';

/*Data for the table `xuanmiaoyuzhong` */

insert  into `xuanmiaoyuzhong`(`id`,`xuanmiaoyuzhong_uuid_number`,`xuanmiaoyuzhong_name`,`xuanmiaoyuzhong_photo`,`xuanmiaoyuzhong_address`,`xuanmiaoyuzhong_types`,`xuanmiaoyuzhong_tiaoxuan_number`,`xuanmiaoyuzhong_tiaoxuanhou_number`,`xuanmiaoyuzhong_time`,`xuanmiaoyuzhong_content`,`insert_time`,`create_time`) values (1,'1683946419416','选苗育种标题1','upload/xuanmiaoyuzhong1.jpg','选苗育种地点1',3,347,267,'2023-05-13 10:53:39','选苗育种备注1','2023-05-13 10:53:39','2023-05-13 10:53:39'),(2,'1683946419439','选苗育种标题2','upload/xuanmiaoyuzhong2.jpg','选苗育种地点2',3,206,75,'2023-05-13 10:53:39','选苗育种备注2','2023-05-13 10:53:39','2023-05-13 10:53:39'),(3,'1683946419454','选苗育种标题3','upload/xuanmiaoyuzhong3.jpg','选苗育种地点3',1,259,19,'2023-05-13 10:53:39','选苗育种备注3','2023-05-13 10:53:39','2023-05-13 10:53:39'),(4,'1683946419374','选苗育种标题4','upload/xuanmiaoyuzhong4.jpg','选苗育种地点4',4,17,403,'2023-05-13 10:53:39','选苗育种备注4','2023-05-13 10:53:39','2023-05-13 10:53:39'),(5,'1683946419362','选苗育种标题5','upload/xuanmiaoyuzhong5.jpg','选苗育种地点5',2,393,174,'2023-05-13 10:53:39','选苗育种备注5','2023-05-13 10:53:39','2023-05-13 10:53:39'),(6,'1683946419428','选苗育种标题6','upload/xuanmiaoyuzhong6.jpg','选苗育种地点6',2,209,172,'2023-05-13 10:53:39','选苗育种备注6','2023-05-13 10:53:39','2023-05-13 10:53:39'),(7,'1683946419375','选苗育种标题7','upload/xuanmiaoyuzhong7.jpg','选苗育种地点7',3,148,411,'2023-05-13 10:53:39','选苗育种备注7','2023-05-13 10:53:39','2023-05-13 10:53:39'),(8,'1683946419377','选苗育种标题8','upload/xuanmiaoyuzhong8.jpg','选苗育种地点8',4,362,261,'2023-05-13 10:53:39','选苗育种备注8','2023-05-13 10:53:39','2023-05-13 10:53:39'),(9,'1683946419397','选苗育种标题9','upload/xuanmiaoyuzhong9.jpg','选苗育种地点9',3,92,383,'2023-05-13 10:53:39','选苗育种备注9','2023-05-13 10:53:39','2023-05-13 10:53:39'),(10,'1683946419367','选苗育种标题10','upload/xuanmiaoyuzhong10.jpg','选苗育种地点10',1,381,297,'2023-05-13 10:53:39','选苗育种备注10','2023-05-13 10:53:39','2023-05-13 10:53:39'),(11,'1683946419394','选苗育种标题11','upload/xuanmiaoyuzhong11.jpg','选苗育种地点11',2,410,165,'2023-05-13 10:53:39','选苗育种备注11','2023-05-13 10:53:39','2023-05-13 10:53:39'),(12,'1683946419396','选苗育种标题12','upload/xuanmiaoyuzhong12.jpg','选苗育种地点12',3,35,107,'2023-05-13 10:53:39','选苗育种备注12','2023-05-13 10:53:39','2023-05-13 10:53:39'),(13,'1683946419381','选苗育种标题13','upload/xuanmiaoyuzhong13.jpg','选苗育种地点13',3,357,274,'2023-05-13 10:53:39','选苗育种备注13','2023-05-13 10:53:39','2023-05-13 10:53:39'),(14,'1683946419394','选苗育种标题14','upload/xuanmiaoyuzhong14.jpg','选苗育种地点14',2,319,329,'2023-05-13 10:53:39','选苗育种备注14','2023-05-13 10:53:39','2023-05-13 10:53:39'),(15,'1683948814752','标题111','/upload/1683948819876.jpg','地点111',3,999,888,'2023-05-13 11:33:50','<p>个大叔大婶根深蒂固</p>','2023-05-13 11:33:51','2023-05-13 11:33:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','1683946419360','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','99117.11',1,'2023-05-13 10:53:39'),(2,'a2','123456','1683946419441','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','182.61',1,'2023-05-13 10:53:39'),(3,'a3','123456','1683946419376','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','977.07',1,'2023-05-13 10:53:39'),(4,'a5','123456','1683948489762','张5','17788889999','444222333366669999','upload/1683948550397.jpg',2,'5@qq.com','98573.90',2,'2023-05-13 11:28:10');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1683946419435','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,'1@qq.com',1,'2023-05-13 10:53:39'),(2,'a2','123456','1683946419375','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',1,'2@qq.com',1,'2023-05-13 10:53:39'),(3,'a3','123456','1683946419455','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',1,'3@qq.com',2,'2023-05-13 10:53:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
