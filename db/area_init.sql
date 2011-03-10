
/*==============================================================*/
/* Table: area                                                  */
/* area_init.sql                                                */
/*==============================================================*/

/*==============================================================*/
/*市辖区                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东城区','','110101','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西城区','','110102','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇文区','','110103','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣武区','','110104','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'朝阳区','','110105','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰台区','','110106','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石景山区','','110107','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海淀区','','110108','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'门头沟区','','110109','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'房山区','','110111','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通州区','','110112','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺义区','','110113','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌平区','','110114','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大兴区','','110115','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀柔区','','110116','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平谷区','','110117','',1,(select c.id from city c where c.sz_code='110100'),SYSDATE);

/*==============================================================*/
/*县                                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'密云县','','110228','',1,(select c.id from city c where c.sz_code='110200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延庆县','','110229','',1,(select c.id from city c where c.sz_code='110200'),SYSDATE);

/*==============================================================*/
/*市辖区                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和平区','','120101','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河东区','','120102','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河西区','','120103','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南开区','','120104','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河北区','','120105','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红桥区','','120106','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'塘沽区','','120107','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉沽区','','120108','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大港区','','120109','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东丽区','','120110','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西青区','','120111','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'津南区','','120112','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北辰区','','120113','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武清区','','120114','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝坻区','','120115','',1,(select c.id from city c where c.sz_code='120100'),SYSDATE);

/*==============================================================*/
/*县                                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁河县','','120221','',1,(select c.id from city c where c.sz_code='120200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'静海县','','120223','',1,(select c.id from city c where c.sz_code='120200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓟县','','120225','',1,(select c.id from city c where c.sz_code='120200'),SYSDATE);

/*==============================================================*/
/*石家庄市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130101','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长安区','','130102','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桥东区','','130103','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桥西区','','130104','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新华区','','130105','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'井陉矿区','','130107','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'裕华区','','130108','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'井陉县','','130121','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'正定县','','130123','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'栾城县','','130124','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'行唐县','','130125','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵寿县','','130126','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高邑县','','130127','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'深泽县','','130128','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赞皇县','','130129','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'无极县','','130130','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平山县','','130131','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元氏县','','130132','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赵县','','130133','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'辛集市','','130181','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'藁城市','','130182','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'晋州市','','130183','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新乐市','','130184','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹿泉市','','130185','',1,(select c.id from city c where c.sz_code='130100'),SYSDATE);

/*==============================================================*/
/*唐山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130201','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'路南区','','130202','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'路北区','','130203','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古冶区','','130204','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开平区','','130205','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰南区','','130207','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰润区','','130208','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滦县','','130223','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滦南县','','130224','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐亭县','','130225','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'迁西县','','130227','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉田县','','130229','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'唐海县','','130230','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'遵化市','','130281','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'迁安市','','130283','',1,(select c.id from city c where c.sz_code='130200'),SYSDATE);

/*==============================================================*/
/*秦皇岛市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130301','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海港区','','130302','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山海关区','','130303','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北戴河区','','130304','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青龙满族自治县','','130321','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌黎县','','130322','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'抚宁县','','130323','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卢龙县','','130324','',1,(select c.id from city c where c.sz_code='130300'),SYSDATE);

/*==============================================================*/
/*邯郸市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130401','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邯山区','','130402','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丛台区','','130403','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'复兴区','','130404','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'峰峰矿区','','130406','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邯郸县','','130421','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临漳县','','130423','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'成安县','','130424','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大名县','','130425','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涉县','','130426','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'磁县','','130427','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肥乡县','','130428','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永年县','','130429','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邱县','','130430','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鸡泽县','','130431','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广平县','','130432','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'馆陶县','','130433','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'魏县','','130434','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲周县','','130435','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武安市','','130481','',1,(select c.id from city c where c.sz_code='130400'),SYSDATE);

/*==============================================================*/
/*邢台市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130501','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桥东区','','130502','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桥西区','','130503','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邢台县','','130521','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临城县','','130522','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'内丘县','','130523','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柏乡县','','130524','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆尧县','','130525','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'任县','','130526','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南和县','','130527','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁晋县','','130528','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巨鹿县','','130529','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新河县','','130530','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广宗县','','130531','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平乡县','','130532','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'威县','','130533','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清河县','','130534','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临西县','','130535','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南宫市','','130581','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙河市','','130582','',1,(select c.id from city c where c.sz_code='130500'),SYSDATE);

/*==============================================================*/
/*保定市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130601','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新市区','','130602','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北市区','','130603','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南市区','','130604','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'满城县','','130621','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清苑县','','130622','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涞水县','','130623','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阜平县','','130624','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'徐水县','','130625','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定兴县','','130626','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'唐县','','130627','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高阳县','','130628','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'容城县','','130629','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涞源县','','130630','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'望都县','','130631','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安新县','','130632','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'易县','','130633','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲阳县','','130634','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蠡县','','130635','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺平县','','130636','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博野县','','130637','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雄县','','130638','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涿州市','','130681','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定州市','','130682','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安国市','','130683','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高碑店市','','130684','',1,(select c.id from city c where c.sz_code='130600'),SYSDATE);

/*==============================================================*/
/*张家口市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130701','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桥东区','','130702','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桥西区','','130703','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣化区','','130705','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'下花园区','','130706','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣化县','','130721','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'张北县','','130722','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'康保县','','130723','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沽源县','','130724','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尚义县','','130725','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蔚县','','130726','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳原县','','130727','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀安县','','130728','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万全县','','130729','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀来县','','130730','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涿鹿县','','130731','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赤城县','','130732','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇礼县','','130733','',1,(select c.id from city c where c.sz_code='130700'),SYSDATE);

/*==============================================================*/
/*承德市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130801','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双桥区','','130802','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双滦区','','130803','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹰手营子矿区','','130804','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'承德县','','130821','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴隆县','','130822','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平泉县','','130823','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滦平县','','130824','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆化县','','130825','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰宁满族自治县','','130826','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宽城满族自治县','','130827','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'围场满族蒙古族自治县','','130828','',1,(select c.id from city c where c.sz_code='130800'),SYSDATE);

/*==============================================================*/
/*沧州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','130901','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新华区','','130902','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'运河区','','130903','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沧县','','130921','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青县','','130922','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东光县','','130923','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海兴县','','130924','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐山县','','130925','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肃宁县','','130926','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南皮县','','130927','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴桥县','','130928','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'献县','','130929','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孟村回族自治县','','130930','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泊头市','','130981','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'任丘市','','130982','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄骅市','','130983','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河间市','','130984','',1,(select c.id from city c where c.sz_code='130900'),SYSDATE);

/*==============================================================*/
/*廊坊市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','131001','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安次区','','131002','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广阳区','','131003','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'固安县','','131022','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永清县','','131023','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'香河县','','131024','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大城县','','131025','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文安县','','131026','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大厂回族自治县','','131028','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霸州市','','131081','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三河市','','131082','',1,(select c.id from city c where c.sz_code='131000'),SYSDATE);

/*==============================================================*/
/*衡水市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','131101','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桃城区','','131102','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'枣强县','','131121','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武邑县','','131122','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武强县','','131123','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'饶阳县','','131124','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安平县','','131125','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'故城县','','131126','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'景县','','131127','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阜城县','','131128','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'冀州市','','131181','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'深州市','','131182','',1,(select c.id from city c where c.sz_code='131100'),SYSDATE);

/*==============================================================*/
/*太原市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140101','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'小店区','','140105','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'迎泽区','','140106','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杏花岭区','','140107','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尖草坪区','','140108','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万柏林区','','140109','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'晋源区','','140110','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清徐县','','140121','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳曲县','','140122','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'娄烦县','','140123','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古交市','','140181','',1,(select c.id from city c where c.sz_code='140100'),SYSDATE);

/*==============================================================*/
/*大同市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140201','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城区','','140202','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'矿区','','140203','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南郊区','','140211','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新荣区','','140212','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳高县','','140221','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天镇县','','140222','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广灵县','','140223','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵丘县','','140224','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浑源县','','140225','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'左云县','','140226','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大同县','','140227','',1,(select c.id from city c where c.sz_code='140200'),SYSDATE);

/*==============================================================*/
/*阳泉市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140301','',1,(select c.id from city c where c.sz_code='140300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城区','','140302','',1,(select c.id from city c where c.sz_code='140300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'矿区','','140303','',1,(select c.id from city c where c.sz_code='140300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','140311','',1,(select c.id from city c where c.sz_code='140300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平定县','','140321','',1,(select c.id from city c where c.sz_code='140300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盂县','','140322','',1,(select c.id from city c where c.sz_code='140300'),SYSDATE);

/*==============================================================*/
/*长治市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140401','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城区','','140402','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','140411','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长治县','','140421','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'襄垣县','','140423','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'屯留县','','140424','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平顺县','','140425','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黎城县','','140426','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'壶关县','','140427','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长子县','','140428','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武乡县','','140429','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沁县','','140430','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沁源县','','140431','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潞城市','','140481','',1,(select c.id from city c where c.sz_code='140400'),SYSDATE);

/*==============================================================*/
/*晋城市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140501','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城区','','140502','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沁水县','','140521','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳城县','','140522','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陵川县','','140524','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泽州县','','140525','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高平市','','140581','',1,(select c.id from city c where c.sz_code='140500'),SYSDATE);

/*==============================================================*/
/*朔州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140601','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'朔城区','','140602','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平鲁区','','140603','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山阴县','','140621','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'应县','','140622','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'右玉县','','140623','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀仁县','','140624','',1,(select c.id from city c where c.sz_code='140600'),SYSDATE);

/*==============================================================*/
/*晋中市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140701','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榆次区','','140702','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榆社县','','140721','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'左权县','','140722','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和顺县','','140723','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昔阳县','','140724','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寿阳县','','140725','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太谷县','','140726','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'祁县','','140727','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平遥县','','140728','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵石县','','140729','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'介休市','','140781','',1,(select c.id from city c where c.sz_code='140700'),SYSDATE);

/*==============================================================*/
/*运城市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140801','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐湖区','','140802','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临猗县','','140821','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万荣县','','140822','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'闻喜县','','140823','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'稷山县','','140824','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新绛县','','140825','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绛县','','140826','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'垣曲县','','140827','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'夏县','','140828','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平陆县','','140829','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芮城县','','140830','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永济市','','140881','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河津市','','140882','',1,(select c.id from city c where c.sz_code='140800'),SYSDATE);

/*==============================================================*/
/*忻州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','140901','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'忻府区','','140902','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定襄县','','140921','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五台县','','140922','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'代县','','140923','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'繁峙县','','140924','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁武县','','140925','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'静乐县','','140926','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'神池县','','140927','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五寨县','','140928','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岢岚县','','140929','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河曲县','','140930','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'保德县','','140931','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'偏关县','','140932','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'原平市','','140981','',1,(select c.id from city c where c.sz_code='140900'),SYSDATE);

/*==============================================================*/
/*临汾市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','141001','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尧都区','','141002','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲沃县','','141021','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翼城县','','141022','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'襄汾县','','141023','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洪洞县','','141024','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古县','','141025','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安泽县','','141026','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浮山县','','141027','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉县','','141028','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乡宁县','','141029','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大宁县','','141030','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隰县','','141031','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永和县','','141032','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒲县','','141033','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汾西县','','141034','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'侯马市','','141081','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霍州市','','141082','',1,(select c.id from city c where c.sz_code='141000'),SYSDATE);

/*==============================================================*/
/*吕梁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','141101','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'离石区','','141102','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文水县','','141121','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'交城县','','141122','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴县','','141123','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临县','','141124','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柳林县','','141125','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石楼县','','141126','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岚县','','141127','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'方山县','','141128','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中阳县','','141129','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'交口县','','141130','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孝义市','','141181','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汾阳市','','141182','',1,(select c.id from city c where c.sz_code='141100'),SYSDATE);

/*==============================================================*/
/*呼和浩特市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150101','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新城区','','150102','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'回民区','','150103','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉泉区','','150104','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赛罕区','','150105','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'土默特左旗','','150121','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'托克托县','','150122','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和林格尔县','','150123','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清水河县','','150124','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武川县','','150125','',1,(select c.id from city c where c.sz_code='150100'),SYSDATE);

/*==============================================================*/
/*包头市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150201','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东河区','','150202','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昆都仑区','','150203','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青山区','','150204','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石拐区','','150205','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白云矿区','','150206','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九原区','','150207','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'土默特右旗','','150221','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'固阳县','','150222','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'达尔罕茂明安联合旗','','150223','',1,(select c.id from city c where c.sz_code='150200'),SYSDATE);

/*==============================================================*/
/*乌海市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150301','',1,(select c.id from city c where c.sz_code='150300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海勃湾区','','150302','',1,(select c.id from city c where c.sz_code='150300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海南区','','150303','',1,(select c.id from city c where c.sz_code='150300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌达区','','150304','',1,(select c.id from city c where c.sz_code='150300'),SYSDATE);

/*==============================================================*/
/*赤峰市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150401','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红山区','','150402','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元宝山区','','150403','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松山区','','150404','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿鲁科尔沁旗','','150421','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴林左旗','','150422','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴林右旗','','150423','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'林西县','','150424','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'克什克腾旗','','150425','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翁牛特旗','','150426','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'喀喇沁旗','','150428','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁城县','','150429','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'敖汉旗','','150430','',1,(select c.id from city c where c.sz_code='150400'),SYSDATE);

/*==============================================================*/
/*通辽市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150501','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'科尔沁区','','150502','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'科尔沁左翼中旗','','150521','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'科尔沁左翼后旗','','150522','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开鲁县','','150523','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'库伦旗','','150524','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奈曼旗','','150525','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扎鲁特旗','','150526','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霍林郭勒市','','150581','',1,(select c.id from city c where c.sz_code='150500'),SYSDATE);

/*==============================================================*/
/*鄂尔多斯市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东胜区','','150602','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'达拉特旗','','150621','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'准格尔旗','','150622','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂托克前旗','','150623','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂托克旗','','150624','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杭锦旗','','150625','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌审旗','','150626','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊金霍洛旗','','150627','',1,(select c.id from city c where c.sz_code='150600'),SYSDATE);

/*==============================================================*/
/*呼伦贝尔市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150701','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海拉尔区','','150702','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿荣旗','','150721','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莫力达瓦达斡尔族自治旗','','150722','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂伦春自治旗','','150723','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂温克族自治旗','','150724','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陈巴尔虎旗','','150725','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新巴尔虎左旗','','150726','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新巴尔虎右旗','','150727','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'满洲里市','','150781','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'牙克石市','','150782','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扎兰屯市','','150783','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'额尔古纳市','','150784','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'根河市','','150785','',1,(select c.id from city c where c.sz_code='150700'),SYSDATE);

/*==============================================================*/
/*巴彦淖尔市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150801','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临河区','','150802','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五原县','','150821','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'磴口县','','150822','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌拉特前旗','','150823','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌拉特中旗','','150824','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌拉特后旗','','150825','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杭锦后旗','','150826','',1,(select c.id from city c where c.sz_code='150800'),SYSDATE);

/*==============================================================*/
/*乌兰察布市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','150901','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'集宁区','','150902','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卓资县','','150921','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'化德县','','150922','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'商都县','','150923','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴和县','','150924','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凉城县','','150925','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'察哈尔右翼前旗','','150926','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'察哈尔右翼中旗','','150927','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'察哈尔右翼后旗','','150928','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'四子王旗','','150929','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰镇市','','150981','',1,(select c.id from city c where c.sz_code='150900'),SYSDATE);

/*==============================================================*/
/*兴安盟                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌兰浩特市','','152201','',1,(select c.id from city c where c.sz_code='152200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿尔山市','','152202','',1,(select c.id from city c where c.sz_code='152200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'科尔沁右翼前旗','','152221','',1,(select c.id from city c where c.sz_code='152200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'科尔沁右翼中旗','','152222','',1,(select c.id from city c where c.sz_code='152200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扎赉特旗','','152223','',1,(select c.id from city c where c.sz_code='152200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'突泉县','','152224','',1,(select c.id from city c where c.sz_code='152200'),SYSDATE);

/*==============================================================*/
/*锡林郭勒盟                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'二连浩特市','','152501','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'锡林浩特市','','152502','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿巴嘎旗','','152522','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苏尼特左旗','','152523','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苏尼特右旗','','152524','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东乌珠穆沁旗','','152525','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西乌珠穆沁旗','','152526','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太仆寺旗','','152527','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镶黄旗','','152528','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'正镶白旗','','152529','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'正蓝旗','','152530','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'多伦县','','152531','',1,(select c.id from city c where c.sz_code='152500'),SYSDATE);

/*==============================================================*/
/*阿拉善盟                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿拉善左旗','','152921','',1,(select c.id from city c where c.sz_code='152900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿拉善右旗','','152922','',1,(select c.id from city c where c.sz_code='152900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'额济纳旗','','152923','',1,(select c.id from city c where c.sz_code='152900'),SYSDATE);

/*==============================================================*/
/*沈阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210101','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和平区','','210102','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沈河区','','210103','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大东区','','210104','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'皇姑区','','210105','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁西区','','210106','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苏家屯区','','210111','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东陵区','','210112','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新城子区','','210113','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'于洪区','','210114','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'辽中县','','210122','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'康平县','','210123','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'法库县','','210124','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新民市','','210181','',1,(select c.id from city c where c.sz_code='210100'),SYSDATE);

/*==============================================================*/
/*大连市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210201','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中山区','','210202','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西岗区','','210203','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙河口区','','210204','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘井子区','','210211','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'旅顺口区','','210212','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金州区','','210213','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长海县','','210224','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瓦房店市','','210281','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普兰店市','','210282','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庄河市','','210283','',1,(select c.id from city c where c.sz_code='210200'),SYSDATE);

/*==============================================================*/
/*鞍山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210301','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁东区','','210302','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁西区','','210303','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'立山区','','210304','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'千山区','','210311','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'台安县','','210321','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岫岩满族自治县','','210323','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海城市','','210381','',1,(select c.id from city c where c.sz_code='210300'),SYSDATE);

/*==============================================================*/
/*抚顺市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210401','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新抚区','','210402','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东洲区','','210403','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'望花区','','210404','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺城区','','210411','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'抚顺县','','210421','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新宾满族自治县','','210422','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清原满族自治县','','210423','',1,(select c.id from city c where c.sz_code='210400'),SYSDATE);

/*==============================================================*/
/*本溪市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210501','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平山区','','210502','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'溪湖区','','210503','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'明山区','','210504','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南芬区','','210505','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'本溪满族自治县','','210521','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桓仁满族自治县','','210522','',1,(select c.id from city c where c.sz_code='210500'),SYSDATE);

/*==============================================================*/
/*丹东市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210601','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元宝区','','210602','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'振兴区','','210603','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'振安区','','210604','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宽甸满族自治县','','210624','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东港市','','210681','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤城市','','210682','',1,(select c.id from city c where c.sz_code='210600'),SYSDATE);

/*==============================================================*/
/*锦州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210701','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古塔区','','210702','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凌河区','','210703','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太和区','','210711','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黑山县','','210726','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'义县','','210727','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凌海市','','210781','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北宁市','','210782','',1,(select c.id from city c where c.sz_code='210700'),SYSDATE);

/*==============================================================*/
/*营口市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210801','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'站前区','','210802','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西市区','','210803','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鲅鱼圈区','','210804','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'老边区','','210811','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盖州市','','210881','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大石桥市','','210882','',1,(select c.id from city c where c.sz_code='210800'),SYSDATE);

/*==============================================================*/
/*阜新市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','210901','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海州区','','210902','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新邱区','','210903','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太平区','','210904','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清河门区','','210905','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'细河区','','210911','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阜新蒙古族自治县','','210921','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彰武县','','210922','',1,(select c.id from city c where c.sz_code='210900'),SYSDATE);

/*==============================================================*/
/*辽阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','211001','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白塔区','','211002','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文圣区','','211003','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宏伟区','','211004','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'弓长岭区','','211005','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太子河区','','211011','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'辽阳县','','211021','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灯塔市','','211081','',1,(select c.id from city c where c.sz_code='211000'),SYSDATE);

/*==============================================================*/
/*盘锦市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','211101','',1,(select c.id from city c where c.sz_code='211100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双台子区','','211102','',1,(select c.id from city c where c.sz_code='211100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴隆台区','','211103','',1,(select c.id from city c where c.sz_code='211100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大洼县','','211121','',1,(select c.id from city c where c.sz_code='211100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盘山县','','211122','',1,(select c.id from city c where c.sz_code='211100'),SYSDATE);

/*==============================================================*/
/*铁岭市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','211201','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'银州区','','211202','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清河区','','211204','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁岭县','','211221','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西丰县','','211223','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌图县','','211224','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'调兵山市','','211281','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开原市','','211282','',1,(select c.id from city c where c.sz_code='211200'),SYSDATE);

/*==============================================================*/
/*朝阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','211301','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双塔区','','211302','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙城区','','211303','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'朝阳县','','211321','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建平县','','211322','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'喀喇沁左翼蒙古族自治县','','211324','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北票市','','211381','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凌源市','','211382','',1,(select c.id from city c where c.sz_code='211300'),SYSDATE);

/*==============================================================*/
/*葫芦岛市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','211401','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连山区','','211402','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙港区','','211403','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南票区','','211404','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥中县','','211421','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建昌县','','211422','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴城市','','211481','',1,(select c.id from city c where c.sz_code='211400'),SYSDATE);

/*==============================================================*/
/*长春市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220101','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南关区','','220102','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宽城区','','220103','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'朝阳区','','220104','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'二道区','','220105','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绿园区','','220106','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双阳区','','220112','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'农安县','','220122','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九台市','','220181','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榆树市','','220182','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德惠市','','220183','',1,(select c.id from city c where c.sz_code='220100'),SYSDATE);

/*==============================================================*/
/*吉林市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220201','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌邑区','','220202','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙潭区','','220203','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'船营区','','220204','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰满区','','220211','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永吉县','','220221','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蛟河市','','220281','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桦甸市','','220282','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'舒兰市','','220283','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'磐石市','','220284','',1,(select c.id from city c where c.sz_code='220200'),SYSDATE);

/*==============================================================*/
/*四平市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220301','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁西区','','220302','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁东区','','220303','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梨树县','','220322','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊通满族自治县','','220323','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'公主岭市','','220381','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双辽市','','220382','',1,(select c.id from city c where c.sz_code='220300'),SYSDATE);

/*==============================================================*/
/*辽源市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220401','',1,(select c.id from city c where c.sz_code='220400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙山区','','220402','',1,(select c.id from city c where c.sz_code='220400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西安区','','220403','',1,(select c.id from city c where c.sz_code='220400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东丰县','','220421','',1,(select c.id from city c where c.sz_code='220400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东辽县','','220422','',1,(select c.id from city c where c.sz_code='220400'),SYSDATE);

/*==============================================================*/
/*通化市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220501','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东昌区','','220502','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'二道江区','','220503','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通化县','','220521','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'辉南县','','220523','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柳河县','','220524','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梅河口市','','220581','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'集安市','','220582','',1,(select c.id from city c where c.sz_code='220500'),SYSDATE);

/*==============================================================*/
/*白山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220601','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'八道江区','','220602','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'抚松县','','220621','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖宇县','','220622','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长白朝鲜族自治县','','220623','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江源县','','220625','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临江市','','220681','',1,(select c.id from city c where c.sz_code='220600'),SYSDATE);

/*==============================================================*/
/*松原市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220701','',1,(select c.id from city c where c.sz_code='220700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁江区','','220702','',1,(select c.id from city c where c.sz_code='220700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'前郭尔罗斯蒙古族自治县','','220721','',1,(select c.id from city c where c.sz_code='220700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长岭县','','220722','',1,(select c.id from city c where c.sz_code='220700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乾安县','','220723','',1,(select c.id from city c where c.sz_code='220700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扶余县','','220724','',1,(select c.id from city c where c.sz_code='220700'),SYSDATE);

/*==============================================================*/
/*白城市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','220801','',1,(select c.id from city c where c.sz_code='220800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洮北区','','220802','',1,(select c.id from city c where c.sz_code='220800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇赉县','','220821','',1,(select c.id from city c where c.sz_code='220800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通榆县','','220822','',1,(select c.id from city c where c.sz_code='220800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洮南市','','220881','',1,(select c.id from city c where c.sz_code='220800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大安市','','220882','',1,(select c.id from city c where c.sz_code='220800'),SYSDATE);

/*==============================================================*/
/*延边朝鲜族自治州                                              */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延吉市','','222401','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'图们市','','222402','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'敦化市','','222403','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'珲春市','','222404','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙井市','','222405','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和龙市','','222406','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汪清县','','222424','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安图县','','222426','',1,(select c.id from city c where c.sz_code='222400'),SYSDATE);

