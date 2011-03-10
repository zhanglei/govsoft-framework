/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2009-8-27 11:58:38                           */
/*==============================================================*/


ALTER TABLE GOVSOFT.AREA
   DROP CONSTRAINT FK_AREA_CITY;

ALTER TABLE GOVSOFT.CITY
   DROP CONSTRAINT FK_CITY_PROVINCE;

DROP TABLE GOVSOFT.AREA CASCADE CONSTRAINTS;

DROP TABLE GOVSOFT.CITY CASCADE CONSTRAINTS;

DROP TABLE GOVSOFT.DEGREE CASCADE CONSTRAINTS;

DROP TABLE GOVSOFT.PROVINCE CASCADE CONSTRAINTS;

DROP TABLE GOVSOFT.RACE CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
CREATE TABLE GOVSOFT.AREA 
(
   ID                   CHAR(32)             NOT NULL,
   NAME                 VARCHAR2(50)         NOT NULL,
   ROME                 VARCHAR2(50),
   SZ_CODE              CHAR(6)              NOT NULL,
   ZM_CODE              VARCHAR2(20),
   STATE                NUMBER(1)            NOT NULL,
   CITY_ID              CHAR(32)             NOT NULL,
   VERSION              DATE,
   CONSTRAINT PK_AREA PRIMARY KEY (ID)
);

COMMENT ON TABLE GOVSOFT.AREA IS
'区级表';

COMMENT ON COLUMN GOVSOFT.AREA.ID IS
'ID';

COMMENT ON COLUMN GOVSOFT.AREA.NAME IS
'名称';

COMMENT ON COLUMN GOVSOFT.AREA.ROME IS
'英文名称';

COMMENT ON COLUMN GOVSOFT.AREA.SZ_CODE IS
'数字代码';

COMMENT ON COLUMN GOVSOFT.AREA.ZM_CODE IS
'字母代码';

COMMENT ON COLUMN GOVSOFT.AREA.STATE IS
'状态';

COMMENT ON COLUMN GOVSOFT.AREA.CITY_ID IS
'市级ID';

COMMENT ON COLUMN GOVSOFT.AREA.VERSION IS
'VERSION';

/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
CREATE TABLE GOVSOFT.CITY 
(
   ID                   CHAR(32)             NOT NULL,
   NAME                 VARCHAR2(50)         NOT NULL,
   ROME                 VARCHAR2(50),
   SZ_CODE              CHAR(6)              NOT NULL,
   ZM_CODE              VARCHAR2(20),
   STATE                NUMBER(1)            NOT NULL,
   PROVINCE_ID          CHAR(32)             NOT NULL,
   VERSION              DATE,
   CONSTRAINT PK_CITY PRIMARY KEY (ID)
);

COMMENT ON TABLE GOVSOFT.CITY IS
'市级表';

COMMENT ON COLUMN GOVSOFT.CITY.ID IS
'ID';

COMMENT ON COLUMN GOVSOFT.CITY.NAME IS
'名称';

COMMENT ON COLUMN GOVSOFT.CITY.ROME IS
'英文名称';

COMMENT ON COLUMN GOVSOFT.CITY.SZ_CODE IS
'数字代码';

COMMENT ON COLUMN GOVSOFT.CITY.ZM_CODE IS
'字母代码';

COMMENT ON COLUMN GOVSOFT.CITY.STATE IS
'状态';

COMMENT ON COLUMN GOVSOFT.CITY.PROVINCE_ID IS
'省级ID';

COMMENT ON COLUMN GOVSOFT.CITY.VERSION IS
'VERSION';

/*==============================================================*/
/* Table: DEGREE                                                */
/*==============================================================*/
CREATE TABLE GOVSOFT.DEGREE 
(
   ID                   CHAR(32)             NOT NULL,
   NAME                 VARCHAR2(50)         NOT NULL,
   ROME                 VARCHAR2(50),
   SZ_CODE              CHAR(2)              NOT NULL,
   ZM_CODE              VARCHAR2(20),
   STATE                NUMBER(1)            NOT NULL,
   VERSION              DATE,
   CONSTRAINT PK_DEGREE PRIMARY KEY (ID)
);

