/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/2/1 17:42:15                            */
/*==============================================================*/


drop index IDX_T_LAYOUT_DS_PARENTID;

drop table T_LAYOUT_DATA_SOURSE cascade constraints;

/*==============================================================*/
/* Table: T_LAYOUT_DATA_SOURSE                                  */
/*==============================================================*/
create table T_LAYOUT_DATA_SOURSE 
(
   ID                   NUMBER(19)           not null,
   ND_CODE              VARCHAR2(20)         not null,
   ND_NAME              VARCHAR2(50)         not null,
   ND_TYPE              VARCHAR2(10)         not null,
   PARENT_ID            NUMBER(19),
   DATA_SOURSE_NAME     VARCHAR2(4000),
   BIND_ND_CODE         VARCHAR2(4000),
   constraint PK_T_LAYOUT_DATA_SOURSE primary key (ID)
);

comment on table T_LAYOUT_DATA_SOURSE is
'布局数据源表';

/*==============================================================*/
/* Index: IDX_T_LAYOUT_DS_PARENTID                              */
/*==============================================================*/
create index IDX_T_LAYOUT_DS_PARENTID on T_LAYOUT_DATA_SOURSE (
   PARENT_ID ASC
);

