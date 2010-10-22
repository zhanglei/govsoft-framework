/*
SQLyog Trial v8.61 
MySQL - 5.1.30-community : Database - govsoft
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`govsoft` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `govsoft`;

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `LEVEL` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `PARENT_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `upid` (`PARENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45052 DEFAULT CHARSET=utf8;

/*Table structure for table `gov_log` */

DROP TABLE IF EXISTS `gov_log`;

CREATE TABLE `gov_log` (
  `ID` char(36) NOT NULL,
  `USER_ID` char(36) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_menu` */

DROP TABLE IF EXISTS `gov_menu`;

CREATE TABLE `gov_menu` (
  `ID` char(36) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '菜单名称',
  `URL` varchar(255) NOT NULL COMMENT '菜单路径',
  `SEQUENCE` int(11) DEFAULT NULL COMMENT '排列顺序',
  `PARENT_ID` char(36) DEFAULT NULL COMMENT '所属父菜单',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `IS_DISABLED` bit(1) NOT NULL DEFAULT '\0' COMMENT '是否禁用',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `FK_MENU` FOREIGN KEY (`PARENT_ID`) REFERENCES `gov_menu` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_org` */

DROP TABLE IF EXISTS `gov_org`;

CREATE TABLE `gov_org` (
  `ID` char(36) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '组织机构名称',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `PARENT_ID` char(36) DEFAULT NULL COMMENT '所属父机构',
  `IS_DISABLED` bit(1) NOT NULL DEFAULT '\0' COMMENT '是否禁用',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `FK_ORG` FOREIGN KEY (`PARENT_ID`) REFERENCES `gov_org` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_privilege` */

DROP TABLE IF EXISTS `gov_privilege`;

CREATE TABLE `gov_privilege` (
  `ID` char(36) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_resource` */

DROP TABLE IF EXISTS `gov_resource`;

CREATE TABLE `gov_resource` (
  `ID` char(36) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_role` */

DROP TABLE IF EXISTS `gov_role`;

CREATE TABLE `gov_role` (
  `ID` char(36) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '角色名称',
  `CODE` varchar(20) NOT NULL COMMENT '角色代码',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `IS_DISABLED` bit(1) NOT NULL DEFAULT '\0' COMMENT '是否禁用',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_role_menu` */

DROP TABLE IF EXISTS `gov_role_menu`;

CREATE TABLE `gov_role_menu` (
  `ROLE_ID` char(36) NOT NULL COMMENT '角色id',
  `MENU_ID` char(36) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`ROLE_ID`,`MENU_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `MENU_ID` (`MENU_ID`),
  CONSTRAINT `FK_MENU_ROLE` FOREIGN KEY (`MENU_ID`) REFERENCES `gov_menu` (`ID`),
  CONSTRAINT `FK_ROLE_MENU` FOREIGN KEY (`ROLE_ID`) REFERENCES `gov_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_role_resource` */

DROP TABLE IF EXISTS `gov_role_resource`;

CREATE TABLE `gov_role_resource` (
  `ROLE_ID` char(36) NOT NULL,
  `RESOURCE_ID` char(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`RESOURCE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `RESOURCE_ID` (`RESOURCE_ID`),
  CONSTRAINT `FK_RESOURCE_ROLE` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `gov_resource` (`ID`),
  CONSTRAINT `FK_ROLE_RESOURCE` FOREIGN KEY (`ROLE_ID`) REFERENCES `gov_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_user` */

DROP TABLE IF EXISTS `gov_user`;

CREATE TABLE `gov_user` (
  `ID` char(36) NOT NULL,
  `LOGIN_NAME` varchar(50) NOT NULL COMMENT '登陆账号',
  `REAL_NAME` varchar(50) NOT NULL COMMENT '真实姓名',
  `PASSWORD` char(32) NOT NULL COMMENT '密码',
  `WORK_CODE` varchar(20) DEFAULT NULL COMMENT '工号',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `FAX` varchar(50) DEFAULT NULL COMMENT '传真',
  `TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机号',
  `ZIP` varchar(20) DEFAULT NULL COMMENT '邮编',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `GENDER` tinyint(4) NOT NULL COMMENT '性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '出生年月',
  `PIC` varchar(50) DEFAULT NULL COMMENT '头像路径',
  `SALT` int(11) NOT NULL COMMENT '密码随机加密字符串',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最后登录时间',
  `LAST_LOGIN_IP` varchar(50) DEFAULT NULL COMMENT '最后登录IP',
  `CURRENT_LOGIN_TIME` datetime DEFAULT NULL COMMENT '当前登录时间',
  `CURRENT_LOGIN_IP` varchar(50) DEFAULT NULL COMMENT '当前登录IP',
  `LOGIN_COUNT` int(11) DEFAULT '0' COMMENT '总共登录次数',
  `IS_DISABLED` bit(1) NOT NULL DEFAULT '\0' COMMENT '是否禁用',
  `ORG_ID` char(36) NOT NULL COMMENT '组织机构id',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`),
  KEY `ORG_ID` (`ORG_ID`),
  CONSTRAINT `FK_USER_ORG` FOREIGN KEY (`ORG_ID`) REFERENCES `gov_org` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_user_role` */

DROP TABLE IF EXISTS `gov_user_role`;

CREATE TABLE `gov_user_role` (
  `USER_ID` char(36) NOT NULL COMMENT '用户id',
  `ROLE_ID` char(36) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `FK_ROLE_USER` FOREIGN KEY (`ROLE_ID`) REFERENCES `gov_role` (`ID`),
  CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`USER_ID`) REFERENCES `gov_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ip_address` */

DROP TABLE IF EXISTS `ip_address`;

CREATE TABLE `ip_address` (
  `ID` char(36) NOT NULL,
  `IP_START` bigint(20) NOT NULL COMMENT 'IP开始段',
  `IP_END` bigint(20) NOT NULL COMMENT 'IP结束段',
  `COUNTRY` varchar(50) NOT NULL,
  `LOCAL` varchar(20) DEFAULT NULL,
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mobile_address` */

DROP TABLE IF EXISTS `mobile_address`;

CREATE TABLE `mobile_address` (
  `ID` char(36) NOT NULL,
  `PRE_MOBILE` char(7) NOT NULL COMMENT '前7位手机号',
  `PROVINCE_ID` char(36) DEFAULT NULL COMMENT '省id',
  `PROVINCE_NAME` varchar(50) DEFAULT NULL COMMENT '省名称',
  `CITY_ID` char(36) DEFAULT NULL COMMENT '市id',
  `CITY_NAME` varchar(50) DEFAULT NULL COMMENT '市名称',
  `CARD_TYPE` varchar(20) DEFAULT NULL COMMENT '手机卡类型',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PRE_MOBILE` (`PRE_MOBILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `TRIGGER_NAME` (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `TRIGGER_NAME` (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `IS_VOLATILE` varchar(1) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_STATEFUL` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_VOLATILE` varchar(1) NOT NULL,
  `IS_STATEFUL` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_job_listeners` */

DROP TABLE IF EXISTS `qrtz_job_listeners`;

CREATE TABLE `qrtz_job_listeners` (
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `JOB_LISTENER` varchar(200) NOT NULL,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`),
  KEY `JOB_NAME` (`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_job_listeners_ibfk_1` FOREIGN KEY (`JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `TRIGGER_NAME` (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_trigger_listeners` */

DROP TABLE IF EXISTS `qrtz_trigger_listeners`;

CREATE TABLE `qrtz_trigger_listeners` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `TRIGGER_LISTENER` varchar(200) NOT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_LISTENER`),
  KEY `TRIGGER_NAME` (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_trigger_listeners_ibfk_1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `IS_VOLATILE` varchar(1) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `JOB_NAME` (`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `ID` char(36) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '地区名称',
  `ROME` varchar(50) DEFAULT NULL COMMENT '英文名称',
  `SZ_CODE` char(6) DEFAULT NULL COMMENT '数字代码',
  `ZM_CODE` varchar(20) DEFAULT NULL COMMENT '字母代码',
  `PARENT_ID` char(36) DEFAULT NULL COMMENT '所属父id',
  `PROVINCE_ID` char(36) DEFAULT NULL COMMENT '省id',
  `PROVINCE_NAME` varchar(50) DEFAULT NULL COMMENT '省名称',
  `CITY_ID` char(36) DEFAULT NULL COMMENT '市id',
  `CITY_NAME` varchar(50) DEFAULT NULL COMMENT '市名称',
  `COUNTY_ID` char(36) DEFAULT NULL COMMENT '县id',
  `COUNTY_NAME` varchar(50) DEFAULT NULL COMMENT '县名称',
  `CLUSTER_ID` char(36) DEFAULT NULL COMMENT '乡/镇/片区id',
  `CLUSTER_NAME` varchar(50) DEFAULT NULL COMMENT '乡/镇/片区名称',
  `AREA_ID` char(36) DEFAULT NULL COMMENT '村/小区id',
  `AREA_NAME` varchar(50) DEFAULT NULL COMMENT '村/小区名称',
  `LAT` float(10,6) DEFAULT '0.000000' COMMENT '纬度',
  `LNG` float(10,6) DEFAULT '0.000000' COMMENT '经度',
  `NORTH` float(10,6) DEFAULT NULL COMMENT '北纬',
  `SOUTH` float(10,6) DEFAULT NULL COMMENT '南纬',
  `EAST` float(10,6) DEFAULT NULL COMMENT '东经',
  `WEST` float(10,6) DEFAULT NULL COMMENT '西经',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME` (`NAME`),
  KEY `SZ_CODE` (`SZ_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `zip_code` */

DROP TABLE IF EXISTS `zip_code`;

CREATE TABLE `zip_code` (
  `ID` char(36) NOT NULL,
  `ZIP_CODE` char(6) NOT NULL,
  `PROVINCE_ID` char(36) DEFAULT NULL,
  `PROVINCE_NAME` varchar(50) DEFAULT NULL,
  `CITY_ID` char(36) DEFAULT NULL,
  `CITY_NAME` varchar(50) DEFAULT NULL,
  `COUNTY_ID` char(36) DEFAULT NULL,
  `COUNTY_NAME` varchar(50) DEFAULT NULL,
  `LAT` float(10,6) DEFAULT NULL,
  `LNG` float(10,6) DEFAULT NULL,
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* Function  structure for function  `fn_checkidcard` */

/*!50003 DROP FUNCTION IF EXISTS `fn_checkidcard` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `fn_checkidcard`(
        p_idcard VARCHAR(20)
    ) RETURNS tinyint(4)
    READS SQL DATA
BEGIN
DECLARE v_regstr varchar(2000);
declare v_sum int;
declare v_mod int;
DECLARE v_checkcode char(11) default '10X98765432';
DECLARE v_checkbit char(1);
DECLARE v_areacode varchar(2000) default '11,12,13,14,15,21,22,23,31,32,33,34,35,36,37,41,42,43,44,45,46,50,51,52,53,54,61,62,63,64,65,71,81,82,91,';
CASE CHAR_LENGTH(p_idcard)
    WHEN 15    
    THEN                                                            -- 15位    
        IF INSTR(v_areacode,SUBSTR(p_idcard,1,2)||',') = 0    
        THEN   
        RETURN 0;    
        END IF;    
        IF MOD(CONVERT(SUBSTR(p_idcard,6,2),SIGNED)+1900,400) = 0    
           OR (MOD(CONVERT(SUBSTR(p_idcard,6,2),SIGNED) + 1900, 100) <> 0    
           AND MOD(CAST(SUBSTR(p_idcard,6,2) AS SIGNED) + 1900, 4) = 0)    
        THEN                                                          -- 闰年    
            SET v_regstr :=    
               '^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$';    
         ELSE   
            SET v_regstr :=    
               '^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$';    
         END IF;    
   
         IF p_idcard REGEXP v_regstr
         THEN   
            RETURN 1;    
         ELSE   
            RETURN 0;    
         END IF;    
      WHEN 18    
      THEN                                                             -- 18位    
         IF INSTR(v_areacode,SUBSTR(p_idcard,1,2)||',') = 0    
         THEN   
            RETURN 0;    
         END IF;    
         IF MOD(CAST(SUBSTR(p_idcard,6,4) AS SIGNED),400) = 0    
            OR(MOD(CAST(SUBSTR(p_idcard,6,4) AS SIGNED),100) <> 0    
                AND MOD(CAST(SUBSTR(p_idcard,6, 4) AS SIGNED),4) = 0    
               )    
         THEN                                                          -- 闰年    
            SET v_regstr =    
               '^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$';    
         ELSE   
            SET v_regstr =    
               '^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$';    
         END IF;    
         IF p_idcard REGEXP v_regstr
         THEN   
            SET v_sum =    
                   (CAST(SUBSTR(p_idcard,1,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,11,1) AS SIGNED)    
                   )    
                 * 7    
               +   (CAST(SUBSTR(p_idcard,2,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,12,1) AS SIGNED)    
                   )    
                 * 9    
               +   (CAST(SUBSTR(p_idcard,3,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,13,1) AS SIGNED)    
                   )    
                 * 10    
               +   (CAST(SUBSTR(p_idcard,4,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,14,1) AS SIGNED)    
                   )    
                 * 5    
               +   (CAST(SUBSTR(p_idcard,5,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,15,1) AS SIGNED)    
                   )    
                 * 8    
               +   (CAST(SUBSTR(p_idcard,6,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,16,1) AS SIGNED)    
                   )    
                 * 4    
               +   (CAST(SUBSTR(p_idcard,7,1) AS SIGNED)    
                    + CAST(SUBSTR(p_idcard,17,1) AS SIGNED)    
                   )    
                 * 2    
               + CAST(SUBSTR(p_idcard,8,1) AS SIGNED) * 1    
               + CAST(SUBSTR(p_idcard,9,1) as SIGNED) * 6    
               + CAST(SUBSTR(p_idcard,10,1) as SIGNED) * 3;    
            SET v_mod = MOD (v_sum, 11);    
            SET v_checkbit = SUBSTR(v_checkcode, v_mod + 1, 1);    
   
            IF v_checkbit = SUBSTR(p_idcard,18,1)    
            THEN   
               RETURN 1;    
            ELSE   
               RETURN 0;    
            END IF;    
         ELSE   
            RETURN 0;    
         END IF;    
      ELSE   
         RETURN 0;                                      -- 身份证号码位数不对    
END CASE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_optimize_tables` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_optimize_tables` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_optimize_tables`(
 IN db_name varchar(255))
BEGIN
  -- To optimize all the tables in exact database.
  declare cnt int default 0;
  declare i int default 0;
  select count(*) as total from information_schema.tables where table_schema = db_name into cnt;
  while i < cnt 
  do
    -- Get the table's exact name.
    set @stmt = concat('select table_name from information_schema.tables where table_schema = ''',db_name,''' order by table_name asc limit ',i,',1 into @tb_name');
    prepare s1 from @stmt;
    execute s1;
    drop prepare s1;
    set @stmt = '';
    set @stmt = concat('optimize table ',db_name,'.',@tb_name);
    prepare s1 from @stmt;
    execute s1;
    drop prepare s1;
    set @stmt = '';
    set i = i + 1;
  end while;
  -- Refresh tables.
  flush tables;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_row_column_wrap` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_row_column_wrap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_row_column_wrap`(IN $schema_name varchar(64),
IN $table_name varchar(64))
BEGIN
  declare cnt int(11);
  declare $table_rows int(11);
  declare i int(11);
  declare j int(11);
  declare s int(11);
  declare str varchar(255);
  -- Get the column number of the table
  select count(1) from information_schema.columns where table_schema=$schema_name and table_name=$table_name into cnt;
  -- Get the row number of the table
  select table_rows from information_schema.tables where table_schema = $schema_name and table_name=$table_name into $table_rows;
  -- Check whether the table exists or not
  drop table if exists test.temp;
  create table if not exists test.temp (`1` varchar(255) not null);
  -- loop1 start
  set i = 0;
  loop1:loop
    if i = $table_rows-1 then
      leave loop1;
    end if;
    set @stmt1 = concat('alter table test.temp add `',i+2,'` varchar(255) not null');
    prepare s1 from @stmt1;
    execute s1;
    deallocate prepare s1;
    set @stmt1 = '';
    set i = i + 1;
  end loop loop1;
  -- loop1 end;
  set s = 0;
  -- loop2 start
  loop2:loop
  -- leave loop2
    if s=cnt then
      leave loop2;
    end if;
    set @stmt2 = concat('select column_name from information_schema.columns where table_schema="',$schema_name,
                        '" and table_name="',$table_name,'" limit ',s,',1 into @temp;');
    prepare s2 from @stmt2;
    execute s2;
    deallocate prepare s2;
    set @stmt2 = '';
    set j=0;
    set str = ' select ';
    -- Loop3 start
    loop3:loop 
      if j = $table_rows then
        leave loop3;
      end if;
      set @stmt3 = concat('select ',@temp,' from ',$schema_name,'.',$table_name,' limit ',j,',1 into @temp2;');
      prepare s3 from @stmt3;
      execute s3;
      set str = concat(str,'"',@temp2,'"',',');
      deallocate prepare s3;
      set @stmt3 = '';
      set j = j+1;
    end loop loop3;
    set str = left(str,length(str)-1);
    -- insert new data into table
    set @stmt4 = concat('insert into test.temp',str,';');
    prepare s4 from @stmt4;
    execute s4;
    deallocate prepare s4;
    set @stmt4 = '';
    set s=s+1;
  end loop loop2;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