/*==============================================================*/
/*哈尔滨市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230101','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'道里区','','230102','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南岗区','','230103','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'道外区','','230104','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'香坊区','','230106','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'动力区','','230107','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平房区','','230108','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松北区','','230109','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'呼兰区','','230111','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'依兰县','','230123','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'方正县','','230124','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宾县','','230125','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴彦县','','230126','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'木兰县','','230127','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通河县','','230128','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延寿县','','230129','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿城市','','230181','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双城市','','230182','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尚志市','','230183','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五常市','','230184','',1,(select c.id from city c where c.sz_code='230100'),SYSDATE);

/*==============================================================*/
/*齐齐哈尔市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230201','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙沙区','','230202','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建华区','','230203','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁锋区','','230204','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昂昂溪区','','230205','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富拉尔基区','','230206','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'碾子山区','','230207','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梅里斯达斡尔族区','','230208','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙江县','','230221','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'依安县','','230223','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泰来县','','230224','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘南县','','230225','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富裕县','','230227','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'克山县','','230229','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'克东县','','230230','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'拜泉县','','230231','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'讷河市','','230281','',1,(select c.id from city c where c.sz_code='230200'),SYSDATE);

/*==============================================================*/
/*鸡西市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230301','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鸡冠区','','230302','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'恒山区','','230303','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滴道区','','230304','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梨树区','','230305','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城子河区','','230306','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麻山区','','230307','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鸡东县','','230321','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'虎林市','','230381','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'密山市','','230382','',1,(select c.id from city c where c.sz_code='230300'),SYSDATE);

/*==============================================================*/
/*鹤岗市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230401','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'向阳区','','230402','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'工农区','','230403','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南山区','','230404','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴安区','','230405','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东山区','','230406','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴山区','','230407','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'萝北县','','230421','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥滨县','','230422','',1,(select c.id from city c where c.sz_code='230400'),SYSDATE);

/*==============================================================*/
/*双鸭山市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230501','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尖山区','','230502','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岭东区','','230503','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'四方台区','','230505','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝山区','','230506','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'集贤县','','230521','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'友谊县','','230522','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝清县','','230523','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'饶河县','','230524','',1,(select c.id from city c where c.sz_code='230500'),SYSDATE);

/*==============================================================*/
/*大庆市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230601','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'萨尔图区','','230602','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙凤区','','230603','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'让胡路区','','230604','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红岗区','','230605','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大同区','','230606','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肇州县','','230621','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肇源县','','230622','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'林甸县','','230623','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杜尔伯特蒙古族自治县','','230624','',1,(select c.id from city c where c.sz_code='230600'),SYSDATE);

/*==============================================================*/
/*伊春市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230701','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊春区','','230702','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南岔区','','230703','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'友好区','','230704','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西林区','','230705','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翠峦区','','230706','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新青区','','230707','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'美溪区','','230708','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金山屯区','','230709','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五营区','','230710','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌马河区','','230711','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汤旺河区','','230712','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'带岭区','','230713','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌伊岭区','','230714','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红星区','','230715','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上甘岭区','','230716','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉荫县','','230722','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁力市','','230781','',1,(select c.id from city c where c.sz_code='230700'),SYSDATE);

/*==============================================================*/
/*佳木斯市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230801','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永红区','','230802','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'向阳区','','230803','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'前进区','','230804','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东风区','','230805','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','230811','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桦南县','','230822','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桦川县','','230826','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汤原县','','230828','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'抚远县','','230833','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'同江市','','230881','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富锦市','','230882','',1,(select c.id from city c where c.sz_code='230800'),SYSDATE);

/*==============================================================*/
/*七台河市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','230901','',1,(select c.id from city c where c.sz_code='230900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新兴区','','230902','',1,(select c.id from city c where c.sz_code='230900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桃山区','','230903','',1,(select c.id from city c where c.sz_code='230900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茄子河区','','230904','',1,(select c.id from city c where c.sz_code='230900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'勃利县','','230921','',1,(select c.id from city c where c.sz_code='230900'),SYSDATE);

/*==============================================================*/
/*牡丹江市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','231001','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东安区','','231002','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳明区','','231003','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'爱民区','','231004','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西安区','','231005','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东宁县','','231024','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'林口县','','231025','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥芬河市','','231081','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海林市','','231083','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁安市','','231084','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'穆棱市','','231085','',1,(select c.id from city c where c.sz_code='231000'),SYSDATE);

/*==============================================================*/
/*黑河市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','231101','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'爱辉区','','231102','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嫩江县','','231121','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'逊克县','','231123','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孙吴县','','231124','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北安市','','231181','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五大连池市','','231182','',1,(select c.id from city c where c.sz_code='231100'),SYSDATE);

/*==============================================================*/
/*绥化市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','231201','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北林区','','231202','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'望奎县','','231221','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兰西县','','231222','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青冈县','','231223','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庆安县','','231224','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'明水县','','231225','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥棱县','','231226','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安达市','','231281','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肇东市','','231282','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海伦市','','231283','',1,(select c.id from city c where c.sz_code='231200'),SYSDATE);

/*==============================================================*/
/*大兴安岭地区                                                  */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'呼玛县','','232721','',1,(select c.id from city c where c.sz_code='232700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'塔河县','','232722','',1,(select c.id from city c where c.sz_code='232700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'漠河县','','232723','',1,(select c.id from city c where c.sz_code='232700'),SYSDATE);

