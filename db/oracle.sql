/*==============================================================*/
/* Database name:  oracle11                                     */
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2009-9-24 14:29:51                           */
/*==============================================================*/


alter table GOV_MENU
   drop constraint FK_MENU;

alter table GOV_ORG
   drop constraint FK_ORG;

alter table GOV_ROLE_MENU
   drop constraint FK_MENU_ROLE;

alter table GOV_ROLE_MENU
   drop constraint FK_ROLE_MENU;

alter table GOV_USER
   drop constraint FK_USER_ORG;

alter table GOV_USER_ROLE
   drop constraint FK_ROLE_USER;

alter table GOV_USER_ROLE
   drop constraint FK_USER_ROLE;

drop table GOV_MENU cascade constraints;

drop table GOV_ORG cascade constraints;

drop table GOV_ROLE cascade constraints;

drop table GOV_ROLE_MENU cascade constraints;

drop table GOV_USER cascade constraints;

drop table GOV_USER_ROLE cascade constraints;

/*==============================================================*/
/* Table: GOV_MENU                                              */
/*==============================================================*/
create table GOV_MENU 
(
   ID                   CHAR(32)             not null,
   NAME                 VARCHAR2(50)         not null,
   URL                  VARCHAR2(200)        not null,
   SEQUENCE             NUMBER(2)            not null,
   PARENT_ID            CHAR(32),
   VERSION              DATE                 not null,
   constraint PK_MENU primary key (ID)
);

comment on table GOV_MENU is
'菜单表';

comment on column GOV_MENU.ID is
'ID';

comment on column GOV_MENU.NAME is
'菜单名称';

comment on column GOV_MENU.URL is
'菜单路径';

comment on column GOV_MENU.SEQUENCE is
'排序';

comment on column GOV_MENU.PARENT_ID is
'所属父菜单';

comment on column GOV_MENU.VERSION is
'VERSION';

/*==============================================================*/
/* Table: GOV_ORG                                               */
/*==============================================================*/
create table GOV_ORG 
(
   ID                   CHAR(32)             not null,
   NAME                 VARCHAR2(50)         not null,
   DESCRIPTION          VARCHAR2(200),
   PARENT_ID            CHAR(32),
   VERSION              DATE                 not null,
   constraint PK_ORG primary key (ID)
);

comment on table GOV_ORG is
'组织机构表';

comment on column GOV_ORG.ID is
'ID';

comment on column GOV_ORG.NAME is
'组织机构名称';

comment on column GOV_ORG.DESCRIPTION is
'描述';

comment on column GOV_ORG.PARENT_ID is
'所属父机构';

comment on column GOV_ORG.VERSION is
'VERSION';

/*==============================================================*/
/* Table: GOV_ROLE                                              */
/*==============================================================*/
create table GOV_ROLE 
(
   ID                   CHAR(32)             not null,
   NAME                 VARCHAR2(50)         not null,
   CODE                 VARCHAR2(50)         not null,
   DESCRIPTION          VARCHAR2(200),
   STATUS               NUMBER(1)            not null,
   VERSION              DATE                 not null,
   constraint PK_ROLE primary key (ID)
);

comment on table GOV_ROLE is
'角色表';

comment on column GOV_ROLE.ID is
'ID';

comment on column GOV_ROLE.NAME is
'角色名称';

comment on column GOV_ROLE.CODE is
'角色代码';

comment on column GOV_ROLE.DESCRIPTION is
'角色描述';

comment on column GOV_ROLE.STATUS is
'状态';

comment on column GOV_ROLE.VERSION is
'VERSION';

/*==============================================================*/
/* Table: GOV_ROLE_MENU                                         */
/*==============================================================*/
create table GOV_ROLE_MENU 
(
   ROLE_ID              CHAR(32)             not null,
   MENU_ID              CHAR(32)             not null,
   constraint PK_ROLE_MENU primary key (ROLE_ID, MENU_ID)
);

