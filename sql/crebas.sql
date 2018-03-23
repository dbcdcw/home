/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/3/21 10:22:55                           */
/*==============================================================*/


drop table T_LAYOUT_STRING_TO_METHOD cascade constraints;

/*==============================================================*/
/* Table: T_LAYOUT_STRING_TO_METHOD                             */
/*==============================================================*/
create table T_LAYOUT_STRING_TO_METHOD 
(
   ID                   NUMBER(19)           not null,
   ND_CODE              VARCHAR2(20)         not null,
   ND_NAME              VARCHAR2(50)         not null,
   ND_TYPE              VARCHAR2(10)         not null,
   PARENT_ID            NUMBER(19),
   CREATOR              VARCHAR2(50)         not null,
   CREATE_TIME          TIMESTAMP            not null,
   MODIFIER             VARCHAR2(50),
   UPDATE_TIME          TIMESTAMP,
   COMPONENT_TYPE       VARCHAR2(3),
   TYPE                 VARCHAR2(50),
   STRING_VALUE         VARCHAR2(50),
   TIGGER_NAME          VARCHAR2(50),
   constraint PK_T_LAYOUT_STRING_TO_METHOD primary key (ID)
);

comment on table T_LAYOUT_STRING_TO_METHOD is
'字符串值转方法';

