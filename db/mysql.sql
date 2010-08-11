/*
SQLyog Trial - MySQL GUI v8.2 
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

/*Table structure for table `gov_menu` */

DROP TABLE IF EXISTS `gov_menu`;

CREATE TABLE `gov_menu` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '菜单名称',
  `URL` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `SEQUENCE` tinyint(4) DEFAULT NULL COMMENT '排列顺序',
  `PARENT_ID` char(32) DEFAULT NULL COMMENT '所属父菜单',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `IS_DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `FK_MENU` FOREIGN KEY (`PARENT_ID`) REFERENCES `gov_menu` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_org` */

DROP TABLE IF EXISTS `gov_org`;

CREATE TABLE `gov_org` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '组织机构名称',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `PARENT_ID` char(32) DEFAULT NULL COMMENT '所属父机构',
  `IS_DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `FK_ORG` FOREIGN KEY (`PARENT_ID`) REFERENCES `gov_org` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_role` */

DROP TABLE IF EXISTS `gov_role`;

CREATE TABLE `gov_role` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '角色名称',
  `CODE` varchar(20) DEFAULT NULL COMMENT '角色代码',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `IS_DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_role_menu` */

DROP TABLE IF EXISTS `gov_role_menu`;

CREATE TABLE `gov_role_menu` (
  `ROLE_ID` char(32) NOT NULL COMMENT '角色id',
  `MENU_ID` char(32) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`ROLE_ID`,`MENU_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `MENU_ID` (`MENU_ID`),
  CONSTRAINT `FK_MENU_ROLE` FOREIGN KEY (`MENU_ID`) REFERENCES `gov_menu` (`ID`),
  CONSTRAINT `FK_ROLE_MENU` FOREIGN KEY (`ROLE_ID`) REFERENCES `gov_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_user` */

DROP TABLE IF EXISTS `gov_user`;

CREATE TABLE `gov_user` (
  `ID` char(32) NOT NULL,
  `LOGIN_NAME` varchar(50) NOT NULL COMMENT '登陆账号',
  `REAL_NAME` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `PASSWORD` char(32) DEFAULT NULL COMMENT '密码',
  `WORK_CODE` varchar(20) DEFAULT NULL COMMENT '工号',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `FAX` varchar(50) DEFAULT NULL COMMENT '传真',
  `TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机',
  `ZIP` varchar(20) DEFAULT NULL COMMENT '邮编',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `GENDER` tinyint(1) NOT NULL COMMENT '性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '出生年月',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最后登录时间',
  `LAST_LOGIN_IP` varchar(50) DEFAULT NULL COMMENT '最后登录IP',
  `CURRENT_LOGIN_TIME` datetime DEFAULT NULL COMMENT '当前登录时间',
  `CURRENT_LOGIN_IP` varchar(50) DEFAULT NULL COMMENT '当前登录IP',
  `LOGIN_COUNT` bigint(20) DEFAULT '0' COMMENT '总共登录次数',
  `IS_DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `ORG_ID` char(32) NOT NULL COMMENT '组织机构id',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`),
  KEY `ORG_ID` (`ORG_ID`),
  CONSTRAINT `FK_USER_ORG` FOREIGN KEY (`ORG_ID`) REFERENCES `gov_org` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `gov_user_role` */

DROP TABLE IF EXISTS `gov_user_role`;

CREATE TABLE `gov_user_role` (
  `USER_ID` char(32) NOT NULL COMMENT '用户id',
  `ROLE_ID` char(32) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `FK_ROLE_USER` FOREIGN KEY (`ROLE_ID`) REFERENCES `gov_role` (`ID`),
  CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`USER_ID`) REFERENCES `gov_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ip_address` */

DROP TABLE IF EXISTS `ip_address`;

CREATE TABLE `ip_address` (
  `ID` char(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mobile_address` */

DROP TABLE IF EXISTS `mobile_address`;

CREATE TABLE `mobile_address` (
  `ID` char(32) NOT NULL,
  `PRE_MOBILE` char(7) NOT NULL COMMENT '前7位手机号',
  `PROVINCE_ID` char(32) DEFAULT NULL COMMENT '省id',
  `PROVINCE_NAME` varchar(50) DEFAULT NULL COMMENT '省名称',
  `CITY_ID` char(32) DEFAULT NULL COMMENT '市id',
  `CITY_NAME` varchar(50) DEFAULT NULL COMMENT '市名称',
  `CARD_TYPE` varchar(20) DEFAULT NULL COMMENT '手机卡类型',
  `VERSION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PRE_MOBILE` (`PRE_MOBILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '地区名称',
  `ROME` varchar(50) DEFAULT NULL COMMENT '英文名称',
  `SZ_CODE` char(6) DEFAULT NULL COMMENT '数字代码',
  `ZM_CODE` varchar(20) DEFAULT NULL COMMENT '字母代码',
  `PARENT_ID` char(32) DEFAULT NULL COMMENT '所属父id',
  `PROVINCE_ID` char(32) DEFAULT NULL COMMENT '省id',
  `PROVINCE_NAME` varchar(50) DEFAULT NULL COMMENT '省名称',
  `CITY_ID` char(32) DEFAULT NULL COMMENT '市id',
  `CITY_NAME` varchar(50) DEFAULT NULL COMMENT '市名称',
  `COUNTY_ID` char(32) DEFAULT NULL COMMENT '县id',
  `COUNT_NAME` varchar(50) DEFAULT NULL COMMENT '县名称',
  `CLUSTER_ID` char(32) DEFAULT NULL COMMENT '乡/镇/片区id',
  `CLUSTER_NAME` varchar(50) DEFAULT NULL COMMENT '乡/镇/片区名称',
  `AREA_ID` char(32) DEFAULT NULL COMMENT '村/小区id',
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