/*==============================================================*/
/*市辖区                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄浦区','','310101','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卢湾区','','310103','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'徐汇区','','310104','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长宁区','','310105','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'静安区','','310106','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普陀区','','310107','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'闸北区','','310108','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'虹口区','','310109','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杨浦区','','310110','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'闵行区','','310112','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝山区','','310113','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉定区','','310114','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浦东新区','','310115','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金山区','','310116','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松江区','','310117','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青浦区','','310118','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南汇区','','310119','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奉贤区','','310120','',1,(select c.id from city c where c.sz_code='310100'),SYSDATE);

/*==============================================================*/
/*县                                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇明县','','310230','',1,(select c.id from city c where c.sz_code='310200'),SYSDATE);

/*==============================================================*/
/*南京市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320101','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玄武区','','320102','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白下区','','320103','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秦淮区','','320104','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建邺区','','320105','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鼓楼区','','320106','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'下关区','','320107','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浦口区','','320111','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'栖霞区','','320113','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雨花台区','','320114','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江宁区','','320115','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'六合区','','320116','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'溧水县','','320124','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高淳县','','320125','',1,(select c.id from city c where c.sz_code='320100'),SYSDATE);

/*==============================================================*/
/*无锡市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320201','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇安区','','320202','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南长区','','320203','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北塘区','','320204','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'锡山区','','320205','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠山区','','320206','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滨湖区','','320211','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江阴市','','320281','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜兴市','','320282','',1,(select c.id from city c where c.sz_code='320200'),SYSDATE);

/*==============================================================*/
/*徐州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320301','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鼓楼区','','320302','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云龙区','','320303','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九里区','','320304','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贾汪区','','320305','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泉山区','','320311','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰县','','320321','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沛县','','320322','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铜山县','','320323','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'睢宁县','','320324','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新沂市','','320381','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邳州市','','320382','',1,(select c.id from city c where c.sz_code='320300'),SYSDATE);

/*==============================================================*/
/*常州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320401','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天宁区','','320402','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钟楼区','','320404','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'戚墅堰区','','320405','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新北区','','320411','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武进区','','320412','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'溧阳市','','320481','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金坛市','','320482','',1,(select c.id from city c where c.sz_code='320400'),SYSDATE);

/*==============================================================*/
/*苏州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320501','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沧浪区','','320502','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平江区','','320503','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金阊区','','320504','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'虎丘区','','320505','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴中区','','320506','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'相城区','','320507','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'常熟市','','320581','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'张家港市','','320582','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昆山市','','320583','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴江市','','320584','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太仓市','','320585','',1,(select c.id from city c where c.sz_code='320500'),SYSDATE);

/*==============================================================*/
/*南通市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320601','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇川区','','320602','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'港闸区','','320611','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海安县','','320621','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'如东县','','320623','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'启东市','','320681','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'如皋市','','320682','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通州市','','320683','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海门市','','320684','',1,(select c.id from city c where c.sz_code='320600'),SYSDATE);

/*==============================================================*/
/*连云港市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320701','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连云区','','320703','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新浦区','','320705','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海州区','','320706','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赣榆县','','320721','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东海县','','320722','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灌云县','','320723','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灌南县','','320724','',1,(select c.id from city c where c.sz_code='320700'),SYSDATE);

/*==============================================================*/
/*淮安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320801','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清河区','','320802','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'楚州区','','320803','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淮阴区','','320804','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清浦区','','320811','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涟水县','','320826','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洪泽县','','320829','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盱眙县','','320830','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金湖县','','320831','',1,(select c.id from city c where c.sz_code='320800'),SYSDATE);

/*==============================================================*/
/*盐城市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','320901','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'亭湖区','','320902','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐都区','','320903','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'响水县','','320921','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滨海县','','320922','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阜宁县','','320923','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'射阳县','','320924','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建湖县','','320925','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东台市','','320981','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大丰市','','320982','',1,(select c.id from city c where c.sz_code='320900'),SYSDATE);

/*==============================================================*/
/*扬州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','321001','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广陵区','','321002','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邗江区','','321003','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','321011','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝应县','','321023','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仪征市','','321081','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高邮市','','321084','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江都市','','321088','',1,(select c.id from city c where c.sz_code='321000'),SYSDATE);

/*==============================================================*/
/*镇江市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','321101','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'京口区','','321102','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'润州区','','321111','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹徒区','','321112','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹阳市','','321181','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扬中市','','321182','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'句容市','','321183','',1,(select c.id from city c where c.sz_code='321100'),SYSDATE);

/*==============================================================*/
/*泰州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','321201','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海陵区','','321202','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高港区','','321203','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴化市','','321281','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖江市','','321282','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泰兴市','','321283','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'姜堰市','','321284','',1,(select c.id from city c where c.sz_code='321200'),SYSDATE);

/*==============================================================*/
/*宿迁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','321301','',1,(select c.id from city c where c.sz_code='321300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宿城区','','321302','',1,(select c.id from city c where c.sz_code='321300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宿豫区','','321311','',1,(select c.id from city c where c.sz_code='321300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沭阳县','','321322','',1,(select c.id from city c where c.sz_code='321300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泗阳县','','321323','',1,(select c.id from city c where c.sz_code='321300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泗洪县','','321324','',1,(select c.id from city c where c.sz_code='321300'),SYSDATE);

/*==============================================================*/
/*杭州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330101','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上城区','','330102','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'下城区','','330103','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江干区','','330104','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'拱墅区','','330105','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西湖区','','330106','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滨江区','','330108','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'萧山区','','330109','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'余杭区','','330110','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桐庐县','','330122','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淳安县','','330127','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建德市','','330182','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富阳市','','330183','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临安市','','330185','',1,(select c.id from city c where c.sz_code='330100'),SYSDATE);

/*==============================================================*/
/*宁波市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330201','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海曙区','','330203','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江东区','','330204','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江北区','','330205','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北仑区','','330206','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇海区','','330211','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄞州区','','330212','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'象山县','','330225','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁海县','','330226','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'余姚市','','330281','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'慈溪市','','330282','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奉化市','','330283','',1,(select c.id from city c where c.sz_code='330200'),SYSDATE);

/*==============================================================*/
/*温州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330301','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹿城区','','330302','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙湾区','','330303','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瓯海区','','330304','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洞头县','','330322','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永嘉县','','330324','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平阳县','','330326','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苍南县','','330327','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文成县','','330328','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泰顺县','','330329','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瑞安市','','330381','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐清市','','330382','',1,(select c.id from city c where c.sz_code='330300'),SYSDATE);

/*==============================================================*/
/*嘉兴市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330401','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秀城区','','330402','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秀洲区','','330411','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉善县','','330421','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海盐县','','330424','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海宁市','','330481','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平湖市','','330482','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桐乡市','','330483','',1,(select c.id from city c where c.sz_code='330400'),SYSDATE);

/*==============================================================*/
/*湖州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330501','',1,(select c.id from city c where c.sz_code='330500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴兴区','','330502','',1,(select c.id from city c where c.sz_code='330500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南浔区','','330503','',1,(select c.id from city c where c.sz_code='330500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德清县','','330521','',1,(select c.id from city c where c.sz_code='330500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长兴县','','330522','',1,(select c.id from city c where c.sz_code='330500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安吉县','','330523','',1,(select c.id from city c where c.sz_code='330500'),SYSDATE);

/*==============================================================*/
/*绍兴市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330601','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'越城区','','330602','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绍兴县','','330621','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新昌县','','330624','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'诸暨市','','330681','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上虞市','','330682','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嵊州市','','330683','',1,(select c.id from city c where c.sz_code='330600'),SYSDATE);

/*==============================================================*/
/*金华市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330701','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'婺城区','','330702','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金东区','','330703','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武义县','','330723','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浦江县','','330726','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'磐安县','','330727','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兰溪市','','330781','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'义乌市','','330782','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东阳市','','330783','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永康市','','330784','',1,(select c.id from city c where c.sz_code='330700'),SYSDATE);

/*==============================================================*/
/*衢州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330801','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柯城区','','330802','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'衢江区','','330803','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'常山县','','330822','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开化县','','330824','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙游县','','330825','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江山市','','330881','',1,(select c.id from city c where c.sz_code='330800'),SYSDATE);

/*==============================================================*/
/*舟山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','330901','',1,(select c.id from city c where c.sz_code='330900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定海区','','330902','',1,(select c.id from city c where c.sz_code='330900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普陀区','','330903','',1,(select c.id from city c where c.sz_code='330900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岱山县','','330921','',1,(select c.id from city c where c.sz_code='330900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嵊泗县','','330922','',1,(select c.id from city c where c.sz_code='330900'),SYSDATE);

/*==============================================================*/
/*台州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','331001','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'椒江区','','331002','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄岩区','','331003','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'路桥区','','331004','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉环县','','331021','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三门县','','331022','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天台县','','331023','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仙居县','','331024','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'温岭市','','331081','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临海市','','331082','',1,(select c.id from city c where c.sz_code='331000'),SYSDATE);

/*==============================================================*/
/*丽水市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','331101','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莲都区','','331102','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青田县','','331121','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'缙云县','','331122','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'遂昌县','','331123','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松阳县','','331124','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云和县','','331125','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庆元县','','331126','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'景宁畲族自治县','','331127','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙泉市','','331181','',1,(select c.id from city c where c.sz_code='331100'),SYSDATE);

/*==============================================================*/
/*合肥市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340101','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瑶海区','','340102','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庐阳区','','340103','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蜀山区','','340104','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'包河区','','340111','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长丰县','','340121','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肥东县','','340122','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肥西县','','340123','',1,(select c.id from city c where c.sz_code='340100'),SYSDATE);

/*==============================================================*/
/*芜湖市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340201','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镜湖区','','340202','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马塘区','','340203','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新芜区','','340204','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鸠江区','','340207','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芜湖县','','340221','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'繁昌县','','340222','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南陵县','','340223','',1,(select c.id from city c where c.sz_code='340200'),SYSDATE);

/*==============================================================*/
/*蚌埠市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340301','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙子湖区','','340302','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蚌山区','','340303','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'禹会区','','340304','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淮上区','','340311','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀远县','','340321','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五河县','','340322','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'固镇县','','340323','',1,(select c.id from city c where c.sz_code='340300'),SYSDATE);

/*==============================================================*/
/*淮南市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340401','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大通区','','340402','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'田家庵区','','340403','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'谢家集区','','340404','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'八公山区','','340405','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潘集区','','340406','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤台县','','340421','',1,(select c.id from city c where c.sz_code='340400'),SYSDATE);

/*==============================================================*/
/*马鞍山市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340501','',1,(select c.id from city c where c.sz_code='340500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金家庄区','','340502','',1,(select c.id from city c where c.sz_code='340500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'花山区','','340503','',1,(select c.id from city c where c.sz_code='340500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雨山区','','340504','',1,(select c.id from city c where c.sz_code='340500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'当涂县','','340521','',1,(select c.id from city c where c.sz_code='340500'),SYSDATE);

/*==============================================================*/
/*淮北市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340601','',1,(select c.id from city c where c.sz_code='340600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杜集区','','340602','',1,(select c.id from city c where c.sz_code='340600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'相山区','','340603','',1,(select c.id from city c where c.sz_code='340600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'烈山区','','340604','',1,(select c.id from city c where c.sz_code='340600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'濉溪县','','340621','',1,(select c.id from city c where c.sz_code='340600'),SYSDATE);

/*==============================================================*/
/*铜陵市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340701','',1,(select c.id from city c where c.sz_code='340700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铜官山区','','340702','',1,(select c.id from city c where c.sz_code='340700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'狮子山区','','340703','',1,(select c.id from city c where c.sz_code='340700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','340711','',1,(select c.id from city c where c.sz_code='340700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铜陵县','','340721','',1,(select c.id from city c where c.sz_code='340700'),SYSDATE);

/*==============================================================*/
/*安庆市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','340801','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'迎江区','','340802','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大观区','','340803','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','340811','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀宁县','','340822','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'枞阳县','','340823','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潜山县','','340824','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太湖县','','340825','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宿松县','','340826','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'望江县','','340827','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳西县','','340828','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桐城市','','340881','',1,(select c.id from city c where c.sz_code='340800'),SYSDATE);

/*==============================================================*/
/*黄山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341001','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'屯溪区','','341002','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄山区','','341003','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'徽州区','','341004','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'歙县','','341021','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'休宁县','','341022','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黟县','','341023','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'祁门县','','341024','',1,(select c.id from city c where c.sz_code='341000'),SYSDATE);

/*==============================================================*/
/*滁州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341101','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'琅琊区','','341102','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南谯区','','341103','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'来安县','','341122','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'全椒县','','341124','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定远县','','341125','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤阳县','','341126','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天长市','','341181','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'明光市','','341182','',1,(select c.id from city c where c.sz_code='341100'),SYSDATE);

/*==============================================================*/
/*阜阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341201','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'颍州区','','341202','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'颍东区','','341203','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'颍泉区','','341204','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临泉县','','341221','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太和县','','341222','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阜南县','','341225','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'颍上县','','341226','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'界首市','','341282','',1,(select c.id from city c where c.sz_code='341200'),SYSDATE);

/*==============================================================*/
/*宿州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341301','',1,(select c.id from city c where c.sz_code='341300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'墉桥区','','341302','',1,(select c.id from city c where c.sz_code='341300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'砀山县','','341321','',1,(select c.id from city c where c.sz_code='341300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'萧县','','341322','',1,(select c.id from city c where c.sz_code='341300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵璧县','','341323','',1,(select c.id from city c where c.sz_code='341300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泗县','','341324','',1,(select c.id from city c where c.sz_code='341300'),SYSDATE);

/*==============================================================*/
/*巢湖市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341401','',1,(select c.id from city c where c.sz_code='341400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'居巢区','','341402','',1,(select c.id from city c where c.sz_code='341400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庐江县','','341421','',1,(select c.id from city c where c.sz_code='341400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'无为县','','341422','',1,(select c.id from city c where c.sz_code='341400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'含山县','','341423','',1,(select c.id from city c where c.sz_code='341400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和县','','341424','',1,(select c.id from city c where c.sz_code='341400'),SYSDATE);

/*==============================================================*/
/*六安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341501','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金安区','','341502','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'裕安区','','341503','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寿县','','341521','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霍邱县','','341522','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'舒城县','','341523','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金寨县','','341524','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霍山县','','341525','',1,(select c.id from city c where c.sz_code='341500'),SYSDATE);

/*==============================================================*/
/*亳州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341601','',1,(select c.id from city c where c.sz_code='341600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'谯城区','','341602','',1,(select c.id from city c where c.sz_code='341600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涡阳县','','341621','',1,(select c.id from city c where c.sz_code='341600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒙城县','','341622','',1,(select c.id from city c where c.sz_code='341600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'利辛县','','341623','',1,(select c.id from city c where c.sz_code='341600'),SYSDATE);

/*==============================================================*/
/*池州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341701','',1,(select c.id from city c where c.sz_code='341700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贵池区','','341702','',1,(select c.id from city c where c.sz_code='341700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东至县','','341721','',1,(select c.id from city c where c.sz_code='341700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石台县','','341722','',1,(select c.id from city c where c.sz_code='341700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青阳县','','341723','',1,(select c.id from city c where c.sz_code='341700'),SYSDATE);

/*==============================================================*/
/*宣城市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','341801','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣州区','','341802','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郎溪县','','341821','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广德县','','341822','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泾县','','341823','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绩溪县','','341824','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'旌德县','','341825','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁国市','','341881','',1,(select c.id from city c where c.sz_code='341800'),SYSDATE);

/*==============================================================*/
/*福州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350101','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鼓楼区','','350102','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'台江区','','350103','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仓山区','','350104','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马尾区','','350105','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'晋安区','','350111','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'闽侯县','','350121','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连江县','','350122','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗源县','','350123','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'闽清县','','350124','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永泰县','','350125','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平潭县','','350128','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福清市','','350181','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长乐市','','350182','',1,(select c.id from city c where c.sz_code='350100'),SYSDATE);

/*==============================================================*/
/*厦门市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350201','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'思明区','','350203','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海沧区','','350205','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湖里区','','350206','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'集美区','','350211','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'同安区','','350212','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翔安区','','350213','',1,(select c.id from city c where c.sz_code='350200'),SYSDATE);

/*==============================================================*/
/*莆田市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350301','',1,(select c.id from city c where c.sz_code='350300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城厢区','','350302','',1,(select c.id from city c where c.sz_code='350300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涵江区','','350303','',1,(select c.id from city c where c.sz_code='350300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荔城区','','350304','',1,(select c.id from city c where c.sz_code='350300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秀屿区','','350305','',1,(select c.id from city c where c.sz_code='350300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仙游县','','350322','',1,(select c.id from city c where c.sz_code='350300'),SYSDATE);

/*==============================================================*/
/*三明市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350401','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梅列区','','350402','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三元区','','350403','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'明溪县','','350421','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清流县','','350423','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁化县','','350424','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大田县','','350425','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尤溪县','','350426','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙县','','350427','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'将乐县','','350428','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泰宁县','','350429','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建宁县','','350430','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永安市','','350481','',1,(select c.id from city c where c.sz_code='350400'),SYSDATE);

/*==============================================================*/
/*泉州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350501','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鲤城区','','350502','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰泽区','','350503','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛江区','','350504','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泉港区','','350505','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠安县','','350521','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安溪县','','350524','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永春县','','350525','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德化县','','350526','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金门县','','350527','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石狮市','','350581','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'晋江市','','350582','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南安市','','350583','',1,(select c.id from city c where c.sz_code='350500'),SYSDATE);

/*==============================================================*/
/*漳州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350601','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芗城区','','350602','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙文区','','350603','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云霄县','','350622','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'漳浦县','','350623','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'诏安县','','350624','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长泰县','','350625','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东山县','','350626','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南靖县','','350627','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平和县','','350628','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华安县','','350629','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙海市','','350681','',1,(select c.id from city c where c.sz_code='350600'),SYSDATE);

/*==============================================================*/
/*南平市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350701','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延平区','','350702','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺昌县','','350721','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浦城县','','350722','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'光泽县','','350723','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松溪县','','350724','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'政和县','','350725','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邵武市','','350781','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武夷山市','','350782','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建瓯市','','350783','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建阳市','','350784','',1,(select c.id from city c where c.sz_code='350700'),SYSDATE);

/*==============================================================*/
/*龙岩市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350801','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新罗区','','350802','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长汀县','','350821','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永定县','','350822','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上杭县','','350823','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武平县','','350824','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连城县','','350825','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'漳平市','','350881','',1,(select c.id from city c where c.sz_code='350800'),SYSDATE);

/*==============================================================*/
/*宁德市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','350901','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蕉城区','','350902','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霞浦县','','350921','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古田县','','350922','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'屏南县','','350923','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寿宁县','','350924','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'周宁县','','350925','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柘荣县','','350926','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福安市','','350981','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福鼎市','','350982','',1,(select c.id from city c where c.sz_code='350900'),SYSDATE);

/*==============================================================*/
/*南昌市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360101','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东湖区','','360102','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西湖区','','360103','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青云谱区','','360104','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湾里区','','360105','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青山湖区','','360111','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南昌县','','360121','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新建县','','360122','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安义县','','360123','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'进贤县','','360124','',1,(select c.id from city c where c.sz_code='360100'),SYSDATE);

/*==============================================================*/
/*景德镇市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360201','',1,(select c.id from city c where c.sz_code='360200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌江区','','360202','',1,(select c.id from city c where c.sz_code='360200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'珠山区','','360203','',1,(select c.id from city c where c.sz_code='360200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浮梁县','','360222','',1,(select c.id from city c where c.sz_code='360200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐平市','','360281','',1,(select c.id from city c where c.sz_code='360200'),SYSDATE);

/*==============================================================*/
/*萍乡市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360301','',1,(select c.id from city c where c.sz_code='360300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安源区','','360302','',1,(select c.id from city c where c.sz_code='360300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湘东区','','360313','',1,(select c.id from city c where c.sz_code='360300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莲花县','','360321','',1,(select c.id from city c where c.sz_code='360300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上栗县','','360322','',1,(select c.id from city c where c.sz_code='360300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芦溪县','','360323','',1,(select c.id from city c where c.sz_code='360300'),SYSDATE);

/*==============================================================*/
/*九江市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360401','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庐山区','','360402','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浔阳区','','360403','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九江县','','360421','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武宁县','','360423','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'修水县','','360424','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永修县','','360425','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德安县','','360426','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'星子县','','360427','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'都昌县','','360428','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湖口县','','360429','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彭泽县','','360430','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瑞昌市','','360481','',1,(select c.id from city c where c.sz_code='360400'),SYSDATE);

/*==============================================================*/
/*新余市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360501','',1,(select c.id from city c where c.sz_code='360500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渝水区','','360502','',1,(select c.id from city c where c.sz_code='360500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'分宜县','','360521','',1,(select c.id from city c where c.sz_code='360500'),SYSDATE);

/*==============================================================*/
/*鹰潭市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360601','',1,(select c.id from city c where c.sz_code='360600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'月湖区','','360602','',1,(select c.id from city c where c.sz_code='360600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'余江县','','360622','',1,(select c.id from city c where c.sz_code='360600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贵溪市','','360681','',1,(select c.id from city c where c.sz_code='360600'),SYSDATE);

/*==============================================================*/
/*赣州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360701','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'章贡区','','360702','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赣县','','360721','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'信丰县','','360722','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大余县','','360723','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上犹县','','360724','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇义县','','360725','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安远县','','360726','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙南县','','360727','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定南县','','360728','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'全南县','','360729','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁都县','','360730','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'于都县','','360731','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴国县','','360732','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'会昌县','','360733','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寻乌县','','360734','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石城县','','360735','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瑞金市','','360781','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南康市','','360782','',1,(select c.id from city c where c.sz_code='360700'),SYSDATE);

/*==============================================================*/
/*吉安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360801','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉州区','','360802','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青原区','','360803','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉安县','','360821','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉水县','','360822','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'峡江县','','360823','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新干县','','360824','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永丰县','','360825','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泰和县','','360826','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'遂川县','','360827','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万安县','','360828','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安福县','','360829','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永新县','','360830','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'井冈山市','','360881','',1,(select c.id from city c where c.sz_code='360800'),SYSDATE);

/*==============================================================*/
/*宜春市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','360901','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'袁州区','','360902','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奉新县','','360921','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万载县','','360922','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上高县','','360923','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜丰县','','360924','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖安县','','360925','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铜鼓县','','360926','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰城市','','360981','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'樟树市','','360982','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高安市','','360983','',1,(select c.id from city c where c.sz_code='360900'),SYSDATE);

/*==============================================================*/
/*抚州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','361001','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临川区','','361002','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南城县','','361021','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黎川县','','361022','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南丰县','','361023','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇仁县','','361024','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐安县','','361025','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜黄县','','361026','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金溪县','','361027','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'资溪县','','361028','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东乡县','','361029','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广昌县','','361030','',1,(select c.id from city c where c.sz_code='361000'),SYSDATE);

/*==============================================================*/
/*上饶市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','361101','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'信州区','','361102','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上饶县','','361121','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广丰县','','361122','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉山县','','361123','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铅山县','','361124','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'横峰县','','361125','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'弋阳县','','361126','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'余干县','','361127','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄱阳县','','361128','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万年县','','361129','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'婺源县','','361130','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德兴市','','361181','',1,(select c.id from city c where c.sz_code='361100'),SYSDATE);

/*==============================================================*/
/*济南市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370101','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'历下区','','370102','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市中区','','370103','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'槐荫区','','370104','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天桥区','','370105','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'历城区','','370112','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长清区','','370113','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平阴县','','370124','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'济阳县','','370125','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'商河县','','370126','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'章丘市','','370181','',1,(select c.id from city c where c.sz_code='370100'),SYSDATE);

/*==============================================================*/
/*青岛市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370201','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市南区','','370202','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市北区','','370203','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'四方区','','370205','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄岛区','','370211','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崂山区','','370212','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'李沧区','','370213','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城阳区','','370214','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'胶州市','','370281','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'即墨市','','370282','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平度市','','370283','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'胶南市','','370284','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莱西市','','370285','',1,(select c.id from city c where c.sz_code='370200'),SYSDATE);

/*==============================================================*/
/*淄博市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370301','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淄川区','','370302','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'张店区','','370303','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博山区','','370304','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临淄区','','370305','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'周村区','','370306','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桓台县','','370321','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高青县','','370322','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沂源县','','370323','',1,(select c.id from city c where c.sz_code='370300'),SYSDATE);

/*==============================================================*/
/*枣庄市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370401','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市中区','','370402','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'薛城区','','370403','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'峄城区','','370404','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'台儿庄区','','370405','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山亭区','','370406','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滕州市','','370481','',1,(select c.id from city c where c.sz_code='370400'),SYSDATE);

/*==============================================================*/
/*东营市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370501','',1,(select c.id from city c where c.sz_code='370500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东营区','','370502','',1,(select c.id from city c where c.sz_code='370500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河口区','','370503','',1,(select c.id from city c where c.sz_code='370500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'垦利县','','370521','',1,(select c.id from city c where c.sz_code='370500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'利津县','','370522','',1,(select c.id from city c where c.sz_code='370500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广饶县','','370523','',1,(select c.id from city c where c.sz_code='370500'),SYSDATE);

/*==============================================================*/
/*烟台市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370601','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芝罘区','','370602','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福山区','','370611','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'牟平区','','370612','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莱山区','','370613','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长岛县','','370634','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙口市','','370681','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莱阳市','','370682','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莱州市','','370683','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓬莱市','','370684','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'招远市','','370685','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'栖霞市','','370686','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海阳市','','370687','',1,(select c.id from city c where c.sz_code='370600'),SYSDATE);

/*==============================================================*/
/*潍坊市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370701','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潍城区','','370702','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寒亭区','','370703','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'坊子区','','370704','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奎文区','','370705','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临朐县','','370724','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌乐县','','370725','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青州市','','370781','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'诸城市','','370782','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寿光市','','370783','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安丘市','','370784','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高密市','','370785','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌邑市','','370786','',1,(select c.id from city c where c.sz_code='370700'),SYSDATE);

/*==============================================================*/
/*济宁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370801','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市中区','','370802','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'任城区','','370811','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'微山县','','370826','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鱼台县','','370827','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金乡县','','370828','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉祥县','','370829','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汶上县','','370830','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泗水县','','370831','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梁山县','','370832','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲阜市','','370881','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兖州市','','370882','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邹城市','','370883','',1,(select c.id from city c where c.sz_code='370800'),SYSDATE);

/*==============================================================*/
/*泰安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','370901','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泰山区','','370902','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岱岳区','','370903','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁阳县','','370921','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东平县','','370923','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新泰市','','370982','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肥城市','','370983','',1,(select c.id from city c where c.sz_code='370900'),SYSDATE);

/*==============================================================*/
/*威海市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371001','',1,(select c.id from city c where c.sz_code='371000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'环翠区','','371002','',1,(select c.id from city c where c.sz_code='371000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文登市','','371081','',1,(select c.id from city c where c.sz_code='371000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荣成市','','371082','',1,(select c.id from city c where c.sz_code='371000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乳山市','','371083','',1,(select c.id from city c where c.sz_code='371000'),SYSDATE);

/*==============================================================*/
/*日照市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371101','',1,(select c.id from city c where c.sz_code='371100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东港区','','371102','',1,(select c.id from city c where c.sz_code='371100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岚山区','','371103','',1,(select c.id from city c where c.sz_code='371100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五莲县','','371121','',1,(select c.id from city c where c.sz_code='371100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莒县','','371122','',1,(select c.id from city c where c.sz_code='371100'),SYSDATE);

/*==============================================================*/
/*莱芜市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371201','',1,(select c.id from city c where c.sz_code='371200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莱城区','','371202','',1,(select c.id from city c where c.sz_code='371200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钢城区','','371203','',1,(select c.id from city c where c.sz_code='371200'),SYSDATE);

/*==============================================================*/
/*临沂市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371301','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兰山区','','371302','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗庄区','','371311','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河东区','','371312','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沂南县','','371321','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郯城县','','371322','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沂水县','','371323','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苍山县','','371324','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'费县','','371325','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平邑县','','371326','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莒南县','','371327','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒙阴县','','371328','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临沭县','','371329','',1,(select c.id from city c where c.sz_code='371300'),SYSDATE);

/*==============================================================*/
/*德州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371401','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德城区','','371402','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陵县','','371421','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁津县','','371422','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庆云县','','371423','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临邑县','','371424','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'齐河县','','371425','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平原县','','371426','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'夏津县','','371427','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武城县','','371428','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐陵市','','371481','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'禹城市','','371482','',1,(select c.id from city c where c.sz_code='371400'),SYSDATE);

/*==============================================================*/
/*聊城市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371501','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东昌府区','','371502','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳谷县','','371521','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莘县','','371522','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茌平县','','371523','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东阿县','','371524','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'冠县','','371525','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高唐县','','371526','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临清市','','371581','',1,(select c.id from city c where c.sz_code='371500'),SYSDATE);

/*==============================================================*/
/*滨州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371601','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滨城区','','371602','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠民县','','371621','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳信县','','371622','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'无棣县','','371623','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沾化县','','371624','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博兴县','','371625','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邹平县','','371626','',1,(select c.id from city c where c.sz_code='371600'),SYSDATE);

/*==============================================================*/
/*荷泽市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','371701','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'牡丹区','','371702','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曹县','','371721','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'单县','','371722','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'成武县','','371723','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巨野县','','371724','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郓城县','','371725','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄄城县','','371726','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定陶县','','371727','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东明县','','371728','',1,(select c.id from city c where c.sz_code='371700'),SYSDATE);

/*==============================================================*/
/*郑州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410101','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中原区','','410102','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'二七区','','410103','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'管城回族区','','410104','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金水区','','410105','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上街区','','410106','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邙山区','','410108','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中牟县','','410122','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巩义市','','410181','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荥阳市','','410182','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新密市','','410183','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新郑市','','410184','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'登封市','','410185','',1,(select c.id from city c where c.sz_code='410100'),SYSDATE);

/*==============================================================*/
/*开封市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410201','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙亭区','','410202','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺河回族区','','410203','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鼓楼区','','410204','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南关区','','410205','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郊区','','410211','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杞县','','410221','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通许县','','410222','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尉氏县','','410223','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开封县','','410224','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兰考县','','410225','',1,(select c.id from city c where c.sz_code='410200'),SYSDATE);

/*==============================================================*/
/*洛阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410301','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'老城区','','410302','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西工区','','410303','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'廛河回族区','','410304','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涧西区','','410305','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉利区','','410306','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛龙区','','410307','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孟津县','','410322','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新安县','','410323','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'栾川县','','410324','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嵩县','','410325','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汝阳县','','410326','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜阳县','','410327','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛宁县','','410328','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊川县','','410329','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'偃师市','','410381','',1,(select c.id from city c where c.sz_code='410300'),SYSDATE);

/*==============================================================*/
/*平顶山市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410401','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新华区','','410402','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卫东区','','410403','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石龙区','','410404','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湛河区','','410411','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝丰县','','410421','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'叶县','','410422','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鲁山县','','410423','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郏县','','410425','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'舞钢市','','410481','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汝州市','','410482','',1,(select c.id from city c where c.sz_code='410400'),SYSDATE);

/*==============================================================*/
/*安阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410501','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文峰区','','410502','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北关区','','410503','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'殷都区','','410505','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙安区','','410506','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安阳县','','410522','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汤阴县','','410523','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'滑县','','410526','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'内黄县','','410527','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'林州市','','410581','',1,(select c.id from city c where c.sz_code='410500'),SYSDATE);

/*==============================================================*/
/*鹤壁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410601','',1,(select c.id from city c where c.sz_code='410600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤山区','','410602','',1,(select c.id from city c where c.sz_code='410600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山城区','','410603','',1,(select c.id from city c where c.sz_code='410600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淇滨区','','410611','',1,(select c.id from city c where c.sz_code='410600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浚县','','410621','',1,(select c.id from city c where c.sz_code='410600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淇县','','410622','',1,(select c.id from city c where c.sz_code='410600'),SYSDATE);

/*==============================================================*/
/*新乡市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410701','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红旗区','','410702','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卫滨区','','410703','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤泉区','','410704','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'牧野区','','410711','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新乡县','','410721','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'获嘉县','','410724','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'原阳县','','410725','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延津县','','410726','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'封丘县','','410727','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长垣县','','410728','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卫辉市','','410781','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'辉县市','','410782','',1,(select c.id from city c where c.sz_code='410700'),SYSDATE);

/*==============================================================*/
/*焦作市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410801','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'解放区','','410802','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中站区','','410803','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马村区','','410804','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山阳区','','410811','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'修武县','','410821','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博爱县','','410822','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武陟县','','410823','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'温县','','410825','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'济源市','','410881','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沁阳市','','410882','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孟州市','','410883','',1,(select c.id from city c where c.sz_code='410800'),SYSDATE);

/*==============================================================*/
/*濮阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','410901','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华龙区','','410902','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清丰县','','410922','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南乐县','','410923','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'范县','','410926','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'台前县','','410927','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'濮阳县','','410928','',1,(select c.id from city c where c.sz_code='410900'),SYSDATE);

/*==============================================================*/
/*许昌市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411001','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'魏都区','','411002','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'许昌县','','411023','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄢陵县','','411024','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'襄城县','','411025','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'禹州市','','411081','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长葛市','','411082','',1,(select c.id from city c where c.sz_code='411000'),SYSDATE);

/*==============================================================*/
/*漯河市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411101','',1,(select c.id from city c where c.sz_code='411100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'源汇区','','411102','',1,(select c.id from city c where c.sz_code='411100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郾城区','','411103','',1,(select c.id from city c where c.sz_code='411100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'召陵区','','411104','',1,(select c.id from city c where c.sz_code='411100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'舞阳县','','411121','',1,(select c.id from city c where c.sz_code='411100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临颍县','','411122','',1,(select c.id from city c where c.sz_code='411100'),SYSDATE);

/*==============================================================*/
/*三门峡市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411201','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湖滨区','','411202','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渑池县','','411221','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陕县','','411222','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卢氏县','','411224','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'义马市','','411281','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵宝市','','411282','',1,(select c.id from city c where c.sz_code='411200'),SYSDATE);

/*==============================================================*/
/*南阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411301','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宛城区','','411302','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卧龙区','','411303','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南召县','','411321','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'方城县','','411322','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西峡县','','411323','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇平县','','411324','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'内乡县','','411325','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淅川县','','411326','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'社旗县','','411327','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'唐河县','','411328','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新野县','','411329','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桐柏县','','411330','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邓州市','','411381','',1,(select c.id from city c where c.sz_code='411300'),SYSDATE);

/*==============================================================*/
/*商丘市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411401','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梁园区','','411402','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'睢阳区','','411403','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'民权县','','411421','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'睢县','','411422','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁陵县','','411423','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柘城县','','411424','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'虞城县','','411425','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'夏邑县','','411426','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永城市','','411481','',1,(select c.id from city c where c.sz_code='411400'),SYSDATE);

/*==============================================================*/
/*信阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411501','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'师河区','','411502','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平桥区','','411503','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗山县','','411521','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'光山县','','411522','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新县','','411523','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'商城县','','411524','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'固始县','','411525','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潢川县','','411526','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淮滨县','','411527','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'息县','','411528','',1,(select c.id from city c where c.sz_code='411500'),SYSDATE);

/*==============================================================*/
/*周口市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411601','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'川汇区','','411602','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扶沟县','','411621','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西华县','','411622','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'商水县','','411623','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沈丘县','','411624','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郸城县','','411625','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淮阳县','','411626','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太康县','','411627','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹿邑县','','411628','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'项城市','','411681','',1,(select c.id from city c where c.sz_code='411600'),SYSDATE);

/*==============================================================*/
/*驻马店市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','411701','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'驿城区','','411702','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西平县','','411721','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上蔡县','','411722','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平舆县','','411723','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'正阳县','','411724','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'确山县','','411725','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泌阳县','','411726','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汝南县','','411727','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'遂平县','','411728','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新蔡县','','411729','',1,(select c.id from city c where c.sz_code='411700'),SYSDATE);

/*==============================================================*/
/*武汉市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420101','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江岸区','','420102','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江汉区','','420103','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乔口区','','420104','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉阳区','','420105','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武昌区','','420106','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青山区','','420107','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洪山区','','420111','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东西湖区','','420112','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉南区','','420113','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蔡甸区','','420114','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江夏区','','420115','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄陂区','','420116','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新洲区','','420117','',1,(select c.id from city c where c.sz_code='420100'),SYSDATE);

/*==============================================================*/
/*黄石市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420201','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄石港区','','420202','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西塞山区','','420203','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'下陆区','','420204','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁山区','','420205','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳新县','','420222','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大冶市','','420281','',1,(select c.id from city c where c.sz_code='420200'),SYSDATE);

/*==============================================================*/
/*十堰市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420301','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茅箭区','','420302','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'张湾区','','420303','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郧县','','420321','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郧西县','','420322','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'竹山县','','420323','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'竹溪县','','420324','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'房县','','420325','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹江口市','','420381','',1,(select c.id from city c where c.sz_code='420300'),SYSDATE);

/*==============================================================*/
/*宜昌市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420501','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西陵区','','420502','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伍家岗区','','420503','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'点军区','','420504','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'猇亭区','','420505','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'夷陵区','','420506','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'远安县','','420525','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴山县','','420526','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秭归县','','420527','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长阳土家族自治县','','420528','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五峰土家族自治县','','420529','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜都市','','420581','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'当阳市','','420582','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'枝江市','','420583','',1,(select c.id from city c where c.sz_code='420500'),SYSDATE);

/*==============================================================*/
/*襄樊市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420601','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'襄城区','','420602','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'樊城区','','420606','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'襄阳区','','420607','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南漳县','','420624','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'谷城县','','420625','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'保康县','','420626','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'老河口市','','420682','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'枣阳市','','420683','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜城市','','420684','',1,(select c.id from city c where c.sz_code='420600'),SYSDATE);

/*==============================================================*/
/*鄂州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420701','',1,(select c.id from city c where c.sz_code='420700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梁子湖区','','420702','',1,(select c.id from city c where c.sz_code='420700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华容区','','420703','',1,(select c.id from city c where c.sz_code='420700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄂城区','','420704','',1,(select c.id from city c where c.sz_code='420700'),SYSDATE);

/*==============================================================*/
/*荆门市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420801','',1,(select c.id from city c where c.sz_code='420800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东宝区','','420802','',1,(select c.id from city c where c.sz_code='420800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'掇刀区','','420804','',1,(select c.id from city c where c.sz_code='420800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'京山县','','420821','',1,(select c.id from city c where c.sz_code='420800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙洋县','','420822','',1,(select c.id from city c where c.sz_code='420800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钟祥市','','420881','',1,(select c.id from city c where c.sz_code='420800'),SYSDATE);

/*==============================================================*/
/*孝感市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','420901','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孝南区','','420902','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孝昌县','','420921','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大悟县','','420922','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云梦县','','420923','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'应城市','','420981','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安陆市','','420982','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉川市','','420984','',1,(select c.id from city c where c.sz_code='420900'),SYSDATE);

/*==============================================================*/
/*荆州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','421001','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙市区','','421002','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荆州区','','421003','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'公安县','','421022','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'监利县','','421023','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江陵县','','421024','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石首市','','421081','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洪湖市','','421083','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松滋市','','421087','',1,(select c.id from city c where c.sz_code='421000'),SYSDATE);

/*==============================================================*/
/*黄冈市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','421101','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄州区','','421102','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'团风县','','421121','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红安县','','421122','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗田县','','421123','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'英山县','','421124','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浠水县','','421125','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蕲春县','','421126','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄梅县','','421127','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麻城市','','421181','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武穴市','','421182','',1,(select c.id from city c where c.sz_code='421100'),SYSDATE);

/*==============================================================*/
/*咸宁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','421201','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'咸安区','','421202','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉鱼县','','421221','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通城县','','421222','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇阳县','','421223','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通山县','','421224','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赤壁市','','421281','',1,(select c.id from city c where c.sz_code='421200'),SYSDATE);

/*==============================================================*/
/*随州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','421301','',1,(select c.id from city c where c.sz_code='421300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曾都区','','421302','',1,(select c.id from city c where c.sz_code='421300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广水市','','421381','',1,(select c.id from city c where c.sz_code='421300'),SYSDATE);

/*==============================================================*/
/*恩施土家族苗族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'恩施市','','422801','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'利川市','','422802','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建始县','','422822','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴东县','','422823','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣恩县','','422825','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'咸丰县','','422826','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'来凤县','','422827','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤峰县','','422828','',1,(select c.id from city c where c.sz_code='422800'),SYSDATE);

/*==============================================================*/
/*省直辖行政单位                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仙桃市','','429004','',1,(select c.id from city c where c.sz_code='429000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潜江市','','429005','',1,(select c.id from city c where c.sz_code='429000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天门市','','429006','',1,(select c.id from city c where c.sz_code='429000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'神农架林区','','429021','',1,(select c.id from city c where c.sz_code='429000'),SYSDATE);

/*==============================================================*/
/*长沙市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430101','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芙蓉区','','430102','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天心区','','430103','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳麓区','','430104','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开福区','','430105','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雨花区','','430111','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长沙县','','430121','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'望城县','','430122','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁乡县','','430124','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浏阳市','','430181','',1,(select c.id from city c where c.sz_code='430100'),SYSDATE);

/*==============================================================*/
/*株洲市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430201','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荷塘区','','430202','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芦淞区','','430203','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石峰区','','430204','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天元区','','430211','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'株洲县','','430221','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'攸县','','430223','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茶陵县','','430224','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'炎陵县','','430225','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'醴陵市','','430281','',1,(select c.id from city c where c.sz_code='430200'),SYSDATE);

/*==============================================================*/
/*湘潭市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430301','',1,(select c.id from city c where c.sz_code='430300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雨湖区','','430302','',1,(select c.id from city c where c.sz_code='430300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳塘区','','430304','',1,(select c.id from city c where c.sz_code='430300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湘潭县','','430321','',1,(select c.id from city c where c.sz_code='430300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湘乡市','','430381','',1,(select c.id from city c where c.sz_code='430300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'韶山市','','430382','',1,(select c.id from city c where c.sz_code='430300'),SYSDATE);

/*==============================================================*/
/*衡阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430401','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'珠晖区','','430405','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雁峰区','','430406','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石鼓区','','430407','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒸湘区','','430408','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南岳区','','430412','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'衡阳县','','430421','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'衡南县','','430422','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'衡山县','','430423','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'衡东县','','430424','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'祁东县','','430426','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'耒阳市','','430481','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'常宁市','','430482','',1,(select c.id from city c where c.sz_code='430400'),SYSDATE);

/*==============================================================*/
/*邵阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430501','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双清区','','430502','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大祥区','','430503','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北塔区','','430511','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邵东县','','430521','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新邵县','','430522','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邵阳县','','430523','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆回县','','430524','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洞口县','','430525','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥宁县','','430527','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新宁县','','430528','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城步苗族自治县','','430529','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武冈市','','430581','',1,(select c.id from city c where c.sz_code='430500'),SYSDATE);

/*==============================================================*/
/*岳阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430601','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳阳楼区','','430602','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云溪区','','430603','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'君山区','','430611','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳阳县','','430621','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华容县','','430623','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湘阴县','','430624','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平江县','','430626','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汨罗市','','430681','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临湘市','','430682','',1,(select c.id from city c where c.sz_code='430600'),SYSDATE);

/*==============================================================*/
/*常德市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430701','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武陵区','','430702','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鼎城区','','430703','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安乡县','','430721','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉寿县','','430722','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'澧县','','430723','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临澧县','','430724','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桃源县','','430725','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石门县','','430726','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'津市市','','430781','',1,(select c.id from city c where c.sz_code='430700'),SYSDATE);

/*==============================================================*/
/*张家界市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430801','',1,(select c.id from city c where c.sz_code='430800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永定区','','430802','',1,(select c.id from city c where c.sz_code='430800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武陵源区','','430811','',1,(select c.id from city c where c.sz_code='430800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'慈利县','','430821','',1,(select c.id from city c where c.sz_code='430800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桑植县','','430822','',1,(select c.id from city c where c.sz_code='430800'),SYSDATE);

/*==============================================================*/
/*益阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','430901','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'资阳区','','430902','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赫山区','','430903','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南县','','430921','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桃江县','','430922','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安化县','','430923','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沅江市','','430981','',1,(select c.id from city c where c.sz_code='430900'),SYSDATE);

/*==============================================================*/
/*郴州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','431001','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北湖区','','431002','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苏仙区','','431003','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桂阳县','','431021','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜章县','','431022','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永兴县','','431023','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉禾县','','431024','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临武县','','431025','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汝城县','','431026','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桂东县','','431027','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安仁县','','431028','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'资兴市','','431081','',1,(select c.id from city c where c.sz_code='431000'),SYSDATE);

/*==============================================================*/
/*永州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','431101','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芝山区','','431102','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'冷水滩区','','431103','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'祁阳县','','431121','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东安县','','431122','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双牌县','','431123','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'道县','','431124','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江永县','','431125','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁远县','','431126','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓝山县','','431127','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新田县','','431128','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江华瑶族自治县','','431129','',1,(select c.id from city c where c.sz_code='431100'),SYSDATE);

/*==============================================================*/
/*怀化市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','431201','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤城区','','431202','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中方县','','431221','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沅陵县','','431222','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'辰溪县','','431223','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'溆浦县','','431224','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'会同县','','431225','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麻阳苗族自治县','','431226','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新晃侗族自治县','','431227','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芷江侗族自治县','','431228','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖州苗族侗族自治县','','431229','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通道侗族自治县','','431230','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洪江市','','431281','',1,(select c.id from city c where c.sz_code='431200'),SYSDATE);

/*==============================================================*/
/*娄底市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','431301','',1,(select c.id from city c where c.sz_code='431300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'娄星区','','431302','',1,(select c.id from city c where c.sz_code='431300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双峰县','','431321','',1,(select c.id from city c where c.sz_code='431300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新化县','','431322','',1,(select c.id from city c where c.sz_code='431300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'冷水江市','','431381','',1,(select c.id from city c where c.sz_code='431300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涟源市','','431382','',1,(select c.id from city c where c.sz_code='431300'),SYSDATE);

/*==============================================================*/
/*湘西土家族苗族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉首市','','433101','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泸溪县','','433122','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤凰县','','433123','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'花垣县','','433124','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'保靖县','','433125','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古丈县','','433126','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永顺县','','433127','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙山县','','433130','',1,(select c.id from city c where c.sz_code='433100'),SYSDATE);

/*==============================================================*/
/*广州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440101','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东山区','','440102','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荔湾区','','440103','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'越秀区','','440104','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海珠区','','440105','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天河区','','440106','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芳村区','','440107','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白云区','','440111','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄埔区','','440112','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'番禺区','','440113','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'花都区','','440114','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'增城市','','440183','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'从化市','','440184','',1,(select c.id from city c where c.sz_code='440100'),SYSDATE);

/*==============================================================*/
/*韶关市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440201','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武江区','','440203','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浈江区','','440204','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲江区','','440205','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'始兴县','','440222','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仁化县','','440224','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翁源县','','440229','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乳源瑶族自治县','','440232','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新丰县','','440233','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐昌市','','440281','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南雄市','','440282','',1,(select c.id from city c where c.sz_code='440200'),SYSDATE);

/*==============================================================*/
/*深圳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440301','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗湖区','','440303','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福田区','','440304','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南山区','','440305','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝安区','','440306','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙岗区','','440307','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐田区','','440308','',1,(select c.id from city c where c.sz_code='440300'),SYSDATE);

/*==============================================================*/
/*珠海市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440401','',1,(select c.id from city c where c.sz_code='440400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'香洲区','','440402','',1,(select c.id from city c where c.sz_code='440400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'斗门区','','440403','',1,(select c.id from city c where c.sz_code='440400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金湾区','','440404','',1,(select c.id from city c where c.sz_code='440400'),SYSDATE);

/*==============================================================*/
/*汕头市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440501','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙湖区','','440507','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金平区','','440511','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'濠江区','','440512','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潮阳区','','440513','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潮南区','','440514','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'澄海区','','440515','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南澳县','','440523','',1,(select c.id from city c where c.sz_code='440500'),SYSDATE);

/*==============================================================*/
/*佛山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440601','',1,(select c.id from city c where c.sz_code='440600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'禅城区','','440604','',1,(select c.id from city c where c.sz_code='440600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南海区','','440605','',1,(select c.id from city c where c.sz_code='440600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺德区','','440606','',1,(select c.id from city c where c.sz_code='440600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三水区','','440607','',1,(select c.id from city c where c.sz_code='440600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高明区','','440608','',1,(select c.id from city c where c.sz_code='440600'),SYSDATE);

/*==============================================================*/
/*江门市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440701','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓬江区','','440703','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江海区','','440704','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新会区','','440705','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'台山市','','440781','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开平市','','440783','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤山市','','440784','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'恩平市','','440785','',1,(select c.id from city c where c.sz_code='440700'),SYSDATE);

/*==============================================================*/
/*湛江市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440801','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赤坎区','','440802','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霞山区','','440803','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'坡头区','','440804','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麻章区','','440811','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'遂溪县','','440823','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'徐闻县','','440825','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'廉江市','','440881','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雷州市','','440882','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴川市','','440883','',1,(select c.id from city c where c.sz_code='440800'),SYSDATE);

/*==============================================================*/
/*茂名市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','440901','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茂南区','','440902','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茂港区','','440903','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'电白县','','440923','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高州市','','440981','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'化州市','','440982','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'信宜市','','440983','',1,(select c.id from city c where c.sz_code='440900'),SYSDATE);

/*==============================================================*/
/*肇庆市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441201','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'端州区','','441202','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鼎湖区','','441203','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广宁县','','441223','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'怀集县','','441224','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'封开县','','441225','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德庆县','','441226','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高要市','','441283','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'四会市','','441284','',1,(select c.id from city c where c.sz_code='441200'),SYSDATE);

/*==============================================================*/
/*惠州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441301','',1,(select c.id from city c where c.sz_code='441300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠城区','','441302','',1,(select c.id from city c where c.sz_code='441300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠阳区','','441303','',1,(select c.id from city c where c.sz_code='441300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博罗县','','441322','',1,(select c.id from city c where c.sz_code='441300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠东县','','441323','',1,(select c.id from city c where c.sz_code='441300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙门县','','441324','',1,(select c.id from city c where c.sz_code='441300'),SYSDATE);

/*==============================================================*/
/*梅州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441401','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梅江区','','441402','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梅县','','441421','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大埔县','','441422','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰顺县','','441423','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五华县','','441424','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平远县','','441426','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蕉岭县','','441427','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴宁市','','441481','',1,(select c.id from city c where c.sz_code='441400'),SYSDATE);

/*==============================================================*/
/*汕尾市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441501','',1,(select c.id from city c where c.sz_code='441500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城区','','441502','',1,(select c.id from city c where c.sz_code='441500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海丰县','','441521','',1,(select c.id from city c where c.sz_code='441500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陆河县','','441523','',1,(select c.id from city c where c.sz_code='441500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陆丰市','','441581','',1,(select c.id from city c where c.sz_code='441500'),SYSDATE);

/*==============================================================*/
/*河源市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441601','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'源城区','','441602','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'紫金县','','441621','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙川县','','441622','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连平县','','441623','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和平县','','441624','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东源县','','441625','',1,(select c.id from city c where c.sz_code='441600'),SYSDATE);

/*==============================================================*/
/*阳江市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441701','',1,(select c.id from city c where c.sz_code='441700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江城区','','441702','',1,(select c.id from city c where c.sz_code='441700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳西县','','441721','',1,(select c.id from city c where c.sz_code='441700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳东县','','441723','',1,(select c.id from city c where c.sz_code='441700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳春市','','441781','',1,(select c.id from city c where c.sz_code='441700'),SYSDATE);

/*==============================================================*/
/*清远市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','441801','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清城区','','441802','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'佛冈县','','441821','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳山县','','441823','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连山壮族瑶族自治县','','441825','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连南瑶族自治县','','441826','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清新县','','441827','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'英德市','','441881','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'连州市','','441882','',1,(select c.id from city c where c.sz_code='441800'),SYSDATE);

/*==============================================================*/
/*潮州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','445101','',1,(select c.id from city c where c.sz_code='445100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湘桥区','','445102','',1,(select c.id from city c where c.sz_code='445100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潮安县','','445121','',1,(select c.id from city c where c.sz_code='445100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'饶平县','','445122','',1,(select c.id from city c where c.sz_code='445100'),SYSDATE);

/*==============================================================*/
/*揭阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','445201','',1,(select c.id from city c where c.sz_code='445200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榕城区','','445202','',1,(select c.id from city c where c.sz_code='445200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'揭东县','','445221','',1,(select c.id from city c where c.sz_code='445200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'揭西县','','445222','',1,(select c.id from city c where c.sz_code='445200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠来县','','445224','',1,(select c.id from city c where c.sz_code='445200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普宁市','','445281','',1,(select c.id from city c where c.sz_code='445200'),SYSDATE);

/*==============================================================*/
/*云浮市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','445301','',1,(select c.id from city c where c.sz_code='445300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云城区','','445302','',1,(select c.id from city c where c.sz_code='445300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新兴县','','445321','',1,(select c.id from city c where c.sz_code='445300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郁南县','','445322','',1,(select c.id from city c where c.sz_code='445300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云安县','','445323','',1,(select c.id from city c where c.sz_code='445300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗定市','','445381','',1,(select c.id from city c where c.sz_code='445300'),SYSDATE);

/*==============================================================*/
/*南宁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450101','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴宁区','','450102','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青秀区','','450103','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江南区','','450105','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西乡塘区','','450107','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'良庆区','','450108','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邕宁区','','450109','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武鸣县','','450122','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆安县','','450123','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马山县','','450124','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上林县','','450125','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宾阳县','','450126','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'横县','','450127','',1,(select c.id from city c where c.sz_code='450100'),SYSDATE);

/*==============================================================*/
/*柳州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450201','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城中区','','450202','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鱼峰区','','450203','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柳南区','','450204','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柳北区','','450205','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柳江县','','450221','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柳城县','','450222','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹿寨县','','450223','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'融安县','','450224','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'融水苗族自治县','','450225','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三江侗族自治县','','450226','',1,(select c.id from city c where c.sz_code='450200'),SYSDATE);

/*==============================================================*/
/*桂林市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450301','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秀峰区','','450302','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'叠彩区','','450303','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'象山区','','450304','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'七星区','','450305','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雁山区','','450311','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阳朔县','','450321','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临桂县','','450322','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵川县','','450323','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'全州县','','450324','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴安县','','450325','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永福县','','450326','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灌阳县','','450327','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙胜各族自治县','','450328','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'资源县','','450329','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平乐县','','450330','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荔蒲县','','450331','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'恭城瑶族自治县','','450332','',1,(select c.id from city c where c.sz_code='450300'),SYSDATE);

/*==============================================================*/
/*梧州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450401','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万秀区','','450403','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蝶山区','','450404','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长洲区','','450405','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苍梧县','','450421','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'藤县','','450422','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒙山县','','450423','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岑溪市','','450481','',1,(select c.id from city c where c.sz_code='450400'),SYSDATE);

/*==============================================================*/
/*北海市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450501','',1,(select c.id from city c where c.sz_code='450500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海城区','','450502','',1,(select c.id from city c where c.sz_code='450500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'银海区','','450503','',1,(select c.id from city c where c.sz_code='450500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铁山港区','','450512','',1,(select c.id from city c where c.sz_code='450500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合浦县','','450521','',1,(select c.id from city c where c.sz_code='450500'),SYSDATE);

/*==============================================================*/
/*防城港市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450601','',1,(select c.id from city c where c.sz_code='450600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'港口区','','450602','',1,(select c.id from city c where c.sz_code='450600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'防城区','','450603','',1,(select c.id from city c where c.sz_code='450600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'上思县','','450621','',1,(select c.id from city c where c.sz_code='450600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东兴市','','450681','',1,(select c.id from city c where c.sz_code='450600'),SYSDATE);

/*==============================================================*/
/*钦州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450701','',1,(select c.id from city c where c.sz_code='450700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钦南区','','450702','',1,(select c.id from city c where c.sz_code='450700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钦北区','','450703','',1,(select c.id from city c where c.sz_code='450700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵山县','','450721','',1,(select c.id from city c where c.sz_code='450700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浦北县','','450722','',1,(select c.id from city c where c.sz_code='450700'),SYSDATE);

/*==============================================================*/
/*贵港市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450801','',1,(select c.id from city c where c.sz_code='450800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'港北区','','450802','',1,(select c.id from city c where c.sz_code='450800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'港南区','','450803','',1,(select c.id from city c where c.sz_code='450800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'覃塘区','','450804','',1,(select c.id from city c where c.sz_code='450800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平南县','','450821','',1,(select c.id from city c where c.sz_code='450800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桂平市','','450881','',1,(select c.id from city c where c.sz_code='450800'),SYSDATE);

/*==============================================================*/
/*玉林市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','450901','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉州区','','450902','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'容县','','450921','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陆川县','','450922','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博白县','','450923','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴业县','','450924','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北流市','','450981','',1,(select c.id from city c where c.sz_code='450900'),SYSDATE);

/*==============================================================*/
/*百色市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','451001','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'右江区','','451002','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'田阳县','','451021','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'田东县','','451022','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平果县','','451023','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德保县','','451024','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖西县','','451025','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'那坡县','','451026','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凌云县','','451027','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐业县','','451028','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'田林县','','451029','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西林县','','451030','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆林各族自治县','','451031','',1,(select c.id from city c where c.sz_code='451000'),SYSDATE);

/*==============================================================*/
/*贺州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','451101','',1,(select c.id from city c where c.sz_code='451100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'八步区','','451102','',1,(select c.id from city c where c.sz_code='451100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昭平县','','451121','',1,(select c.id from city c where c.sz_code='451100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钟山县','','451122','',1,(select c.id from city c where c.sz_code='451100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富川瑶族自治县','','451123','',1,(select c.id from city c where c.sz_code='451100'),SYSDATE);

/*==============================================================*/
/*河池市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','451201','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金城江区','','451202','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南丹县','','451221','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天峨县','','451222','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤山县','','451223','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东兰县','','451224','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗城仫佬族自治县','','451225','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'环江毛南族自治县','','451226','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴马瑶族自治县','','451227','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'都安瑶族自治县','','451228','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大化瑶族自治县','','451229','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜州市','','451281','',1,(select c.id from city c where c.sz_code='451200'),SYSDATE);

/*==============================================================*/
/*来宾市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','451301','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴宾区','','451302','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'忻城县','','451321','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'象州县','','451322','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武宣县','','451323','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金秀瑶族自治县','','451324','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合山市','','451381','',1,(select c.id from city c where c.sz_code='451300'),SYSDATE);

/*==============================================================*/
/*崇左市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','451401','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江洲区','','451402','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扶绥县','','451421','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁明县','','451422','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙州县','','451423','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大新县','','451424','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天等县','','451425','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凭祥市','','451481','',1,(select c.id from city c where c.sz_code='451400'),SYSDATE);

/*==============================================================*/
/*海口市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','460101','',1,(select c.id from city c where c.sz_code='460100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秀英区','','460105','',1,(select c.id from city c where c.sz_code='460100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙华区','','460106','',1,(select c.id from city c where c.sz_code='460100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'琼山区','','460107','',1,(select c.id from city c where c.sz_code='460100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'美兰区','','460108','',1,(select c.id from city c where c.sz_code='460100'),SYSDATE);

/*==============================================================*/
/*三亚市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','460201','',1,(select c.id from city c where c.sz_code='460200'),SYSDATE);

/*==============================================================*/
/*省直辖县级行政单位                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五指山市','','469001','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'琼海市','','469002','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'儋州市','','469003','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文昌市','','469005','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万宁市','','469006','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东方市','','469007','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定安县','','469025','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'屯昌县','','469026','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'澄迈县','','469027','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临高县','','469028','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白沙黎族自治县','','469030','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌江黎族自治县','','469031','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐东黎族自治县','','469033','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陵水黎族自治县','','469034','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'保亭黎族苗族自治县','','469035','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'琼中黎族苗族自治县','','469036','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西沙群岛','','469037','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南沙群岛','','469038','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中沙群岛的岛礁及其海域','','469039','',1,(select c.id from city c where c.sz_code='469000'),SYSDATE);

/*==============================================================*/
/*市辖区                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万州区','','500101','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涪陵区','','500102','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渝中区','','500103','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大渡口区','','500104','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江北区','','500105','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙坪坝区','','500106','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九龙坡区','','500107','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南岸区','','500108','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北碚区','','500109','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万盛区','','500110','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双桥区','','500111','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渝北区','','500112','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴南区','','500113','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黔江区','','500114','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长寿区','','500115','',1,(select c.id from city c where c.sz_code='500100'),SYSDATE);

/*==============================================================*/
/*县                                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'綦江县','','500222','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潼南县','','500223','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铜梁县','','500224','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大足县','','500225','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荣昌县','','500226','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'璧山县','','500227','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梁平县','','500228','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城口县','','500229','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丰都县','','500230','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'垫江县','','500231','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武隆县','','500232','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'忠县','','500233','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开县','','500234','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云阳县','','500235','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奉节县','','500236','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巫山县','','500237','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巫溪县','','500238','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石柱土家族自治县','','500240','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秀山土家族苗族自治县','','500241','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'酉阳土家族苗族自治县','','500242','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彭水苗族土家族自治县','','500243','',1,(select c.id from city c where c.sz_code='500200'),SYSDATE);

/*==============================================================*/
/*市                                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江津市','','500381','',1,(select c.id from city c where c.sz_code='500300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合川市','','500382','',1,(select c.id from city c where c.sz_code='500300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永川市','','500383','',1,(select c.id from city c where c.sz_code='500300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南川市','','500384','',1,(select c.id from city c where c.sz_code='500300'),SYSDATE);

/*==============================================================*/
/*成都市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510101','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'锦江区','','510104','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青羊区','','510105','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金牛区','','510106','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武侯区','','510107','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'成华区','','510108','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙泉驿区','','510112','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青白江区','','510113','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新都区','','510114','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'温江区','','510115','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金堂县','','510121','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双流县','','510122','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'郫县','','510124','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大邑县','','510129','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒲江县','','510131','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新津县','','510132','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'都江堰市','','510181','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彭州市','','510182','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邛崃市','','510183','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇州市','','510184','',1,(select c.id from city c where c.sz_code='510100'),SYSDATE);

/*==============================================================*/
/*自贡市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510301','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'自流井区','','510302','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贡井区','','510303','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大安区','','510304','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沿滩区','','510311','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荣县','','510321','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富顺县','','510322','',1,(select c.id from city c where c.sz_code='510300'),SYSDATE);

/*==============================================================*/
/*攀枝花市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510401','',1,(select c.id from city c where c.sz_code='510400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东区','','510402','',1,(select c.id from city c where c.sz_code='510400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西区','','510403','',1,(select c.id from city c where c.sz_code='510400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仁和区','','510411','',1,(select c.id from city c where c.sz_code='510400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'米易县','','510421','',1,(select c.id from city c where c.sz_code='510400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐边县','','510422','',1,(select c.id from city c where c.sz_code='510400'),SYSDATE);

/*==============================================================*/
/*泸州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510501','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江阳区','','510502','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'纳溪区','','510503','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙马潭区','','510504','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泸　县','','510521','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合江县','','510522','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'叙永县','','510524','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古蔺县','','510525','',1,(select c.id from city c where c.sz_code='510500'),SYSDATE);

/*==============================================================*/
/*德阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510601','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'旌阳区','','510603','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中江县','','510623','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗江县','','510626','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广汉市','','510681','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'什邡市','','510682','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绵竹市','','510683','',1,(select c.id from city c where c.sz_code='510600'),SYSDATE);

/*==============================================================*/
/*绵阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510701','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'涪城区','','510703','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'游仙区','','510704','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三台县','','510722','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐亭县','','510723','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安县','','510724','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梓潼县','','510725','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北川羌族自治县','','510726','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平武县','','510727','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江油市','','510781','',1,(select c.id from city c where c.sz_code='510700'),SYSDATE);

/*==============================================================*/
/*广元市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510801','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市中区','','510802','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元坝区','','510811','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'朝天区','','510812','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'旺苍县','','510821','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青川县','','510822','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'剑阁县','','510823','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'苍溪县','','510824','',1,(select c.id from city c where c.sz_code='510800'),SYSDATE);

/*==============================================================*/
/*遂宁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','510901','',1,(select c.id from city c where c.sz_code='510900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'船山区','','510903','',1,(select c.id from city c where c.sz_code='510900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安居区','','510904','',1,(select c.id from city c where c.sz_code='510900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓬溪县','','510921','',1,(select c.id from city c where c.sz_code='510900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'射洪县','','510922','',1,(select c.id from city c where c.sz_code='510900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大英县','','510923','',1,(select c.id from city c where c.sz_code='510900'),SYSDATE);

/*==============================================================*/
/*内江市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511001','',1,(select c.id from city c where c.sz_code='511000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市中区','','511002','',1,(select c.id from city c where c.sz_code='511000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东兴区','','511011','',1,(select c.id from city c where c.sz_code='511000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'威远县','','511024','',1,(select c.id from city c where c.sz_code='511000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'资中县','','511025','',1,(select c.id from city c where c.sz_code='511000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆昌县','','511028','',1,(select c.id from city c where c.sz_code='511000'),SYSDATE);

/*==============================================================*/
/*乐山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511101','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市中区','','511102','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙湾区','','511111','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五通桥区','','511112','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金口河区','','511113','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'犍为县','','511123','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'井研县','','511124','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'夹江县','','511126','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沐川县','','511129','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'峨边彝族自治县','','511132','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马边彝族自治县','','511133','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'峨眉山市','','511181','',1,(select c.id from city c where c.sz_code='511100'),SYSDATE);

/*==============================================================*/
/*南充市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511301','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'顺庆区','','511302','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高坪区','','511303','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉陵区','','511304','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南部县','','511321','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'营山县','','511322','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓬安县','','511323','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仪陇县','','511324','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西充县','','511325','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阆中市','','511381','',1,(select c.id from city c where c.sz_code='511300'),SYSDATE);

/*==============================================================*/
/*眉山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511401','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东坡区','','511402','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仁寿县','','511421','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彭山县','','511422','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洪雅县','','511423','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹棱县','','511424','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青神县','','511425','',1,(select c.id from city c where c.sz_code='511400'),SYSDATE);

/*==============================================================*/
/*宜宾市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511501','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翠屏区','','511502','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜宾县','','511521','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南溪县','','511522','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江安县','','511523','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长宁县','','511524','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高县','','511525','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'珙县','','511526','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'筠连县','','511527','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴文县','','511528','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'屏山县','','511529','',1,(select c.id from city c where c.sz_code='511500'),SYSDATE);

/*==============================================================*/
/*广安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511601','',1,(select c.id from city c where c.sz_code='511600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广安区','','511602','',1,(select c.id from city c where c.sz_code='511600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳池县','','511621','',1,(select c.id from city c where c.sz_code='511600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武胜县','','511622','',1,(select c.id from city c where c.sz_code='511600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'邻水县','','511623','',1,(select c.id from city c where c.sz_code='511600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华莹市','','511681','',1,(select c.id from city c where c.sz_code='511600'),SYSDATE);

/*==============================================================*/
/*达州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511701','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通川区','','511702','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'达县','','511721','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣汉县','','511722','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开江县','','511723','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大竹县','','511724','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渠县','','511725','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万源市','','511781','',1,(select c.id from city c where c.sz_code='511700'),SYSDATE);

/*==============================================================*/
/*雅安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511801','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雨城区','','511802','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'名山县','','511821','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荥经县','','511822','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉源县','','511823','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石棉县','','511824','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天全县','','511825','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芦山县','','511826','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝兴县','','511827','',1,(select c.id from city c where c.sz_code='511800'),SYSDATE);

/*==============================================================*/
/*巴中市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','511901','',1,(select c.id from city c where c.sz_code='511900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴州区','','511902','',1,(select c.id from city c where c.sz_code='511900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通江县','','511921','',1,(select c.id from city c where c.sz_code='511900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南江县','','511922','',1,(select c.id from city c where c.sz_code='511900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平昌县','','511923','',1,(select c.id from city c where c.sz_code='511900'),SYSDATE);

/*==============================================================*/
/*资阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','512001','',1,(select c.id from city c where c.sz_code='512000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雁江区','','512002','',1,(select c.id from city c where c.sz_code='512000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安岳县','','512021','',1,(select c.id from city c where c.sz_code='512000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐至县','','512022','',1,(select c.id from city c where c.sz_code='512000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'简阳市','','512081','',1,(select c.id from city c where c.sz_code='512000'),SYSDATE);

/*==============================================================*/
/*阿坝藏族羌族自治州                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汶川县','','513221','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'理县','','513222','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'茂县','','513223','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松潘县','','513224','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九寨沟县','','513225','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金川县','','513226','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'小金县','','513227','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黑水县','','513228','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马尔康县','','513229','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'壤塘县','','513230','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿坝县','','513231','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'若尔盖县','','513232','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红原县','','513233','',1,(select c.id from city c where c.sz_code='513200'),SYSDATE);

/*==============================================================*/
/*甘孜藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'康定县','','513321','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泸定县','','513322','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹巴县','','513323','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'九龙县','','513324','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雅江县','','513325','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'道孚县','','513326','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'炉霍县','','513327','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘孜县','','513328','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新龙县','','513329','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德格县','','513330','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白玉县','','513331','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石渠县','','513332','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'色达县','','513333','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'理塘县','','513334','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴塘县','','513335','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乡城县','','513336','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'稻城县','','513337','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'得荣县','','513338','',1,(select c.id from city c where c.sz_code='513300'),SYSDATE);

/*==============================================================*/
/*凉山彝族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西昌市','','513401','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'木里藏族自治县','','513422','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐源县','','513423','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德昌县','','513424','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'会理县','','513425','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'会东县','','513426','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁南县','','513427','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普格县','','513428','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'布拖县','','513429','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金阳县','','513430','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昭觉县','','513431','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'喜德县','','513432','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'冕宁县','','513433','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'越西县','','513434','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘洛县','','513435','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'美姑县','','513436','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雷波县','','513437','',1,(select c.id from city c where c.sz_code='513400'),SYSDATE);

/*==============================================================*/
/*贵阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','520101','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南明区','','520102','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云岩区','','520103','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'花溪区','','520111','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌当区','','520112','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白云区','','520113','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'小河区','','520114','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开阳县','','520121','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'息烽县','','520122','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'修文县','','520123','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清镇市','','520181','',1,(select c.id from city c where c.sz_code='520100'),SYSDATE);

/*==============================================================*/
/*六盘水市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'钟山区','','520201','',1,(select c.id from city c where c.sz_code='520200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'六枝特区','','520203','',1,(select c.id from city c where c.sz_code='520200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'水城县','','520221','',1,(select c.id from city c where c.sz_code='520200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盘　县','','520222','',1,(select c.id from city c where c.sz_code='520200'),SYSDATE);

/*==============================================================*/
/*遵义市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','520301','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红花岗区','','520302','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汇川区','','520303','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'遵义县','','520321','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桐梓县','','520322','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥阳县','','520323','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'正安县','','520324','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'道真仡佬族苗族自治县','','520325','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'务川仡佬族苗族自治县','','520326','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤冈县','','520327','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湄潭县','','520328','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'余庆县','','520329','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'习水县','','520330','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赤水市','','520381','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仁怀市','','520382','',1,(select c.id from city c where c.sz_code='520300'),SYSDATE);

/*==============================================================*/
/*安顺市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','520401','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西秀区','','520402','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平坝县','','520421','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普定县','','520422','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇宁布依族苗族自治县','','520423','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'关岭布依族苗族自治县','','520424','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'紫云苗族布依族自治县','','520425','',1,(select c.id from city c where c.sz_code='520400'),SYSDATE);

/*==============================================================*/
/*铜仁地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'铜仁市','','522201','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江口县','','522222','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉屏侗族自治县','','522223','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石阡县','','522224','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'思南县','','522225','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'印江土家族苗族自治县','','522226','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德江县','','522227','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沿河土家族自治县','','522228','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'松桃苗族自治县','','522229','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'万山特区','','522230','',1,(select c.id from city c where c.sz_code='522200'),SYSDATE);

/*==============================================================*/
/*黔西南布依族苗族自治州                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴义市','','522301','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴仁县','','522322','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普安县','','522323','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'晴隆县','','522324','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贞丰县','','522325','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'望谟县','','522326','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'册亨县','','522327','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安龙县','','522328','',1,(select c.id from city c where c.sz_code='522300'),SYSDATE);

/*==============================================================*/
/*毕节地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'毕节市','','522401','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大方县','','522422','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黔西县','','522423','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金沙县','','522424','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'织金县','','522425','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'纳雍县','','522426','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'威宁彝族回族苗族自治县','','522427','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'赫章县','','522428','',1,(select c.id from city c where c.sz_code='522400'),SYSDATE);

/*==============================================================*/
/*黔东南苗族侗族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凯里市','','522601','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄平县','','522622','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'施秉县','','522623','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三穗县','','522624','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇远县','','522625','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岑巩县','','522626','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天柱县','','522627','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'锦屏县','','522628','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'剑河县','','522629','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'台江县','','522630','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黎平县','','522631','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榕江县','','522632','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'从江县','','522633','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雷山县','','522634','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麻江县','','522635','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹寨县','','522636','',1,(select c.id from city c where c.sz_code='522600'),SYSDATE);

/*==============================================================*/
/*黔南布依族苗族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'都匀市','','522701','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福泉市','','522702','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'荔波县','','522722','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贵定县','','522723','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瓮安县','','522725','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'独山县','','522726','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平塘县','','522727','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗甸县','','522728','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长顺县','','522729','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙里县','','522730','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠水县','','522731','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三都水族自治县','','522732','',1,(select c.id from city c where c.sz_code='522700'),SYSDATE);

/*==============================================================*/
/*昆明市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530101','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五华区','','530102','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盘龙区','','530103','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'官渡区','','530111','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西山区','','530112','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东川区','','530113','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'呈贡县','','530121','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'晋宁县','','530122','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富民县','','530124','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜良县','','530125','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石林彝族自治县','','530126','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嵩明县','','530127','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'禄劝彝族苗族自治县','','530128','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'寻甸回族彝族自治县','','530129','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安宁市','','530181','',1,(select c.id from city c where c.sz_code='530100'),SYSDATE);

/*==============================================================*/
/*曲靖市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530301','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麒麟区','','530302','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马龙县','','530321','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陆良县','','530322','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'师宗县','','530323','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'罗平县','','530324','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富源县','','530325','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'会泽县','','530326','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沾益县','','530328','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宣威市','','530381','',1,(select c.id from city c where c.sz_code='530300'),SYSDATE);

/*==============================================================*/
/*玉溪市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530401','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红塔区','','530402','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江川县','','530421','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'澄江县','','530422','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通海县','','530423','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华宁县','','530424','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'易门县','','530425','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'峨山彝族自治县','','530426','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新平彝族傣族自治县','','530427','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元江哈尼族彝族傣族自治县','','530428','',1,(select c.id from city c where c.sz_code='530400'),SYSDATE);

/*==============================================================*/
/*保山市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530501','',1,(select c.id from city c where c.sz_code='530500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆阳区','','530502','',1,(select c.id from city c where c.sz_code='530500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'施甸县','','530521','',1,(select c.id from city c where c.sz_code='530500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'腾冲县','','530522','',1,(select c.id from city c where c.sz_code='530500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'龙陵县','','530523','',1,(select c.id from city c where c.sz_code='530500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌宁县','','530524','',1,(select c.id from city c where c.sz_code='530500'),SYSDATE);

/*==============================================================*/
/*昭通市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530601','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昭阳区','','530602','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鲁甸县','','530621','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巧家县','','530622','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐津县','','530623','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大关县','','530624','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永善县','','530625','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥江县','','530626','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇雄县','','530627','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彝良县','','530628','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'威信县','','530629','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'水富县','','530630','',1,(select c.id from city c where c.sz_code='530600'),SYSDATE);

/*==============================================================*/
/*丽江市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530701','',1,(select c.id from city c where c.sz_code='530700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古城区','','530702','',1,(select c.id from city c where c.sz_code='530700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉龙纳西族自治县','','530721','',1,(select c.id from city c where c.sz_code='530700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永胜县','','530722','',1,(select c.id from city c where c.sz_code='530700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华坪县','','530723','',1,(select c.id from city c where c.sz_code='530700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁蒗彝族自治县','','530724','',1,(select c.id from city c where c.sz_code='530700'),SYSDATE);

/*==============================================================*/
/*思茅市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530801','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'翠云区','','530802','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普洱哈尼族彝族自治县','','530821','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'墨江哈尼族自治县','','530822','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'景东彝族自治县','','530823','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'景谷傣族彝族自治县','','530824','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇沅彝族哈尼族拉祜族自治县','','530825','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江城哈尼族彝族自治县','','530826','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'孟连傣族拉祜族佤族自治县','','530827','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'澜沧拉祜族自治县','','530828','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西盟佤族自治县','','530829','',1,(select c.id from city c where c.sz_code='530800'),SYSDATE);

/*==============================================================*/
/*临沧市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','530901','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临翔区','','530902','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤庆县','','530921','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云县','','530922','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永德县','','530923','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇康县','','530924','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双江拉祜族佤族布朗族傣族自治县','','530925','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'耿马傣族佤族自治县','','530926','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沧源佤族自治县','','530927','',1,(select c.id from city c where c.sz_code='530900'),SYSDATE);

/*==============================================================*/
/*楚雄彝族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'楚雄市','','532301','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'双柏县','','532322','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'牟定县','','532323','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南华县','','532324','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'姚安县','','532325','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大姚县','','532326','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永仁县','','532327','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元谋县','','532328','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武定县','','532329','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'禄丰县','','532331','',1,(select c.id from city c where c.sz_code='532300'),SYSDATE);

/*==============================================================*/
/*红河哈尼族彝族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'个旧市','','532501','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'开远市','','532502','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒙自县','','532522','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'屏边苗族自治县','','532523','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'建水县','','532524','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石屏县','','532525','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'弥勒县','','532526','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泸西县','','532527','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'元阳县','','532528','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红河县','','532529','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金平苗族瑶族傣族自治县','','532530','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绿春县','','532531','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河口瑶族自治县','','532532','',1,(select c.id from city c where c.sz_code='532500'),SYSDATE);

/*==============================================================*/
/*文山壮族苗族自治州                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文山县','','532621','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'砚山县','','532622','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西畴县','','532623','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麻栗坡县','','532624','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'马关县','','532625','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丘北县','','532626','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广南县','','532627','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富宁县','','532628','',1,(select c.id from city c where c.sz_code='532600'),SYSDATE);

/*==============================================================*/
/*西双版纳傣族自治州                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'景洪市','','532801','',1,(select c.id from city c where c.sz_code='532800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'勐海县','','532822','',1,(select c.id from city c where c.sz_code='532800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'勐腊县','','532823','',1,(select c.id from city c where c.sz_code='532800'),SYSDATE);

/*==============================================================*/
/*大理白族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大理市','','532901','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'漾濞彝族自治县','','532922','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'祥云县','','532923','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宾川县','','532924','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'弥渡县','','532925','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南涧彝族自治县','','532926','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巍山彝族回族自治县','','532927','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永平县','','532928','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'云龙县','','532929','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洱源县','','532930','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'剑川县','','532931','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鹤庆县','','532932','',1,(select c.id from city c where c.sz_code='532900'),SYSDATE);

/*==============================================================*/
/*德宏傣族景颇族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'瑞丽市','','533102','',1,(select c.id from city c where c.sz_code='533100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潞西市','','533103','',1,(select c.id from city c where c.sz_code='533100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'梁河县','','533122','',1,(select c.id from city c where c.sz_code='533100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盈江县','','533123','',1,(select c.id from city c where c.sz_code='533100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陇川县','','533124','',1,(select c.id from city c where c.sz_code='533100'),SYSDATE);

/*==============================================================*/
/*怒江傈僳族自治州                                              */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泸水县','','533321','',1,(select c.id from city c where c.sz_code='533300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福贡县','','533323','',1,(select c.id from city c where c.sz_code='533300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贡山独龙族怒族自治县','','533324','',1,(select c.id from city c where c.sz_code='533300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兰坪白族普米族自治县','','533325','',1,(select c.id from city c where c.sz_code='533300'),SYSDATE);

