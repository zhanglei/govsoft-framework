
/*==============================================================*/
/* Table: city                                                  */
/* city_init.sql                                                */
/*==============================================================*/

/*==============================================================*/
/* 北京市                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','110100','SXQ',1,(select p.id from province p where p.sz_code='110000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'县','','110200','X',1,(select p.id from province p where p.sz_code='110000'),SYSDATE);

/*==============================================================*/
/* 天津市                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','120100','SXQ',1,(select p.id from province p where p.sz_code='120000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'县','','120200','X',1,(select p.id from province p where p.sz_code='120000'),SYSDATE);

/*==============================================================*/
/* 河北省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'石家庄市','','130100','SJZS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'唐山市','','130200','TSS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'秦皇岛市','','130300','QHDS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'邯郸市','','130400','HDS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'邢台市','','130500','XTS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'保定市','','130600','BDS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'张家口市','','130700','ZJKS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'承德市','','130800','CDS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'沧州市','','130900','CZS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'廊坊市','','131000','LFS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'衡水市','','131100','HSS',1,(select p.id from province p where p.sz_code='130000'),SYSDATE);

/*==============================================================*/
/* 山西省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'太原市','','140100','TYS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'大同市','','140200','DTS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阳泉市','','140300','YQS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'长治市','','140400','CZS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'晋城市','','140500','JCS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'朔州市','','140600','SZS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'晋中市','','140700','JZS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'运城市','','140800','YCS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'忻州市','','140900','XZS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'临汾市','','141000','LFS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'吕梁市','','141100','LLS',1,(select p.id from province p where p.sz_code='140000'),SYSDATE);

/*==============================================================*/
/* 内蒙古自治区                                                 */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'呼和浩特市','','150100','HHHTS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'包头市','','150200','BTS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'乌海市','','150300','WHS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'赤峰市','','150400','CFS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'通辽市','','150500','TLS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂尔多斯市','','150600','EEDSS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'呼伦贝尔市','','150700','HLBES',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'巴彦淖尔市','','150800','BYNES',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'乌兰察布市','','150900','WLCBS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'兴安盟','','152200','XAS',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'锡林郭勒盟','','152500','XLGLM',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阿拉善盟','','152900','ALSM',1,(select p.id from province p where p.sz_code='150000'),SYSDATE);

/*==============================================================*/
/* 辽宁省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'沈阳市','','210100','SYS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'大连市','','210200','DLS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鞍山市','','210300','ASS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'抚顺市','','210400','FSS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'本溪市','','210500','BXS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'丹东市','','210600','DDS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'锦州市','','210700','JZS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'营口市','','210800','YKS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阜新市','','210900','FXS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'辽阳市','','211000','LYS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'盘锦市','','211100','PJS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'铁岭市','','211200','TLS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'朝阳市','','211300','CYS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'葫芦岛市','','211400','HLDS',1,(select p.id from province p where p.sz_code='210000'),SYSDATE);

/*==============================================================*/
/* 吉林省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'长春市','','220100','CCS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'吉林市','','220200','JLS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'四平市','','220300','SPS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'辽源市','','220400','LYS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'通化市','','220500','THS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'白山市','','220600','BSS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'松原市','','220700','SYS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'白城市','','220800','BCS',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'延边朝鲜族自治州','','222400','SYBCXZZZZ',1,(select p.id from province p where p.sz_code='220000'),SYSDATE);

/*==============================================================*/
/* 黑龙江省                                                     */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'哈尔滨市','','230100','HEBS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'齐齐哈尔市','','230200','QQHES',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鸡西市','','230300','JSS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤岗市','','230400','HGS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'双鸭山市','','230500','SJSS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'大庆市','','230600','DQS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'伊春市','','230700','YCS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'佳木斯市','','230800','JMSS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'七台河市','','230900','QTHS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'牡丹江市','','231000','MDJS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黑河市','','231100','HHS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'绥化市','','231200','SHS',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'大兴安岭地区','','232700','DXALDQ',1,(select p.id from province p where p.sz_code='230000'),SYSDATE);

