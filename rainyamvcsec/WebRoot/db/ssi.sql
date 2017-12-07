/*
MySQL Data Transfer
Source Host: localhost
Source Database: ssi
Target Host: localhost
Target Database: ssi
Date: 2017/10/30 21:06:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
CREATE TABLE `persistent_logins` (
  `USERNAME` varchar(64) default NULL,
  `SERIES` varchar(64) NOT NULL,
  `TOKEN` varchar(64) default NULL,
  `LAST_USED` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SERIES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY  (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY  (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) default NULL,
  PRIMARY KEY  (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) default NULL,
  `JOB_GROUP` varchar(200) default NULL,
  `IS_NONCONCURRENT` varchar(1) default NULL,
  `REQUESTS_RECOVERY` varchar(1) default NULL,
  PRIMARY KEY  (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) default NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY  (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY  (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY  (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY  (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY  (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) default NULL,
  `STR_PROP_2` varchar(512) default NULL,
  `STR_PROP_3` varchar(512) default NULL,
  `INT_PROP_1` int(11) default NULL,
  `INT_PROP_2` int(11) default NULL,
  `LONG_PROP_1` bigint(20) default NULL,
  `LONG_PROP_2` bigint(20) default NULL,
  `DEC_PROP_1` decimal(13,4) default NULL,
  `DEC_PROP_2` decimal(13,4) default NULL,
  `BOOL_PROP_1` varchar(1) default NULL,
  `BOOL_PROP_2` varchar(1) default NULL,
  PRIMARY KEY  (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) default NULL,
  `NEXT_FIRE_TIME` bigint(13) default NULL,
  `PREV_FIRE_TIME` bigint(13) default NULL,
  `PRIORITY` int(11) default NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) default NULL,
  `CALENDAR_NAME` varchar(200) default NULL,
  `MISFIRE_INSTR` smallint(2) default NULL,
  `JOB_DATA` blob,
  PRIMARY KEY  (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ry_banner
-- ----------------------------
CREATE TABLE `ry_banner` (
  `ID` varchar(32) NOT NULL COMMENT '物理id',
  `NAME_CN` varchar(64) default NULL COMMENT '中文名',
  `NAME_EN` varchar(64) default NULL COMMENT '英文名',
  `DESCRIPTION` varchar(500) default NULL COMMENT '描述',
  `URL` varchar(100) default NULL COMMENT '链接',
  `STATUS` char(1) default NULL COMMENT '状态0不启用、1启用',
  `PARENT_ID` varchar(32) default NULL COMMENT '父条目id',
  `ICON_URL` varchar(100) default NULL COMMENT '图标地址',
  `SHOW_ORDER` varchar(4) default NULL COMMENT '显示顺序',
  `CREATE_DATE` date default NULL COMMENT '创建时间',
  `MODIFY_DATE` date default NULL COMMENT '修改时间',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ry_program
-- ----------------------------
CREATE TABLE `ry_program` (
  `ID` varchar(32) NOT NULL COMMENT '物理id',
  `NAME_CN` varchar(64) default NULL COMMENT '中文名',
  `NAME_EN` varchar(64) default NULL COMMENT '英文名',
  `DESC` varchar(500) default NULL COMMENT '描述',
  `URL` varchar(100) default NULL COMMENT '链接',
  `STATUS` char(255) default NULL COMMENT '状态0不启用、1启用',
  `PARENT_ID` varchar(32) default NULL COMMENT '父条目id',
  `ICON_URL` varchar(100) default NULL COMMENT '图标地址',
  `TITLE` varchar(100) default NULL COMMENT '标题',
  `SUB_TITLE` varchar(100) default NULL COMMENT '副标题',
  `IMG_PREVIEW_URL` varchar(100) default NULL COMMENT '预览图片url',
  `CONTENT` blob COMMENT '正文',
  `SHOW_ORDER` varchar(10) default NULL COMMENT '显示顺序',
  `CREATE_DATE` date default NULL COMMENT '创建时间',
  `MODIFY_DATE` date default NULL COMMENT '修改时间',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_authorities
-- ----------------------------
CREATE TABLE `sec_authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  PRIMARY KEY  (`username`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_group_authorities
-- ----------------------------
CREATE TABLE `sec_group_authorities` (
  `group_id` int(11) NOT NULL,
  `authority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_group_members
-- ----------------------------
CREATE TABLE `sec_group_members` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_groups
-- ----------------------------
CREATE TABLE `sec_groups` (
  `id` int(11) NOT NULL auto_increment,
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_authorities
-- ----------------------------
CREATE TABLE `sec_sys_authorities` (
  `AUTHORITY_ID` varchar(100) NOT NULL,
  `AUTHORITY_MARK` varchar(100) default NULL,
  `AUTHORITY_NAME` varchar(100) NOT NULL,
  `AUTHORITY_DESC` varchar(200) default NULL,
  `MESSAGE` varchar(100) default NULL,
  `ENABLE` int(1) default NULL,
  `ISSEC_SYS` int(1) default NULL,
  `MODULE_ID` varchar(100) default NULL,
  PRIMARY KEY  (`AUTHORITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_authorities_resources
-- ----------------------------
CREATE TABLE `sec_sys_authorities_resources` (
  `ID` varchar(100) NOT NULL,
  `RESOURCE_ID` varchar(100) NOT NULL,
  `AUTHORITY_ID` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_SEC_SYS_AUTH_REFERENCE_SEC_SYS_AUTH` (`AUTHORITY_ID`),
  KEY `FK_SEC_SYS_AUTH_REFERENCE_SEC_SYS_RESO` (`RESOURCE_ID`),
  CONSTRAINT `FK_SEC_SYS_AUTH_REFERENCE_SEC_SYS_RESO` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `sec_sys_resources` (`RESOURCE_ID`),
  CONSTRAINT `FK_SEC_SYS_AUTH_REFERENCE_SEC_SYS_AUTH` FOREIGN KEY (`AUTHORITY_ID`) REFERENCES `sec_sys_authorities` (`AUTHORITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_modules
-- ----------------------------
CREATE TABLE `sec_sys_modules` (
  `MODULE_ID` varchar(100) NOT NULL COMMENT '块模ID',
  `MODULE_NAME` varchar(100) NOT NULL COMMENT '块模名称',
  `MODULE_DESC` varchar(200) default NULL COMMENT '块模说明信息',
  `MODULE_TYPE` varchar(100) default NULL COMMENT '块模类型',
  `PARENT` varchar(100) default NULL COMMENT '块模父级',
  `MODULE_URL` varchar(100) default NULL COMMENT '模块地址',
  `I_LEVEL` int(1) default NULL COMMENT '菜单级别',
  `LEAF` int(1) default NULL COMMENT '最下级',
  `APPLICATION` varchar(100) default NULL COMMENT '用应名称',
  `CONTROLLER` varchar(100) default NULL COMMENT '制器控名称',
  `ENABLE` int(1) default NULL COMMENT '否是可用',
  `PRIORITY` int(1) default NULL COMMENT '先级优',
  PRIMARY KEY  (`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_resources
-- ----------------------------
CREATE TABLE `sec_sys_resources` (
  `RESOURCE_ID` varchar(100) NOT NULL,
  `RESOURCE_TYPE` varchar(100) default NULL,
  `RESOURCE_NAME` varchar(100) default NULL,
  `RESOURCE_DESC` varchar(200) default NULL,
  `RESOURCE_PATH` varchar(200) default NULL,
  `PRIORITY` varchar(100) default NULL,
  `ENABLE` int(1) default NULL,
  `ISSEC_SYS` int(1) default NULL,
  `MODULE_ID` varchar(100) default NULL,
  PRIMARY KEY  (`RESOURCE_ID`),
  KEY `FK_SEC_SYS_RESO_REFERENCE_SEC_SYS_MODU` (`MODULE_ID`),
  CONSTRAINT `FK_SEC_SYS_RESO_REFERENCE_SEC_SYS_MODU` FOREIGN KEY (`MODULE_ID`) REFERENCES `sec_sys_modules` (`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_roles
-- ----------------------------
CREATE TABLE `sec_sys_roles` (
  `ROLE_ID` varchar(100) NOT NULL COMMENT '色角ID',
  `ROLE_NAME` varchar(100) default NULL COMMENT '色角名称',
  `ROLE_DESC` varchar(200) default NULL COMMENT '色角说明',
  `ENABLE` int(1) default NULL COMMENT '否是可用',
  `ISSEC_SYS` int(1) default NULL COMMENT '否是系统权限',
  `MODULE_ID` varchar(100) default NULL COMMENT '模块',
  PRIMARY KEY  (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_roles_authorities
-- ----------------------------
CREATE TABLE `sec_sys_roles_authorities` (
  `ID` varchar(100) NOT NULL,
  `AUTHORITY_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_SEC_SYS_ROLE_REFERENCE_SEC_SYS_ROLE` (`ROLE_ID`),
  KEY `FK_SEC_SYS_ROLE_REFERENCE_SEC_SYS_AUTH` (`AUTHORITY_ID`),
  CONSTRAINT `FK_SEC_SYS_ROLE_REFERENCE_SEC_SYS_AUTH` FOREIGN KEY (`AUTHORITY_ID`) REFERENCES `sec_sys_authorities` (`AUTHORITY_ID`),
  CONSTRAINT `FK_SEC_SYS_ROLE_REFERENCE_SEC_SYS_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `sec_sys_roles` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_roles_moudles
-- ----------------------------
CREATE TABLE `sec_sys_roles_moudles` (
  `ID` varchar(100) NOT NULL COMMENT '物理ID',
  `MODULE_ID` varchar(100) NOT NULL COMMENT '块模ID',
  `ROLE_ID` varchar(100) NOT NULL COMMENT '色角ID',
  PRIMARY KEY  (`ID`),
  KEY `FK_SEC_SYS_ROLE_REFERENCE_SEC_SYS_MODU` (`MODULE_ID`),
  KEY `FK_S_ROLE_REFERENCE_SEC_SYS_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_SEC_SYS_ROLE_REFERENCE_SEC_SYS_MODU` FOREIGN KEY (`MODULE_ID`) REFERENCES `sec_sys_modules` (`MODULE_ID`),
  CONSTRAINT `FK_S_ROLE_REFERENCE_SEC_SYS_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `sec_sys_roles` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_users
-- ----------------------------
CREATE TABLE `sec_sys_users` (
  `USER_ID` varchar(100) NOT NULL COMMENT '户用ID',
  `USERNAME` varchar(100) NOT NULL COMMENT '用户名',
  `NAME` varchar(100) default NULL COMMENT '户用姓名',
  `PASSWORD` varchar(100) NOT NULL COMMENT '密码',
  `DT_CREATE` date default NULL COMMENT '建创日期',
  `LAST_LOGIN` date default NULL COMMENT '后最登录日期',
  `DEADLINE` date default NULL COMMENT '止截日期',
  `LOGIN_IP` varchar(100) default NULL COMMENT '后最登录ip地址',
  `V_QZJGID` varchar(100) default NULL COMMENT '属所机构ID',
  `V_QZJGMC` varchar(100) default NULL COMMENT '属所机构名称',
  `DEP_ID` varchar(100) default NULL COMMENT '区地编号',
  `DEP_NAME` varchar(100) default NULL COMMENT '区地名称',
  `ENABLED` int(1) default NULL COMMENT '否是可用',
  `ACCOUNT_NON_EXPIRED` int(1) default NULL COMMENT '户用是否过期',
  `ACCOUNT_NON_LOCKED` int(1) default NULL COMMENT '户用是否被锁定',
  `CREDENTIALS_NON_EXPIRED` int(1) default NULL COMMENT '户用证书是否有效',
  PRIMARY KEY  (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_sys_users_roles
-- ----------------------------
CREATE TABLE `sec_sys_users_roles` (
  `ID` varchar(100) NOT NULL COMMENT 'ID',
  `ROLE_ID` varchar(100) NOT NULL COMMENT '角色ID',
  `USER_ID` varchar(100) NOT NULL COMMENT '用户ID',
  PRIMARY KEY  (`ID`),
  KEY `FK_SEC_SYS_USER_REFERENCE_SEC_SYS_USER` (`USER_ID`),
  KEY `FK_SEC_SYS_USER_REFERENCE_SEC_SYS_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_SEC_SYS_USER_REFERENCE_SEC_SYS_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `sec_sys_roles` (`ROLE_ID`),
  CONSTRAINT `FK_SEC_SYS_USER_REFERENCE_SEC_SYS_USER` FOREIGN KEY (`USER_ID`) REFERENCES `sec_sys_users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec_users
-- ----------------------------
CREATE TABLE `sec_users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('taskScheduler', 'taskTrigger', 'DEFAULT', '0 08 23 ? * MON-FRI', 'Asia/Shanghai');
INSERT INTO `qrtz_job_details` VALUES ('taskScheduler', 'taskJob', 'DEFAULT', '??????', 'com.rainya.quartz.CommJobBean', '1', '0', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000274000C7461726765744F626A656374740007636F6D6D4A6F6274000C7461726765744D6574686F64740004736A63717800);
INSERT INTO `qrtz_locks` VALUES ('taskScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('taskScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_scheduler_state` VALUES ('taskScheduler', 'SC-2017091714231508052023050', '1508052028440', '20000');
INSERT INTO `qrtz_triggers` VALUES ('taskScheduler', 'taskTrigger', 'DEFAULT', 'taskJob', 'DEFAULT', null, '1508166480000', '-1', '0', 'WAITING', 'CRON', '1508052022000', '0', null, '0', '');
INSERT INTO `ry_banner` VALUES ('1001', '首页', 'Home', '首页', '/html/index.html', '1', null, '/framework/images/nav-but8.png', '1', '2017-09-17', '2017-09-17');
INSERT INTO `ry_banner` VALUES ('1002', '了解豪乐', 'About us', '关于我们', '/html/joinus.html', '1', null, '/framework/images/nav-but12.png', '2', '2017-09-17', '2017-09-17');
INSERT INTO `ry_banner` VALUES ('1003', '服务', 'Service', '服务', '/html/service.html', '1', null, '/framework/images/nav-but3.png', '3', '2017-09-17', '2017-09-17');
INSERT INTO `ry_banner` VALUES ('1004', '工作招聘', 'Join us', '工作机会', '/html/joinus.html', '1', null, '/framework/images/nav-but7.png', '4', '2017-09-17', '2017-09-17');
INSERT INTO `ry_banner` VALUES ('1005', '联系我们', 'Mail us', '联系我们', '/html/mailus.html', '1', null, '/framework/images/nav-but9.png', '5', '2017-09-17', '2017-09-17');
INSERT INTO `ry_banner` VALUES ('1006', '货物追踪', 'Query', '运单查询', '/html/query.html', '1', null, '/framework/images/nav-but10.png', '6', '2017-09-17', '2017-09-17');
INSERT INTO `sec_authorities` VALUES ('admin', 'ROLL_USER');
INSERT INTO `sec_users` VALUES ('admin', 'admin123', '1');