/*==============================================================*/
/*迪庆藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'香格里拉县','','533421','',1,(select c.id from city c where c.sz_code='533400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德钦县','','533422','',1,(select c.id from city c where c.sz_code='533400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'维西傈僳族自治县','','533423','',1,(select c.id from city c where c.sz_code='533400'),SYSDATE);

/*==============================================================*/
/*拉萨市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','540101','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城关区','','540102','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'林周县','','540121','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'当雄县','','540122','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尼木县','','540123','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲水县','','540124','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'堆龙德庆县','','540125','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'达孜县','','540126','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'墨竹工卡县','','540127','',1,(select c.id from city c where c.sz_code='540100'),SYSDATE);

/*==============================================================*/
/*昌都地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌都县','','542121','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江达县','','542122','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贡觉县','','542123','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'类乌齐县','','542124','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丁青县','','542125','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'察雅县','','542126','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'八宿县','','542127','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'左贡县','','542128','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'芒康县','','542129','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛隆县','','542132','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'边坝县','','542133','',1,(select c.id from city c where c.sz_code='542100'),SYSDATE);

/*==============================================================*/
/*山南地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乃东县','','542221','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扎囊县','','542222','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贡嘎县','','542223','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'桑日县','','542224','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'琼结县','','542225','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲松县','','542226','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'措美县','','542227','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛扎县','','542228','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'加查县','','542229','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆子县','','542231','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'错那县','','542232','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'浪卡子县','','542233','',1,(select c.id from city c where c.sz_code='542200'),SYSDATE);

/*==============================================================*/
/*日喀则地区                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'日喀则市','','542301','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南木林县','','542322','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'江孜县','','542323','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定日县','','542324','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'萨迦县','','542325','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'拉孜县','','542326','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昂仁县','','542327','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'谢通门县','','542328','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白朗县','','542329','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仁布县','','542330','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'康马县','','542331','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定结县','','542332','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'仲巴县','','542333','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'亚东县','','542334','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉隆县','','542335','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'聂拉木县','','542336','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'萨嘎县','','542337','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岗巴县','','542338','',1,(select c.id from city c where c.sz_code='542300'),SYSDATE);

/*==============================================================*/
/*那曲地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'那曲县','','542421','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'嘉黎县','','542422','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'比如县','','542423','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'聂荣县','','542424','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安多县','','542425','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'申扎县','','542426','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'索县','','542427','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'班戈县','','542428','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴青县','','542429','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尼玛县','','542430','',1,(select c.id from city c where c.sz_code='542400'),SYSDATE);

/*==============================================================*/
/*阿里地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'普兰县','','542521','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'札达县','','542522','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'噶尔县','','542523','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'日土县','','542524','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'革吉县','','542525','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'改则县','','542526','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'措勤县','','542527','',1,(select c.id from city c where c.sz_code='542500'),SYSDATE);

/*==============================================================*/
/*林芝地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'林芝县','','542621','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'工布江达县','','542622','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'米林县','','542623','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'墨脱县','','542624','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'波密县','','542625','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'察隅县','','542626','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'朗县','','542627','',1,(select c.id from city c where c.sz_code='542600'),SYSDATE);

/*==============================================================*/
/*西安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610101','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新城区','','610102','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'碑林区','','610103','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莲湖区','','610104','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灞桥区','','610111','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'未央区','','610112','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'雁塔区','','610113','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阎良区','','610114','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临潼区','','610115','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长安区','','610116','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蓝田县','','610122','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'周至县','','610124','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'户县','','610125','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高陵县','','610126','',1,(select c.id from city c where c.sz_code='610100'),SYSDATE);

/*==============================================================*/
/*铜川市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610201','',1,(select c.id from city c where c.sz_code='610200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'王益区','','610202','',1,(select c.id from city c where c.sz_code='610200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'印台区','','610203','',1,(select c.id from city c where c.sz_code='610200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'耀州区','','610204','',1,(select c.id from city c where c.sz_code='610200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜君县','','610222','',1,(select c.id from city c where c.sz_code='610200'),SYSDATE);

/*==============================================================*/
/*宝鸡市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610301','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渭滨区','','610302','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金台区','','610303','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陈仓区','','610304','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤翔县','','610322','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岐山县','','610323','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'扶风县','','610324','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'眉县','','610326','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陇县','','610327','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'千阳县','','610328','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麟游县','','610329','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凤县','','610330','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'太白县','','610331','',1,(select c.id from city c where c.sz_code='610300'),SYSDATE);

/*==============================================================*/
/*咸阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610401','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秦都区','','610402','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杨凌区','','610403','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渭城区','','610404','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'三原县','','610422','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泾阳县','','610423','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乾县','','610424','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'礼泉县','','610425','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永寿县','','610426','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彬县','','610427','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'长武县','','610428','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'旬邑县','','610429','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'淳化县','','610430','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武功县','','610431','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴平市','','610481','',1,(select c.id from city c where c.sz_code='610400'),SYSDATE);

/*==============================================================*/
/*渭南市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610501','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临渭区','','610502','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华县','','610521','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'潼关县','','610522','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大荔县','','610523','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合阳县','','610524','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'澄城县','','610525','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'蒲城县','','610526','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白水县','','610527','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富平县','','610528','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'韩城市','','610581','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华阴市','','610582','',1,(select c.id from city c where c.sz_code='610500'),SYSDATE);

/*==============================================================*/
/*延安市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610601','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宝塔区','','610602','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延长县','','610621','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'延川县','','610622','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'子长县','','610623','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安塞县','','610624','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'志丹县','','610625','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴旗县','','610626','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘泉县','','610627','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富县','','610628','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛川县','','610629','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宜川县','','610630','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄龙县','','610631','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'黄陵县','','610632','',1,(select c.id from city c where c.sz_code='610600'),SYSDATE);

/*==============================================================*/
/*汉中市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610701','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉台区','','610702','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'南郑县','','610721','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城固县','','610722','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洋县','','610723','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西乡县','','610724','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'勉县','','610725','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁强县','','610726','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'略阳县','','610727','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇巴县','','610728','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'留坝县','','610729','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'佛坪县','','610730','',1,(select c.id from city c where c.sz_code='610700'),SYSDATE);

/*==============================================================*/
/*榆林市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610801','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榆阳区','','610802','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'神木县','','610821','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'府谷县','','610822','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'横山县','','610823','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖边县','','610824','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'定边县','','610825','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'绥德县','','610826','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'米脂县','','610827','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'佳县','','610828','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吴堡县','','610829','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清涧县','','610830','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'子洲县','','610831','',1,(select c.id from city c where c.sz_code='610800'),SYSDATE);

/*==============================================================*/
/*安康市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','610901','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉滨区','','610902','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'汉阴县','','610921','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石泉县','','610922','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁陕县','','610923','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'紫阳县','','610924','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岚皋县','','610925','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平利县','','610926','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇坪县','','610927','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'旬阳县','','610928','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白河县','','610929','',1,(select c.id from city c where c.sz_code='610900'),SYSDATE);

/*==============================================================*/
/*商洛市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','611001','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'商州区','','611002','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛南县','','611021','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'丹凤县','','611022','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'商南县','','611023','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山阳县','','611024','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇安县','','611025','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柞水县','','611026','',1,(select c.id from city c where c.sz_code='611000'),SYSDATE);

/*==============================================================*/
/*兰州市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620101','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城关区','','620102','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'七里河区','','620103','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西固区','','620104','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安宁区','','620105','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'红古区','','620111','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永登县','','620121','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'皋兰县','','620122','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'榆中县','','620123','',1,(select c.id from city c where c.sz_code='620100'),SYSDATE);

/*==============================================================*/
/*嘉峪关市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620201','',1,(select c.id from city c where c.sz_code='620200'),SYSDATE);

/*==============================================================*/
/*金昌市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620301','',1,(select c.id from city c where c.sz_code='620300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金川区','','620302','',1,(select c.id from city c where c.sz_code='620300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永昌县','','620321','',1,(select c.id from city c where c.sz_code='620300'),SYSDATE);

/*==============================================================*/
/*白银市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620401','',1,(select c.id from city c where c.sz_code='620400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白银区','','620402','',1,(select c.id from city c where c.sz_code='620400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平川区','','620403','',1,(select c.id from city c where c.sz_code='620400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'靖远县','','620421','',1,(select c.id from city c where c.sz_code='620400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'会宁县','','620422','',1,(select c.id from city c where c.sz_code='620400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'景泰县','','620423','',1,(select c.id from city c where c.sz_code='620400'),SYSDATE);

/*==============================================================*/
/*天水市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620501','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秦城区','','620502','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'北道区','','620503','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'清水县','','620521','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'秦安县','','620522','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘谷县','','620523','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武山县','','620524','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'张家川回族自治县','','620525','',1,(select c.id from city c where c.sz_code='620500'),SYSDATE);

/*==============================================================*/
/*武威市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620601','',1,(select c.id from city c where c.sz_code='620600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'凉州区','','620602','',1,(select c.id from city c where c.sz_code='620600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'民勤县','','620621','',1,(select c.id from city c where c.sz_code='620600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'古浪县','','620622','',1,(select c.id from city c where c.sz_code='620600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天祝藏族自治县','','620623','',1,(select c.id from city c where c.sz_code='620600'),SYSDATE);

/*==============================================================*/
/*张掖市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620701','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘州区','','620702','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肃南裕固族自治县','','620721','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'民乐县','','620722','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临泽县','','620723','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'高台县','','620724','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'山丹县','','620725','',1,(select c.id from city c where c.sz_code='620700'),SYSDATE);

/*==============================================================*/
/*平凉市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620801','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崆峒区','','620802','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泾川县','','620821','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵台县','','620822','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'崇信县','','620823','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华亭县','','620824','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庄浪县','','620825','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'静宁县','','620826','',1,(select c.id from city c where c.sz_code='620800'),SYSDATE);

/*==============================================================*/
/*酒泉市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','620901','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肃州区','','620902','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金塔县','','620921','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安西县','','620922','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'肃北蒙古族自治县','','620923','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿克塞哈萨克族自治县','','620924','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉门市','','620981','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'敦煌市','','620982','',1,(select c.id from city c where c.sz_code='620900'),SYSDATE);

/*==============================================================*/
/*庆阳市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','621001','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西峰区','','621002','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'庆城县','','621021','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'环县','','621022','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'华池县','','621023','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合水县','','621024','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'正宁县','','621025','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宁　县','','621026','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'镇原县','','621027','',1,(select c.id from city c where c.sz_code='621000'),SYSDATE);

/*==============================================================*/
/*定西市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','621101','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'安定区','','621102','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'通渭县','','621121','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'陇西县','','621122','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'渭源县','','621123','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临洮县','','621124','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'漳县','','621125','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岷县','','621126','',1,(select c.id from city c where c.sz_code='621100'),SYSDATE);

/*==============================================================*/
/*陇南市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','621201','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'武都区','','621202','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'成县','','621221','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'文县','','621222','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'宕昌县','','621223','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'康县','','621224','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西和县','','621225','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'礼县','','621226','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'徽县','','621227','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'两当县','','621228','',1,(select c.id from city c where c.sz_code='621200'),SYSDATE);

/*==============================================================*/
/*临夏回族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临夏市','','622901','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临夏县','','622921','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'康乐县','','622922','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永靖县','','622923','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'广河县','','622924','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和政县','','622925','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东乡族自治县','','622926','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'积石山保安族东乡族撒拉族自治县','','622927','',1,(select c.id from city c where c.sz_code='622900'),SYSDATE);

/*==============================================================*/
/*甘南藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'合作市','','623001','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'临潭县','','623021','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'卓尼县','','623022','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'舟曲县','','623023','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'迭部县','','623024','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玛曲县','','623025','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'碌曲县','','623026','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'夏河县','','623027','',1,(select c.id from city c where c.sz_code='623000'),SYSDATE);

/*==============================================================*/
/*西宁市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','630101','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城东区','','630102','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城中区','','630103','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城西区','','630104','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'城北区','','630105','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大通回族土族自治县','','630121','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湟中县','','630122','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'湟源县','','630123','',1,(select c.id from city c where c.sz_code='630100'),SYSDATE);

/*==============================================================*/
/*海东地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平安县','','632121','',1,(select c.id from city c where c.sz_code='632100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'民和回族土族自治县','','632122','',1,(select c.id from city c where c.sz_code='632100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乐都县','','632123','',1,(select c.id from city c where c.sz_code='632100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'互助土族自治县','','632126','',1,(select c.id from city c where c.sz_code='632100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'化隆回族自治县','','632127','',1,(select c.id from city c where c.sz_code='632100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'循化撒拉族自治县','','632128','',1,(select c.id from city c where c.sz_code='632100'),SYSDATE);

/*==============================================================*/
/*海北藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'门源回族自治县','','632221','',1,(select c.id from city c where c.sz_code='632200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'祁连县','','632222','',1,(select c.id from city c where c.sz_code='632200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海晏县','','632223','',1,(select c.id from city c where c.sz_code='632200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'刚察县','','632224','',1,(select c.id from city c where c.sz_code='632200'),SYSDATE);

/*==============================================================*/
/*黄南藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'同仁县','','632321','',1,(select c.id from city c where c.sz_code='632300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尖扎县','','632322','',1,(select c.id from city c where c.sz_code='632300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泽库县','','632323','',1,(select c.id from city c where c.sz_code='632300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'河南蒙古族自治县','','632324','',1,(select c.id from city c where c.sz_code='632300'),SYSDATE);

/*==============================================================*/
/*海南藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'共和县','','632521','',1,(select c.id from city c where c.sz_code='632500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'同德县','','632522','',1,(select c.id from city c where c.sz_code='632500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贵德县','','632523','',1,(select c.id from city c where c.sz_code='632500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴海县','','632524','',1,(select c.id from city c where c.sz_code='632500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贵南县','','632525','',1,(select c.id from city c where c.sz_code='632500'),SYSDATE);

/*==============================================================*/
/*果洛藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玛沁县','','632621','',1,(select c.id from city c where c.sz_code='632600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'班玛县','','632622','',1,(select c.id from city c where c.sz_code='632600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'甘德县','','632623','',1,(select c.id from city c where c.sz_code='632600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'达日县','','632624','',1,(select c.id from city c where c.sz_code='632600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'久治县','','632625','',1,(select c.id from city c where c.sz_code='632600'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玛多县','','632626','',1,(select c.id from city c where c.sz_code='632600'),SYSDATE);

/*==============================================================*/
/*玉树藏族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玉树县','','632721','',1,(select c.id from city c where c.sz_code='632700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'杂多县','','632722','',1,(select c.id from city c where c.sz_code='632700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'称多县','','632723','',1,(select c.id from city c where c.sz_code='632700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'治多县','','632724','',1,(select c.id from city c where c.sz_code='632700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'囊谦县','','632725','',1,(select c.id from city c where c.sz_code='632700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'曲麻莱县','','632726','',1,(select c.id from city c where c.sz_code='632700'),SYSDATE);

/*==============================================================*/
/*海西蒙古族藏族自治州                                          */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'格尔木市','','632801','',1,(select c.id from city c where c.sz_code='632800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'德令哈市','','632802','',1,(select c.id from city c where c.sz_code='632800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌兰县','','632821','',1,(select c.id from city c where c.sz_code='632800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'都兰县','','632822','',1,(select c.id from city c where c.sz_code='632800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天峻县','','632823','',1,(select c.id from city c where c.sz_code='632800'),SYSDATE);

/*==============================================================*/
/*银川市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','640101','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'兴庆区','','640104','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西夏区','','640105','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'金凤区','','640106','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'永宁县','','640121','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'贺兰县','','640122','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'灵武市','','640181','',1,(select c.id from city c where c.sz_code='640100'),SYSDATE);

/*==============================================================*/
/*石嘴山市                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','640201','',1,(select c.id from city c where c.sz_code='640200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'大武口区','','640202','',1,(select c.id from city c where c.sz_code='640200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'惠农区','','640205','',1,(select c.id from city c where c.sz_code='640200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'平罗县','','640221','',1,(select c.id from city c where c.sz_code='640200'),SYSDATE);

/*==============================================================*/
/*吴忠市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','640301','',1,(select c.id from city c where c.sz_code='640300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'利通区','','640302','',1,(select c.id from city c where c.sz_code='640300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'盐池县','','640323','',1,(select c.id from city c where c.sz_code='640300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'同心县','','640324','',1,(select c.id from city c where c.sz_code='640300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青铜峡市','','640381','',1,(select c.id from city c where c.sz_code='640300'),SYSDATE);

/*==============================================================*/
/*固原市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','640401','',1,(select c.id from city c where c.sz_code='640400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'原州区','','640402','',1,(select c.id from city c where c.sz_code='640400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'西吉县','','640422','',1,(select c.id from city c where c.sz_code='640400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'隆德县','','640423','',1,(select c.id from city c where c.sz_code='640400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泾源县','','640424','',1,(select c.id from city c where c.sz_code='640400'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'彭阳县','','640425','',1,(select c.id from city c where c.sz_code='640400'),SYSDATE);

/*==============================================================*/
/*中卫市                                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','640501','',1,(select c.id from city c where c.sz_code='640500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙坡头区','','640502','',1,(select c.id from city c where c.sz_code='640500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'中宁县','','640521','',1,(select c.id from city c where c.sz_code='640500'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'海原县','','640522','',1,(select c.id from city c where c.sz_code='640500'),SYSDATE);

/*==============================================================*/
/*乌鲁木齐市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','650101','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'天山区','','650102','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙依巴克区','','650103','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新市区','','650104','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'水磨沟区','','650105','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'头屯河区','','650106','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'达坂城区','','650107','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'东山区','','650108','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌鲁木齐县','','650121','',1,(select c.id from city c where c.sz_code='650100'),SYSDATE);

/*==============================================================*/
/*克拉玛依市                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'市辖区','','650201','',1,(select c.id from city c where c.sz_code='650200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'独山子区','','650202','',1,(select c.id from city c where c.sz_code='650200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'克拉玛依区','','650203','',1,(select c.id from city c where c.sz_code='650200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'白碱滩区','','650204','',1,(select c.id from city c where c.sz_code='650200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌尔禾区','','650205','',1,(select c.id from city c where c.sz_code='650200'),SYSDATE);

/*==============================================================*/
/*吐鲁番地区                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吐鲁番市','','652101','',1,(select c.id from city c where c.sz_code='652100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'鄯善县','','652122','',1,(select c.id from city c where c.sz_code='652100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'托克逊县','','652123','',1,(select c.id from city c where c.sz_code='652100'),SYSDATE);

/*==============================================================*/
/*哈密地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'哈密市','','652201','',1,(select c.id from city c where c.sz_code='652200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴里坤哈萨克自治县','','652222','',1,(select c.id from city c where c.sz_code='652200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊吾县','','652223','',1,(select c.id from city c where c.sz_code='652200'),SYSDATE);

/*==============================================================*/
/*昌吉回族自治州                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昌吉市','','652301','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阜康市','','652302','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'米泉市','','652303','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'呼图壁县','','652323','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'玛纳斯县','','652324','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奇台县','','652325','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉木萨尔县','','652327','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'木垒哈萨克自治县','','652328','',1,(select c.id from city c where c.sz_code='652300'),SYSDATE);

/*==============================================================*/
/*博尔塔拉蒙古自治州                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博乐市','','652701','',1,(select c.id from city c where c.sz_code='652700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'精河县','','652722','',1,(select c.id from city c where c.sz_code='652700'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'温泉县','','652723','',1,(select c.id from city c where c.sz_code='652700'),SYSDATE);

/*==============================================================*/
/*巴音郭楞蒙古自治州                                            */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'库尔勒市','','652801','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'轮台县','','652822','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尉犁县','','652823','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'若羌县','','652824','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'且末县','','652825','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'焉耆回族自治县','','652826','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和静县','','652827','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和硕县','','652828','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'博湖县','','652829','',1,(select c.id from city c where c.sz_code='652800'),SYSDATE);

/*==============================================================*/
/*阿克苏地区                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿克苏市','','652901','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'温宿县','','652922','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'库车县','','652923','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙雅县','','652924','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新和县','','652925','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'拜城县','','652926','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌什县','','652927','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿瓦提县','','652928','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'柯坪县','','652929','',1,(select c.id from city c where c.sz_code='652900'),SYSDATE);

/*==============================================================*/
/*克孜勒苏柯尔克孜自治州                                        */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿图什市','','653001','',1,(select c.id from city c where c.sz_code='653000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿克陶县','','653022','',1,(select c.id from city c where c.sz_code='653000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿合奇县','','653023','',1,(select c.id from city c where c.sz_code='653000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌恰县','','653024','',1,(select c.id from city c where c.sz_code='653000'),SYSDATE);

/*==============================================================*/
/*喀什地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'喀什市','','653101','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'疏附县','','653121','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'疏勒县','','653122','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'英吉沙县','','653123','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'泽普县','','653124','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'莎车县','','653125','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'叶城县','','653126','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'麦盖提县','','653127','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'岳普湖县','','653128','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伽师县','','653129','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巴楚县','','653130','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'塔什库尔干塔吉克自治县','','653131','',1,(select c.id from city c where c.sz_code='653100'),SYSDATE);

/*==============================================================*/
/*和田地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和田市','','653201','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和田县','','653221','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'墨玉县','','653222','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'皮山县','','653223','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'洛浦县','','653224','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'策勒县','','653225','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'于田县','','653226','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'民丰县','','653227','',1,(select c.id from city c where c.sz_code='653200'),SYSDATE);

/*==============================================================*/
/*伊犁哈萨克自治州                                              */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊宁市','','654002','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'奎屯市','','654003','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'伊宁县','','654021','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'察布查尔锡伯自治县','','654022','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'霍城县','','654023','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'巩留县','','654024','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'新源县','','654025','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'昭苏县','','654026','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'特克斯县','','654027','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'尼勒克县','','654028','',1,(select c.id from city c where c.sz_code='654000'),SYSDATE);