/*==============================================================*/
/* 上海市                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','310100','SXQ',1,(select p.id from province p where p.sz_code='310000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'县','','310200','X',1,(select p.id from province p where p.sz_code='310000'),SYSDATE);

/*==============================================================*/
/* 江苏省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南京市','','320100','NJS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'无锡市','','320200','WXS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'徐州市','','320300','XZS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'常州市','','320400','CZS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'苏州市','','320500','SZS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南通市','','320600','NTS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'连云港市','','320700','LYGS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'淮安市','','320800','HAS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'盐城市','','320900','YCS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'扬州市','','321000','YZS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'镇江市','','321100','ZJS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'泰州市','','321200','TZS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宿迁市','','321300','SQS',1,(select p.id from province p where p.sz_code='320000'),SYSDATE);

/*==============================================================*/
/* 浙江省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'杭州市','','330100','HZS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宁波市','','330200','NBS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'温州市','','330300','WZS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉兴市','','330400','JXS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'湖州市','','330500','HZS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'绍兴市','','330600','SXS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'金华市','','330700','JHS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'衢州市','','330800','HZS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'舟山市','','330900','ZSS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'台州市','','331000','TZS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'丽水市','','331100','LSS',1,(select p.id from province p where p.sz_code='330000'),SYSDATE);

/*==============================================================*/
/* 安徽省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'合肥市','','340100','HFS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'芜湖市','','340200','WHS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'蚌埠市','','340300','BBS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'淮南市','','340400','HNS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'马鞍山市','','340500','MASS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'淮北市','','340600','HBS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'铜陵市','','340700','TLS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'安庆市','','340800','AQS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黄山市','','341000','HSS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'滁州市','','341100','CZS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阜阳市','','341200','FYS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宿州市','','341300','SZS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'巢湖市','','341400','CHS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'六安市','','341500','LAS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'亳州市','','341600','HZS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'池州市','','341700','CZS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宣城市','','341800','YCS',1,(select p.id from province p where p.sz_code='340000'),SYSDATE);

/*==============================================================*/
/* 福建省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'福州市','','350100','FZS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'厦门市','','350200','XMS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'莆田市','','350300','PTS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'三明市','','350400','SMS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'泉州市','','350500','QZS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'漳州市','','350600','ZZS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南平市','','350700','NPS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'龙岩市','','350800','LYS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宁德市','','350900','NDS',1,(select p.id from province p where p.sz_code='350000'),SYSDATE);

/*==============================================================*/
/* 江西省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南昌市','','360100','NCS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'景德镇市','','360200','JDZS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'萍乡市','','360300','PXS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'九江市','','360400','JJS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'新余市','','360500','XYS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鹰潭市','','360600','YTS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'赣州市','','360700','GZS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'吉安市','','360800','JAS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宜春市','','360900','YCS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'抚州市','','361000','FZS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'上饶市','','361100','SRS',1,(select p.id from province p where p.sz_code='360000'),SYSDATE);

/*==============================================================*/
/* 山东省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'济南市','','370100','JNS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'青岛市','','370200','QDS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'淄博市','','370300','ZBS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'枣庄市','','370400','ZZS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'东营市','','370500','DYS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'烟台市','','370600','YTS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'潍坊市','','370700','WFS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'济宁市','','370800','JNS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'泰安市','','370900','TAS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'威海市','','371000','WHS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'日照市','','371100','RZS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'莱芜市','','371200','LWS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'临沂市','','371300','LYS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'德州市','','371400','DZS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'聊城市','','371500','LCS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'滨州市','','371600','BZS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'荷泽市','','371700','HZS',1,(select p.id from province p where p.sz_code='370000'),SYSDATE);

/*==============================================================*/
/* 河南省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'郑州市','','410100','ZZS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'开封市','','410200','KFS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'洛阳市','','410300','LYS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'平顶山市','','410400','PDSS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'安阳市','','410500','AYS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤壁市','','410600','HBS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'新乡市','','410700','XXS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'焦作市','','410800','JZS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'濮阳市','','410900','PYS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'许昌市','','411000','XCS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'漯河市','','411100','LHS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'三门峡市','','411200','SMXS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南阳市','','411300','NYS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'商丘市','','411400','SQS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'信阳市','','411500','XYS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'周口市','','411600','ZKS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'驻马店市','','411700','ZMDS',1,(select p.id from province p where p.sz_code='410000'),SYSDATE);

/*==============================================================*/
/* 湖北省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'武汉市','','420100','WHS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黄石市','','420200','HSS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'十堰市','','420300','SYS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宜昌市','','420500','YCS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'襄樊市','','420600','XFS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂州市','','420700','EZS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'荆门市','','420800','JMS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'孝感市','','420900','XGS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'荆州市','','421000','JZS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黄冈市','','421100','HGS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'咸宁市','','421200','XNS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'随州市','','421300','SZS',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'恩施土家族苗族自治州','','422800','ESTJZMZZZZ',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'省直辖行政单位','','429000','SZXXZDW',1,(select p.id from province p where p.sz_code='420000'),SYSDATE);

/*==============================================================*/
/* 湖南省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'长沙市','','430100','CSS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'株洲市','','430200','ZZS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'湘潭市','','430300','XTS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'衡阳市','','430400','HYS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'邵阳市','','430500','SYS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'岳阳市','','430600','YYS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'常德市','','430700','CDS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'张家界市','','430800','ZJJS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'益阳市','','430900','YYS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'郴州市','','431000','CZS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'永州市','','431100','YZS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'怀化市','','431200','HHS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'娄底市','','431300','LDS',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'湘西土家族苗族自治州','','433100','XXTJZMZZZZ',1,(select p.id from province p where p.sz_code='430000'),SYSDATE);

/*==============================================================*/
/* 广东省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'广州市','','440100','GZS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'韶关市','','440200','SGS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'深圳市','','440300','SZS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'珠海市','','440400','ZHS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'汕头市','','440500','STS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'佛山市','','440600','FSS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'江门市','','440700','JMS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'湛江市','','440800','ZJS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'茂名市','','440900','MMS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'肇庆市','','441200','ZQS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'惠州市','','441300','HZS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'梅州市','','441400','MZS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'汕尾市','','441500','SWS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'河源市','','441600','HYS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阳江市','','441700','YJS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'清远市','','441800','QYS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'东莞市','','441900','DGS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'中山市','','442000','ZSS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'潮州市','','445100','CZS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'揭阳市','','445200','JYS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'云浮市','','445300','YFS',1,(select p.id from province p where p.sz_code='440000'),SYSDATE);

/*==============================================================*/
/* 广西壮族自治区                                               */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南宁市','','450100','NNS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'柳州市','','450200','LZS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'桂林市','','450300','GLS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'梧州市','','450400','WZS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'北海市','','450500','BHS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'防城港市','','450600','FCGS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'钦州市','','450700','QZS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'贵港市','','450800','GGS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'玉林市','','450900','YLS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'百色市','','451000','BSS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'贺州市','','451100','HZS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'河池市','','451200','HCS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'来宾市','','451300','LBS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'崇左市','','451400','CZS',1,(select p.id from province p where p.sz_code='450000'),SYSDATE);

