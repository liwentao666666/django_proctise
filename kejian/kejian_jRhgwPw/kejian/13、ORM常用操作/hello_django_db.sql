/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : hello_django_db

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-06 14:02:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 出版商', '7', 'add_publisher');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 出版商', '7', 'change_publisher');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 出版商', '7', 'delete_publisher');
INSERT INTO `auth_permission` VALUES ('22', 'Can add author', '8', 'add_author');
INSERT INTO `auth_permission` VALUES ('23', 'Can change author', '8', 'change_author');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete author', '8', 'delete_author');
INSERT INTO `auth_permission` VALUES ('25', 'Can add author detail', '9', 'add_authordetail');
INSERT INTO `auth_permission` VALUES ('26', 'Can change author detail', '9', 'change_authordetail');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete author detail', '9', 'delete_authordetail');
INSERT INTO `auth_permission` VALUES ('28', 'Can add book', '10', 'add_book');
INSERT INTO `auth_permission` VALUES ('29', 'Can change book', '10', 'change_book');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete book', '10', 'delete_book');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$yIjiyAJ8GAPn$yNnJxu1EYbDRcCORJL5F3CUltevAJxFDv6QtqIFCkkc=', '2016-05-06 05:34:36.621265', '1', 'admin', '', '', 'admin@admin.com', '1', '1', '2016-05-06 03:41:07.017778');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2016-05-06 05:45:59.605330', '1', '安徽大学出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2016-05-06 05:46:42.588788', '2', '安徽教育出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2016-05-06 05:47:13.852576', '3', '安徽科学技术出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2016-05-06 05:48:46.386869', '4', '北京出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2016-05-06 05:49:12.422358', '5', '北京师范大学出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2016-05-06 05:49:45.771266', '6', '广东人民出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2016-05-06 05:50:40.614403', '7', '同济大学出版社', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2016-05-06 05:50:54.857217', '1', 'Author object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2016-05-06 05:51:52.571518', '1', 'AuthorDetail object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2016-05-06 05:52:13.131694', '2', 'Author object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2016-05-06 05:53:05.364682', '2', 'AuthorDetail object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2016-05-06 05:54:45.157390', '3', 'Author object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2016-05-06 05:55:14.480067', '3', 'AuthorDetail object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2016-05-06 05:56:03.383864', '1', 'Author object', '2', 'Changed name.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2016-05-06 05:56:31.591477', '1', 'Book object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2016-05-06 05:58:22.498821', '2', 'Book object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2016-05-06 05:59:18.404018', '3', 'Book object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2016-05-06 06:00:01.400478', '4', 'Book object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2016-05-06 06:01:41.240188', '5', 'Book object', '1', 'Added.', '10', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'hello', 'author');
INSERT INTO `django_content_type` VALUES ('9', 'hello', 'authordetail');
INSERT INTO `django_content_type` VALUES ('10', 'hello', 'book');
INSERT INTO `django_content_type` VALUES ('7', 'hello', 'publisher');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2016-04-21 07:29:53.424605');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2016-04-21 07:29:54.117645');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2016-04-21 07:29:54.270654');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2016-04-21 07:29:54.300655');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2016-04-21 07:29:54.492666');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2016-04-21 07:29:54.558670');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2016-04-21 07:29:54.630674');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2016-04-21 07:29:54.648675');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2016-04-21 07:29:56.510782');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2016-04-21 07:29:56.633789');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2016-04-21 07:29:57.559842');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2016-04-21 07:30:08.039441');
INSERT INTO `django_migrations` VALUES ('13', 'hello', '0001_initial', '2016-05-03 08:42:30.318298');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('igltd4rqs4e6lo2szqc2rzpdnryigxhe', 'Y2MzMzBmZGJlYWVmMjgwZjBlZGExOTM5ZmJmYjdjOTBmZDdmYzIzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMTZhYTZkNWVmZjQ5MDg4NThhYmRlMzVlODFjOThiNjUzOGRkNGRiIn0=', '2016-05-20 05:34:37.214299');

-- ----------------------------
-- Table structure for hello_author
-- ----------------------------
DROP TABLE IF EXISTS `hello_author`;
CREATE TABLE `hello_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hello_author
-- ----------------------------
INSERT INTO `hello_author` VALUES ('1', '胡大海');
INSERT INTO `hello_author` VALUES ('2', '王尼玛');
INSERT INTO `hello_author` VALUES ('3', '郭德纲');

-- ----------------------------
-- Table structure for hello_authordetail
-- ----------------------------
DROP TABLE IF EXISTS `hello_authordetail`;
CREATE TABLE `hello_authordetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_id` (`author_id`),
  CONSTRAINT `hello_authordetail_author_id_881ff438_fk_hello_author_id` FOREIGN KEY (`author_id`) REFERENCES `hello_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hello_authordetail