/*==============================================================*/
/*塔城地区                                                      */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'塔城市','','654201','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'乌苏市','','654202','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'额敏县','','654221','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'沙湾县','','654223','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'托里县','','654224','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'裕民县','','654225','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'和布克赛尔蒙古自治县','','654226','',1,(select c.id from city c where c.sz_code='654200'),SYSDATE);

/*==============================================================*/
/*阿勒泰地区                                                    */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿勒泰市','','654301','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'布尔津县','','654321','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'富蕴县','','654322','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'福海县','','654323','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'哈巴河县','','654324','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'青河县','','654325','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'吉木乃县','','654326','',1,(select c.id from city c where c.sz_code='654300'),SYSDATE);

/*==============================================================*/
/*省直辖行政单位                                                */
/*==============================================================*/
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'石河子市','','659001','',1,(select c.id from city c where c.sz_code='659000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'阿拉尔市','','659002','',1,(select c.id from city c where c.sz_code='659000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'图木舒克市','','659003','',1,(select c.id from city c where c.sz_code='659000'),SYSDATE);
INSERT INTO AREA(ID,NAME,ROME,SZ_CODE,ZM_CODE,STATE,CITY_ID,VERSION) VALUES((select SYS_guid()from dual),'五家渠市','','659004','',1,(select c.id from city c where c.sz_code='659000'),SYSDATE);