/*==============================================================*/
/* 海南省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'海口市','','460100','HKS',1,(select p.id from province p where p.sz_code='460000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'三亚市','','460200','SYS',1,(select p.id from province p where p.sz_code='460000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'省直辖县级行政单位','','469000','SZXXJXZDW',1,(select p.id from province p where p.sz_code='460000'),SYSDATE);

/*==============================================================*/
/* 重庆市                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','500100','SXQ',1,(select p.id from province p where p.sz_code='500000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'县','','500200','X',1,(select p.id from province p where p.sz_code='500000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'市','','500300','S',1,(select p.id from province p where p.sz_code='500000'),SYSDATE);

/*==============================================================*/
/* 四川省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'成都市','','510100','CDS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'自贡市','','510300','ZGS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'攀枝花市','','510400','PZHS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'泸州市','','510500','LZS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'德阳市','','510600','DYS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'绵阳市','','510700','MYS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'广元市','','510800','GYS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'遂宁市','','510900','SNS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'内江市','','511000','NJS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'乐山市','','511100','LSS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'南充市','','511300','NCS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'眉山市','','511400','MSS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宜宾市','','511500','YBS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'广安市','','511600','GAS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'达州市','','511700','DZS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'雅安市','','511800','YAS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'巴中市','','511900','BZS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'资阳市','','512000','ZYS',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阿坝藏族羌族自治州','','513200','ABZZQZZZZ',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'甘孜藏族自治州','','513300','GZZZZZZ',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'凉山彝族自治州','','513400','LSYZZZZ',1,(select p.id from province p where p.sz_code='510000'),SYSDATE);

/*==============================================================*/
/* 贵州省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'贵阳市','','520100','GYS',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'六盘水市','','520200','LPSS',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'遵义市','','520300','ZYS',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'安顺市','','520400','ASS',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'铜仁地区','','522200','TRDQ',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黔西南布依族苗族自治州','','522300','QXNBYZMZZZZ',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'毕节地区','','522400','BJDQ',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黔东南苗族侗族自治州','','522600','QDNMZDZZZZ',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黔南布依族苗族自治州','','522700','QNBYZMZZZZ',1,(select p.id from province p where p.sz_code='520000'),SYSDATE);

/*==============================================================*/
/* 云南省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'昆明市','','530100','KMS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'曲靖市','','530300','QJS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'玉溪市','','530400','YXS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'保山市','','530500','BSS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'昭通市','','530600','ZTS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'丽江市','','530700','LJS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'思茅市','','530800','EMS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'临沧市','','530900','LCS',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'楚雄彝族自治州','','532300','CXYZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'红河哈尼族彝族自治州','','532500','HHHNZYZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'文山壮族苗族自治州','','532600','WSZZMZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'西双版纳傣族自治州','','532800','XSBNDZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'大理白族自治州','','532900','DLBZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'德宏傣族景颇族自治州','','533100','DHDZJPZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'怒江傈僳族自治州','','533300','NJLSZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'迪庆藏族自治州','','533400','DQZZZZZ',1,(select p.id from province p where p.sz_code='530000'),SYSDATE);

/*==============================================================*/
/* 西藏自治区                                                   */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'拉萨市','','540100','LSS',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'昌都地区','','542100','CDDQ',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'山南地区','','542200','SNDQ',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'日喀则地区','','542300','RKZDQ',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'那曲地区','','542400','NQDQ',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阿里地区','','542500','ALDQ',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'林芝地区','','542600','LZDQ',1,(select p.id from province p where p.sz_code='540000'),SYSDATE);