COMMENT ON TABLE GOVSOFT.DEGREE IS
'学历表';

COMMENT ON COLUMN GOVSOFT.DEGREE.ID IS
'ID';

COMMENT ON COLUMN GOVSOFT.DEGREE.NAME IS
'名称';

COMMENT ON COLUMN GOVSOFT.DEGREE.ROME IS
'英文名称';

COMMENT ON COLUMN GOVSOFT.DEGREE.SZ_CODE IS
'数字代码';

COMMENT ON COLUMN GOVSOFT.DEGREE.ZM_CODE IS
'字母代码';

COMMENT ON COLUMN GOVSOFT.DEGREE.STATE IS
'状态';

COMMENT ON COLUMN GOVSOFT.DEGREE.VERSION IS
'VERSION';

/*==============================================================*/
/* Table: PROVINCE                                              */
/*==============================================================*/
CREATE TABLE GOVSOFT.PROVINCE 
(
   ID                   CHAR(32)             NOT NULL,
   NAME                 VARCHAR2(50)         NOT NULL,
   ROME                 VARCHAR2(50),
   SZ_CODE              CHAR(6)              NOT NULL,
   ZM_CODE              VARCHAR2(20),
   STATE                NUMBER(1)            NOT NULL,
   VERSION              DATE,
   CONSTRAINT PK_PROVINCE PRIMARY KEY (ID)
);

COMMENT ON TABLE GOVSOFT.PROVINCE IS
'省级表';

COMMENT ON COLUMN GOVSOFT.PROVINCE.ID IS
'ID';

COMMENT ON COLUMN GOVSOFT.PROVINCE.NAME IS
'名称';

COMMENT ON COLUMN GOVSOFT.PROVINCE.ROME IS
'英文名称';

COMMENT ON COLUMN GOVSOFT.PROVINCE.SZ_CODE IS
'数字代码';

COMMENT ON COLUMN GOVSOFT.PROVINCE.ZM_CODE IS
'字母代码';

COMMENT ON COLUMN GOVSOFT.PROVINCE.STATE IS
'状态';

COMMENT ON COLUMN GOVSOFT.PROVINCE.VERSION IS
'VERSION';

/*==============================================================*/
/* Table: RACE                                                  */
/*==============================================================*/
CREATE TABLE GOVSOFT.RACE 
(
   ID                   CHAR(32)             NOT NULL,
   NAME                 VARCHAR2(50)         NOT NULL,
   ROME                 VARCHAR2(50),
   SZ_CODE              CHAR(2)              NOT NULL,
   ZM_CODE              VARCHAR2(20),
   STATE                NUMBER(1)            NOT NULL,
   VERSION              DATE,
   CONSTRAINT PK_RACE PRIMARY KEY (ID)
);

COMMENT ON TABLE GOVSOFT.RACE IS
'民族表';

COMMENT ON COLUMN GOVSOFT.RACE.ID IS
'ID';

COMMENT ON COLUMN GOVSOFT.RACE.NAME IS
'名称';

COMMENT ON COLUMN GOVSOFT.RACE.ROME IS
'英文名称';

COMMENT ON COLUMN GOVSOFT.RACE.SZ_CODE IS
'数字代码';

COMMENT ON COLUMN GOVSOFT.RACE.ZM_CODE IS
'字母代码';

COMMENT ON COLUMN GOVSOFT.RACE.STATE IS
'状态';

COMMENT ON COLUMN GOVSOFT.RACE.VERSION IS
'VERSION';

ALTER TABLE GOVSOFT.AREA
   ADD CONSTRAINT FK_AREA_CITY FOREIGN KEY (CITY_ID)
      REFERENCES GOVSOFT.CITY (ID);

ALTER TABLE GOVSOFT.CITY
   ADD CONSTRAINT FK_CITY_PROVINCE FOREIGN KEY (PROVINCE_ID)
      REFERENCES GOVSOFT.PROVINCE (ID);