comment on table GOV_ROLE_MENU is
'角色_菜单表';

comment on column GOV_ROLE_MENU.ROLE_ID is
'角色ID';

comment on column GOV_ROLE_MENU.MENU_ID is
'菜单ID';

/*==============================================================*/
/* Table: GOV_USER                                              */
/*==============================================================*/
create table GOV_USER 
(
   ID                   CHAR(32)             not null,
   NAME                 VARCHAR2(50)         not null,
   ACCOUNT              VARCHAR2(50)         not null,
   PASSWORD             CHAR(32)             not null,
   WORK_CODE            VARCHAR2(50),
   SEX                  NUMBER(1)            not null,
   BIRTH_DATE           DATE,
   TELEPHONE            VARCHAR2(20),
   EMAIL                VARCHAR2(100),
   MOBILE               VARCHAR2(20),
   ADDRESS              VARCHAR2(200),
   PIC                  VARCHAR2(50),
   CREATE_TIME          DATE                 not null,
   LAST_LOGIN_TIME      DATE,
   STATUS               NUMBER(1)            not null,
   ORG_ID               CHAR(32)             not null,
   VERSION              DATE                 not null,
   constraint PK_USER primary key (ID),
   constraint UNIQUE_USER_ACCOUNT unique (ACCOUNT)
);

comment on table GOV_USER is
'用户表';

comment on column GOV_USER.ID is
'ID';

comment on column GOV_USER.NAME is
'用户姓名';

comment on column GOV_USER.ACCOUNT is
'登陆账号';

comment on column GOV_USER.PASSWORD is
'密码';

comment on column GOV_USER.WORK_CODE is
'工号';

comment on column GOV_USER.SEX is
'性别';

comment on column GOV_USER.BIRTH_DATE is
'出生日期';

comment on column GOV_USER.TELEPHONE is
'电话号码';

comment on column GOV_USER.EMAIL is
'电子邮箱';

comment on column GOV_USER.MOBILE is
'手机号码';

comment on column GOV_USER.ADDRESS is
'联系地址';

comment on column GOV_USER.PIC is
'照片';

comment on column GOV_USER.CREATE_TIME is
'创建时间';

comment on column GOV_USER.LAST_LOGIN_TIME is
'最后登录时间';

comment on column GOV_USER.STATUS is
'状态';

comment on column GOV_USER.ORG_ID is
'组织机构ID';

comment on column GOV_USER.VERSION is
'VERSION';

/*==============================================================*/
/* Table: GOV_USER_ROLE                                         */
/*==============================================================*/
create table GOV_USER_ROLE 
(
   USER_ID              CHAR(32)             not null,
   ROLE_ID              CHAR(32)             not null,
   constraint PK_USER_ROLE primary key (USER_ID, ROLE_ID)
);

comment on table GOV_USER_ROLE is
'用户_角色表';

comment on column GOV_USER_ROLE.USER_ID is
'用户ID';

comment on column GOV_USER_ROLE.ROLE_ID is
'角色ID';

alter table GOV_MENU
   add constraint FK_MENU foreign key (PARENT_ID)
      references GOV_MENU (ID);

alter table GOV_ORG
   add constraint FK_ORG foreign key (PARENT_ID)
      references GOV_ORG (ID);

alter table GOV_ROLE_MENU
   add constraint FK_MENU_ROLE foreign key (MENU_ID)
      references GOV_MENU (ID);

alter table GOV_ROLE_MENU
   add constraint FK_ROLE_MENU foreign key (ROLE_ID)
      references GOV_ROLE (ID);

alter table GOV_USER
   add constraint FK_USER_ORG foreign key (ORG_ID)
      references GOV_ORG (ID);

alter table GOV_USER_ROLE
   add constraint FK_ROLE_USER foreign key (ROLE_ID)
      references GOV_ROLE (ID);

alter table GOV_USER_ROLE
   add constraint FK_USER_ROLE foreign key (USER_ID)
      references GOV_USER (ID);