-- ----------------------------
INSERT INTO `hello_authordetail` VALUES ('1', '0', '22@qq.com', '成都华阳', '1988-02-06', '1');
INSERT INTO `hello_authordetail` VALUES ('2', '0', '678@qq.com', '北京XXX公司XX号', '1992-02-06', '2');
INSERT INTO `hello_authordetail` VALUES ('3', '1', 'user1@qq.com', '合肥市跃进路1号', '2000-01-05', '3');

-- ----------------------------
-- Table structure for hello_book
-- ----------------------------
DROP TABLE IF EXISTS `hello_book`;
CREATE TABLE `hello_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `publication_date` date NOT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hello_book_2604cbea` (`publisher_id`),
  CONSTRAINT `hello_book_publisher_id_50534f21_fk_hello_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `hello_publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hello_book
-- ----------------------------
INSERT INTO `hello_book` VALUES ('1', 'Python开发实战', '2015-09-08', '1');
INSERT INTO `hello_book` VALUES ('2', '论撩妹的重要性', '2015-03-18', '4');
INSERT INTO `hello_book` VALUES ('3', 'Java开发实战', '2015-08-12', '6');
INSERT INTO `hello_book` VALUES ('4', 'web开发从入门到放弃', '2014-05-15', '5');
INSERT INTO `hello_book` VALUES ('5', '21天成为撩妹高手', '2016-05-06', '3');

-- ----------------------------
-- Table structure for hello_book_authors
-- ----------------------------
DROP TABLE IF EXISTS `hello_book_authors`;
CREATE TABLE `hello_book_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hello_book_authors_book_id_907ff785_uniq` (`book_id`,`author_id`),
  KEY `hello_book_authors_author_id_046a91ec_fk_hello_author_id` (`author_id`),
  CONSTRAINT `hello_book_authors_author_id_046a91ec_fk_hello_author_id` FOREIGN KEY (`author_id`) REFERENCES `hello_author` (`id`),
  CONSTRAINT `hello_book_authors_book_id_8d41914a_fk_hello_book_id` FOREIGN KEY (`book_id`) REFERENCES `hello_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hello_book_authors
-- ----------------------------
INSERT INTO `hello_book_authors` VALUES ('1', '1', '1');
INSERT INTO `hello_book_authors` VALUES ('2', '2', '3');
INSERT INTO `hello_book_authors` VALUES ('3', '3', '1');
INSERT INTO `hello_book_authors` VALUES ('4', '4', '1');
INSERT INTO `hello_book_authors` VALUES ('5', '4', '2');
INSERT INTO `hello_book_authors` VALUES ('6', '5', '1');
INSERT INTO `hello_book_authors` VALUES ('7', '5', '2');
INSERT INTO `hello_book_authors` VALUES ('8', '5', '3');

-- ----------------------------
-- Table structure for hello_publisher
-- ----------------------------
DROP TABLE IF EXISTS `hello_publisher`;
CREATE TABLE `hello_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state_province` varchar(30) NOT NULL,
  `country` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hello_publisher
-- ----------------------------
INSERT INTO `hello_publisher` VALUES ('1', '安徽大学出版社', '合肥市肥西路3号', '合肥', '安徽', '中国', 'http://www.maiziedu.com');
INSERT INTO `hello_publisher` VALUES ('2', '安徽教育出版社', '安徽省合肥市回龙桥路1号新闻出版大厦', '合肥', '安徽', '中国', 'http://www.baidu.com');
INSERT INTO `hello_publisher` VALUES ('3', '安徽科学技术出版社', '合肥市跃进路1号', '合肥', '安徽', '中国', 'http://www.google.com');
INSERT INTO `hello_publisher` VALUES ('4', '北京出版社', '北京市北三环中路6号', '北京', '北京', '中国', 'http://www.111.com');
INSERT INTO `hello_publisher` VALUES ('5', '北京师范大学出版社', '北京市新街口外大街19号', '北京', '北京', '中国', 'http://www.222.com');
INSERT INTO `hello_publisher` VALUES ('6', '广东人民出版社', '广州大沙头四马路10号', '广州', '广东', '中国', 'http://www.333.com');
INSERT INTO `hello_publisher` VALUES ('7', '同济大学出版社', '上海市四平路1239号', '上海', '上海', '中国', 'http://www.555.com');
