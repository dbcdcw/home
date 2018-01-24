/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/1/24 21:20:57                           */
/*==============================================================*/


drop index IDX_L_ATTRS_DEFIN_PARENTID;

drop table T_LAYOUT_ATTRIBUTES_DEFINITION cascade constraints;

/*==============================================================*/
/* Table: T_LAYOUT_ATTRIBUTES_DEFINITION                        */
/*==============================================================*/
create table T_LAYOUT_ATTRIBUTES_DEFINITION 
(
   ID                   NUMBER(19)           not null,
   ND_CODE              VARCHAR2(20)         not null,
   ND_NAME              VARCHAR2(50)         not null,
   ND_TYPE              VARCHAR2(10)         not null,
   PARENT_ID            NUMBER(19),
   VERSION              NUMBER(5)            default 1 not null,
   COMPONENT_TYPE       VARCHAR2(2),
   ATTRIBUTE_NAME       VARCHAR2(20),
   ATTRIBUTE_DEFAULT    VARCHAR2(20),
   ATTRIBUTE_TYPE       VARCHAR2(2),
   FD_NAME              VARCHAR2(50),
   CREATOR              VARCHAR2(50)         not null,
   CREATE_TIME          TIMESTAMP            not null,
   MODIFIER             VARCHAR2(50),
   UPDATE_TIME          TIMESTAMP,
   constraint PK_T_LAYOUT_ATTRIBUTES_DEFINIT primary key (ID)
);

comment on table T_LAYOUT_ATTRIBUTES_DEFINITION is
'组件属性定义表';

/*==============================================================*/
/* Index: IDX_L_ATTRS_DEFIN_PARENTID                            */
/*==============================================================*/
create index IDX_L_ATTRS_DEFIN_PARENTID on T_LAYOUT_ATTRIBUTES_DEFINITION (
   PARENT_ID ASC
);