/*==============================================================*/
/* 陕西省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'西安市','','610100','XAS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'铜川市','','610200','TCS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'宝鸡市','','610300','BJS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'咸阳市','','610400','XYS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'渭南市','','610500','WNS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'延安市','','610600','YAS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'汉中市','','610700','HZS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'榆林市','','610800','YLS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'安康市','','610900','AKS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'商洛市','','611000','SLS',1,(select p.id from province p where p.sz_code='610000'),SYSDATE);

/*==============================================================*/
/* 甘肃省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'兰州市','','620100','LZS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉峪关市','','620200','JYGS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'金昌市','','620300','JCS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'白银市','','620400','BYS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'天水市','','620500','TSS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'武威市','','620600','WWS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'张掖市','','620700','ZYS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'平凉市','','620800','PLS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'酒泉市','','620900','JQS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'庆阳市','','621000','QYS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'定西市','','621100','DXS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'陇南市','','621200','LNS',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'临夏回族自治州','','622900','LXHZZZZ',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'甘南藏族自治州','','623000','GNZZZZZ',1,(select p.id from province p where p.sz_code='620000'),SYSDATE);

/*==============================================================*/
/* 青海省                                                       */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'西宁市','','630100','XNS',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'海东地区','','632100','HDDQ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'海北藏族自治州','','632200','HBZZZZZ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'黄南藏族自治州','','632300','HNZZZZZ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'海南藏族自治州','','632500','HNZZZZZ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'果洛藏族自治州','','632600','GLZZZZZ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'玉树藏族自治州','','632700','YSZZZZZ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'海西蒙古族藏族自治州','','632800','HXMGZZZZZZ',1,(select p.id from province p where p.sz_code='630000'),SYSDATE);

/*==============================================================*/
/* 宁夏回族自治区                                               */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'银川市','','640100','YCS',1,(select p.id from province p where p.sz_code='640000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'石嘴山市','','640200','SZSS',1,(select p.id from province p where p.sz_code='640000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'吴忠市','','640300','WZS',1,(select p.id from province p where p.sz_code='640000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'固原市','','640400','GYS',1,(select p.id from province p where p.sz_code='640000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'中卫市','','640500','ZWS',1,(select p.id from province p where p.sz_code='640000'),SYSDATE);

/*==============================================================*/
/* 新疆维吾尔自治区                                             */
/*==============================================================*/
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'乌鲁木齐市','','650100','WLMQS',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'克拉玛依市','','650200','KLMYS',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'吐鲁番地区','','652100','TLFDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'哈密地区','','652200','HMDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'昌吉回族自治州','','652300','CJHZZZZ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'博尔塔拉蒙古自治州','','652700','BETLMGZZZ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'巴音郭楞蒙古自治州','','652800','BYGLMGZZZ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阿克苏地区','','652900','AKSDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'克孜勒苏柯尔克孜自治州','','653000','KZLSKEKZZZZ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'喀什地区','','653100','KSDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'和田地区','','653200','HTDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'伊犁哈萨克自治州','','654000','YLHSKZZZ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'塔城地区','','654200','TCDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'阿勒泰地区','','654300','ALTDQ',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);
INSERT INTO CITY(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,PROVINCE_ID,VERSION) VALUES((select SYS_guid()from dual),'省直辖行政单位','','659000','SZXXZDW',1,(select p.id from province p where p.sz_code='650000'),SYSDATE);

