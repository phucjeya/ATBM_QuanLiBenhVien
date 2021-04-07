--------------------------------------------------------
--  File created - Wednesday-April-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$COL_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
MD_COL_NAME VARCHAR2(384),
MD_COL_NUM NUMBER,                 /* col# */
MD_COL_SEGCOL NUMBER,              /* segcol# */
MD_COL_TYPE NUMBER,                /* type# */
MD_COL_LEN NUMBER,
MD_COL_PREC NUMBER,                /* precision */
MD_COL_SCALE NUMBER,
MD_COL_CHARSETID NUMBER,           /* character set id */
MD_COL_CHARSETFORM NUMBER,         /* character set form */
MD_COL_ALT_TYPE VARCHAR2(4000),    /* adt type if any */
MD_COL_ALT_PREC NUMBER,            /* precision of the adt attribute */
MD_COL_ALT_CHAR_USED VARCHAR2(2),  /* charset used by the adt attribute */
MD_COL_ALT_LENGTH NUMBER,          /* length of the adt attribute */
MD_COL_ALT_XML_TYPE NUMBER,        /* 0/1. is xml_type column */
MD_COL_ALT_BINARYXML_TYPE NUMBER,  /* 0/1. is xml_type stored as binary */
MD_COL_ENC_ISENC VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ENC_NOSALT VARCHAR2(3) ,    /* 'YES'/'NO' */
MD_COL_ENC_ISLOB VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ALT_OBJECTXML_TYPE NUMBER,  /* 0/1 xml_type stored as object */
MD_COL_HASNOTNULLDEFAULT VARCHAR2(3) ,   /* 'YES'/'NO' */
MD_COL_ALT_TYPE_OWNER VARCHAR2(384),  /* owner of the adt type if any */
PROPERTY NUMBER,
XCOLTYPEFLAGS NUMBER,
XOPQTYPEFLAGS NUMBER,
EAFLAGS NUMBER,
XFQCOLNAME VARCHAR2(4000),
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
OBJV# NUMBER,
INTCOL# NUMBER,
INTERVAL_LEADING_PRECISION NUMBER,
INTERVAL_TRAILING_PRECISION NUMBER,
TOID RAW(16),
TYPENAME VARCHAR2(384),
NUMINTCOLS NUMBER,
NUMATTRS NUMBER,
ADTORDER NUMBER,
LOGMNR_SPARE1 NUMBER,
LOGMNR_SPARE2 NUMBER,
LOGMNR_SPARE3 VARCHAR2(1000),
LOGMNR_SPARE4 DATE,
LOGMNR_SPARE5 NUMBER,
LOGMNR_SPARE6 NUMBER,
LOGMNR_SPARE7 NUMBER,
LOGMNR_SPARE8 NUMBER,
LOGMNR_SPARE9 NUMBER,
XTYPENAME VARCHAR2(4000),
XTOPINTCOL NUMBER,
XREFFEDTABLEOBJN NUMBER,
XREFFEDTABLEOBJV NUMBER,
XOPQTYPETYPE NUMBER,
XOPQLOBINTCOL NUMBER,
XOPQOBJINTCOL NUMBER,
XXMLINTCOL    NUMBER,
LOGMNRDERIVEDFLAGS NUMBER,
/* Following fields added in 12.2 */
COLLID      NUMBER,
COLLINTCOL#  NUMBER,
ACDRRESCOL# NUMBER
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$COL_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$COL_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_REC" AS OBJECT
(
LOGMNR_UID NUMBER,
NAME           VARCHAR2(384),
VALUE          VARCHAR2(4000),
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$GSBA_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$KEY_GG_REC" as object
(
LOGMNR_UID NUMBER,
KEY# NUMBER,                   /* index obj# or con# */
KEY_FLAGS NUMBER,              /* index or constraint */
KEY_NAME VARCHAR2(384),        /* index name or constraint name */
INDEX_OWNER# NUMBER,
INDEX_OWNERNAME VARCHAR2(384),
COLNAME VARCHAR2(384),
INTCOL# NUMBER,
which number,
KEY_ORDER VARCHAR2(10),              /* asc or desc */
KEYCOL_FLAGS NUMBER,           /* Column properties such as is_null */
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$KEY_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$KEY_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$SEQ_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
NAME VARCHAR2(384),
OWNER# NUMBER,
OWNERNAME VARCHAR2(384),
FLAGS NUMBER,
MD_TAB_SEQCACHE NUMBER,
MD_TAB_SEQINCREMENTBY NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$SEQ_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$SEQ_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$TAB_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
BASEOBJV# NUMBER,
MD_TAB_USERID NUMBER,                /* owner# */
MD_TAB_COLCOUNT NUMBER,              /* user column count */
MD_TAB_TOTAL_COL_NUM NUMBER,         /* kernal column count */
MD_TAB_LOG_GROUP_EXISTS NUMBER,      /* Any log group exists for this table */
MD_TAB_IOT VARCHAR2(3) ,             /* 'YES'/'NO' IS IOT? */
MD_TAB_IOT_OVERFLOW VARCHAR2(3) ,    /* 'YES'/'NO' IOT with overflow ? */
MD_TAB_PARTITION  VARCHAR2(3) ,      /* 'YES'/'NO' is partitioned ? */
MD_TAB_SUBPARTITION VARCHAR2(3) ,    /* 'YES'/'NO' is sub partitioned? */
MD_TAB_XMLTYPETABLE VARCHAR2(3) ,    /* 'YES'/'NO' is xmltype table? */
MD_TAB_OBJECTID NUMBER,              /* object id if table object */
MD_TAB_OWNER VARCHAR2(384),     /* owner name */
MD_TAB_NAME VARCHAR2(384),      /* table name */
MD_TAB_OBJTYPE VARCHAR2(384),   /* Object type name */
MD_TAB_SCN NUMBER,                   /* COMMIT_SCN of this table version */
TAB_FLAGS NUMBER,
TRIGFLAG NUMBER,
OBJ_FLAGS NUMBER,
PROPERTY NUMBER,
PARTTYPE NUMBER,
SUBPARTTYPE NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
LVLCNT NUMBER,
LVL1OBJ# NUMBER,
LVL2OBJ# NUMBER,
LVL1TYPE# NUMBER,
LVL2TYPE# NUMBER,
LVL1NAME  VARCHAR2(384),
LVL2NAME  VARCHAR2(384),
INTCOLS   NUMBER,
ASSOC#    NUMBER,
XIDUSN    NUMBER,
XIDSLT    NUMBER,
XIDSQN    NUMBER,
DROP_SCN  NUMBER,
FLAGS     NUMBER,
LOGMNR_SPARE1   NUMBER,
LOGMNR_SPARE2   NUMBER,
LOGMNR_SPARE3   VARCHAR2(1000),
LOGMNR_SPARE4   DATE,
LOGMNR_SPARE5   NUMBER,
LOGMNR_SPARE6   NUMBER,
LOGMNR_SPARE7   NUMBER,
LOGMNR_SPARE8   NUMBER,
LOGMNR_SPARE9   NUMBER,
UNSUPPORTEDCOLS  NUMBER,
COMPLEXTYPECOLS  NUMBER,
NTPARENTOBJNUM   NUMBER,
NTPARENTOBJVERSION NUMBER,
NTPARENTINTCOLNUM  NUMBER,
LOGMNRTLOFLAGS    NUMBER,
LOGMNRMCV VARCHAR2(30),
/* Following fields added in 12.2 */
ACDRFLAGS        NUMBER,                                    /* automatic CDR */
ACDRTSOBJ#       NUMBER,                                    /* automatic CDR */
ACDRROWTSINTCOL# NUMBER                                     /* automatic CDR */
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$TAB_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$TAB_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_REC" AS OBJECT
(
LOGMNR_UID     NUMBER,
USERNAME       VARCHAR2(384),
USERID         NUMBER,
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$USER_GG_REC;

/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_DIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_DIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 100 MAXVALUE 99999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ROLLING_EVENT_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ROLLING_EVENT_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table BENHNHAN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BENHNHAN" 
   (	"MAKHAMBENH" VARCHAR2(30 BYTE), 
	"TEN" NVARCHAR2(50), 
	"GIOITINH" NVARCHAR2(20), 
	"NAMSINH" NUMBER(*,0), 
	"DIACHILIENLAC" NVARCHAR2(256), 
	"SDT" VARCHAR2(12 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOPHAN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOPHAN" 
   (	"MABP" VARCHAR2(30 BYTE), 
	"TENBP" NVARCHAR2(30), 
	"DIACHILL" NVARCHAR2(256), 
	"SDT" VARCHAR2(12 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATRUC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CATRUC" 
   (	"MACATRUC" VARCHAR2(30 BYTE), 
	"THOIGIANBATDAU" DATE, 
	"THOIGIANKETTHUC" DATE, 
	"CATHU" NUMBER(3,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHAMCONG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CHAMCONG" 
   (	"MANV" VARCHAR2(30 BYTE), 
	"THANG" NUMBER(*,0), 
	"NAM" NUMBER(*,0), 
	"SONGAYCONG" NUMBER(3,0), 
	"SONGAYCONGQUYDINH" NUMBER(3,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CT_DONTHUOC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CT_DONTHUOC" 
   (	"MADONTHUOC" VARCHAR2(30 BYTE), 
	"MATHUOC" VARCHAR2(30 BYTE), 
	"LIEULUONG" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DONTHUOC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DONTHUOC" 
   (	"MADONTHUOC" VARCHAR2(30 BYTE), 
	"THOIGIANLAPDONTHUOC" DATE, 
	"MANV" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HOADON
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HOADON" 
   (	"MAHOADON" VARCHAR2(30 BYTE), 
	"THOIGIANLAP" DATE, 
	"TONGTIEN" NUMBER(19,4), 
	"LOAIHOADON" NVARCHAR2(20), 
	"MALICHSU" VARCHAR2(30 BYTE), 
	"MANV" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table KHOA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."KHOA" 
   (	"MAKHOA" VARCHAR2(30 BYTE), 
	"TENKHOA" NVARCHAR2(50)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HELP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HELP" SHARING=METADATA 
   (	"TOPIC" VARCHAR2(50 BYTE), 
	"SEQ" NUMBER, 
	"INFO" VARCHAR2(80 BYTE)
   ) PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 49152 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  GRANT SELECT ON "SYSTEM"."HELP" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table LICHSUKHAMBENH
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LICHSUKHAMBENH" 
   (	"MALICHSU" VARCHAR2(30 BYTE), 
	"LANKHAM" NUMBER(*,0), 
	"THOIGIAN" DATE, 
	"CHIPHI" NUMBER(19,4), 
	"MAKHAMBENH" VARCHAR2(30 BYTE), 
	"MANV" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LICHSUTRUC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LICHSUTRUC" 
   (	"MANV" VARCHAR2(30 BYTE), 
	"MAPHONG" VARCHAR2(30 BYTE), 
	"MACATRUC" VARCHAR2(30 BYTE), 
	"NGAYTRUC" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOAIDICHVU
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOAIDICHVU" 
   (	"MALOAIDICHVU" VARCHAR2(30 BYTE), 
	"TENLOAIDICHVU" NVARCHAR2(256), 
	"CHIPHI" NUMBER(19,4)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NHANVIEN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."NHANVIEN" 
   (	"MANV" VARCHAR2(30 BYTE), 
	"HOTEN" NVARCHAR2(30), 
	"GIOITINH" NVARCHAR2(20), 
	"DIACHILIENLAC" NVARCHAR2(256), 
	"SDT" VARCHAR2(12 BYTE), 
	"LUONG" NUMBER(19,4), 
	"VAITRO" NVARCHAR2(50), 
	"MABP" VARCHAR2(30 BYTE), 
	"MAKHOA" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PHONG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PHONG" 
   (	"MAPHONG" VARCHAR2(30 BYTE), 
	"TENPHONG" NVARCHAR2(30)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table THANGNAM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."THANGNAM" 
   (	"THANG" NUMBER(*,0), 
	"NAM" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table THUOC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."THUOC" 
   (	"MATHUOC" VARCHAR2(30 BYTE), 
	"TENTHUOC" NVARCHAR2(256), 
	"CONGDUNG" NVARCHAR2(512), 
	"CHONGCHIDINH" NVARCHAR2(512), 
	"GIA" NUMBER(19,4), 
	"DONVI" NVARCHAR2(30)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TTDV
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TTDV" 
   (	"MALOAIDICHVU" VARCHAR2(30 BYTE), 
	"MANV" VARCHAR2(30 BYTE), 
	"MAHOADON" VARCHAR2(30 BYTE), 
	"THOIGIANTHUCHIEN" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR
        USERID LIKE SYS_CONTEXT('USERENV','CURRENT_USER')
;
  GRANT READ ON "SYSTEM"."PRODUCT_PRIVS" TO PUBLIC;
--------------------------------------------------------
--  DDL for View SCHEDULER_JOB_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."SCHEDULER_JOB_ARGS" ("OWNER", "JOB_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "VALUE", "ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","JOB_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","VALUE","ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_job_args
;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for View SCHEDULER_PROGRAM_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."SCHEDULER_PROGRAM_ARGS" ("OWNER", "PROGRAM_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "METADATA_ATTRIBUTE", "DEFAULT_VALUE", "DEFAULT_ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","PROGRAM_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","METADATA_ATTRIBUTE","DEFAULT_VALUE","DEFAULT_ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_program_args
;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS" TO "SELECT_CATALOG_ROLE";
REM INSERTING into SYSTEM.BENHNHAN
SET DEFINE OFF;
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('72','Herve Oliffe','Male',1992,'65470 Armistice Center','700-550-7793');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('73','Andris Rooms','Male',1986,'8020 Holmberg Court','765-796-7581');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('74','Julietta Le Maitre','Male',1983,'8701 Nova Plaza','333-447-9597');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('75','Corey Tregona','Male',1995,'4 Ronald Regan Junction','698-705-0387');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('76','Dusty Lukianovich','Female',1983,'14 Fremont Lane','802-152-2969');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('77','Saudra MacKall','Female',1981,'0 Bunker Hill Terrace','517-526-6097');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('78','Fanny Antwis','Female',1989,'33632 Hazelcrest Parkway','718-934-9440');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('79','Stacie Gudgen','Male',1996,'82438 Corben Circle','917-375-0615');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('80','Brod Dumelow','Male',1983,'98 Stephen Crossing','129-756-0585');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('81','Darryl Moehle','Male',1999,'55 Katie Hill','856-876-4384');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('82','Barnebas Bohlmann','Female',1992,'4529 Blaine Court','384-301-1809');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('83','Carmon Pendlebury','Female',2001,'78289 Portage Hill','877-812-7565');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('84','Claiborn Marikhin','Male',1994,'839 Vera Court','594-449-0332');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('85','Judy O'' Scallan','Female',1982,'0140 Lakewood Gardens Street','965-463-7851');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('86','Joey Kilrow','Female',1995,'09 Dixon Plaza','571-718-9561');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('87','Juline Scullion','Male',1991,'948 Springs Crossing','346-620-7842');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('88','Burt MacAlpin','Female',1994,'6 Myrtle Pass','255-156-1633');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('89','Sherwin Ponde','Male',1988,'4092 Carioca Place','925-654-9964');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('90','Kristi Blannin','Female',1982,'55 Northwestern Circle','732-183-6950');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('91','Janice Jepson','Female',1994,'664 Ramsey Avenue','944-262-4742');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('92','Owen Kervin','Female',1998,'80520 Ilene Avenue','212-893-8030');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('93','Neda Le Marquis','Female',1998,'87623 Paget Park','975-316-4616');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('94','Vernice Rowthorne','Male',2002,'9703 Eastwood Trail','373-481-7712');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('95','Rennie Lamdin','Female',1982,'6684 Oak Valley Drive','210-830-1868');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('96','Stu Ridgewell','Female',2002,'2385 Rieder Terrace','217-356-8488');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('97','Mattias Rooms','Male',1999,'116 Clove Lane','579-610-1222');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('98','Lucas Heintze','Female',1997,'2 Bobwhite Parkway','273-468-9481');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('99','Suki Scola','Male',1981,'74185 Grover Circle','591-128-3235');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('100','Corry Golthorpp','Male',1982,'3763 Old Gate Center','974-528-2055');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('47','Leonid Enochsson','Male',1996,'23475 Oak Valley Terrace','731-232-9205');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('48','Marcelia Eymor','Male',1983,'52 Hagan Circle','450-970-1755');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('49','Claresta Gherardini','Female',1990,'4734 Randy Court','581-381-5918');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('50','Flynn Brittin','Female',1983,'36 Corben Pass','459-117-7826');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('51','Lonee Selman','Male',1990,'9021 Hovde Place','909-489-8565');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('52','Munroe Forbes','Male',1988,'5 Bellgrove Place','177-407-4805');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('53','Cal Aronovich','Male',1993,'17 Sundown Point','472-326-9243');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('54','Valaree Haryngton','Male',1996,'79 Gulseth Pass','251-473-2990');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('55','Lucien Hattersley','Male',1997,'1 Forest Terrace','712-478-7655');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('56','Merrily Eeles','Male',1994,'9 Caliangt Park','316-513-6123');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('57','Frederic Degg','Female',1994,'51 Mcbride Pass','384-620-2105');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('58','Lucho Picken','Female',2001,'1995 Blackbird Trail','288-703-0849');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('59','Natala McGrory','Female',1994,'8 Bluestem Way','109-856-4518');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('60','Montague Boothby','Male',1988,'02303 Mitchell Park','709-904-8333');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('61','Nolan Dungee','Male',1986,'5095 Springview Circle','585-309-4128');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('62','Ailee Kennealy','Female',1989,'2 Garrison Street','121-134-2036');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('63','Michelina Slad','Male',2000,'1 Ryan Avenue','726-867-0721');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('64','Ardine Moland','Male',1994,'09 Lakewood Gardens Lane','204-906-3868');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('65','Tynan Mosconi','Female',1993,'79920 Arizona Road','364-359-7616');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('66','Matilde McGookin','Female',1986,'203 Portage Parkway','593-481-2437');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('67','Colas Rapaport','Male',1984,'2 Roth Street','664-288-6330');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('68','Devonna Pauwel','Female',1981,'68369 Mcguire Hill','821-870-3796');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('69','Angel Comello','Male',1991,'106 Loftsgordon Junction','773-402-8530');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('70','Gerrard Neachell','Female',1992,'4 Fairview Avenue','630-198-3806');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('71','Bird Lethebridge','Female',1993,'9520 Debs Point','276-681-5233');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('1','Wood Jacobbe','Female',1983,'34 Vermont Point','195-650-0120');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('2','Dillon Doohey','Male',1991,'1954 Sage Plaza','272-887-2990');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('3','Kaitlin Ewin','Male',1980,'0 Loomis Circle','388-359-9152');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('4','Willi Hedney','Female',1983,'56860 Schurz Hill','740-481-3764');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('5','Siegfried Whorlton','Female',2001,'2340 Nelson Alley','121-832-7748');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('6','Lorinda Quincee','Female',1993,'50223 Huxley Junction','227-270-6055');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('7','Erina Goulborn','Female',1987,'3 Stone Corner Crossing','422-576-1504');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('8','Tobit Cosstick','Female',1990,'8258 Kropf Parkway','943-589-8527');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('9','Hobie Spinetti','Female',1980,'0762 Fulton Pass','298-938-6482');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('10','Charlene Craigie','Male',1996,'0659 Karstens Point','410-313-0914');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('11','Enrica Naisby','Male',1984,'04 Bashford Avenue','526-124-5040');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('12','Sunny Smickle','Male',1993,'585 Dixon Crossing','792-611-9690');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('13','Carolee Corser','Female',1999,'83471 Pearson Place','137-740-4451');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('14','Tedie McCaig','Male',2001,'26277 Dapin Center','432-247-4719');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('15','Tiffani Colthard','Male',1992,'09 Carpenter Pass','106-246-6836');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('16','Stephanus Duffyn','Female',1994,'32453 Lakeland Parkway','335-146-0568');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('17','Selma Swayton','Male',1980,'787 4th Street','897-310-2844');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('18','Kimmi Stanyforth','Female',1981,'6166 Marcy Circle','441-819-9919');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('19','Marissa Morrallee','Female',1995,'46 Alpine Alley','644-154-5778');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('20','Orlando Sidnell','Female',1997,'45 Melvin Court','781-288-8238');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('21','Niki Laste','Male',2002,'0 Hanson Center','413-472-3648');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('22','Timothy Bruckstein','Female',1998,'0050 Forest Run Trail','139-462-2115');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('23','Flemming Gerkens','Male',1995,'87 Loftsgordon Road','323-967-6423');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('24','Daisy Fewlass','Male',1981,'4 5th Pass','825-673-7141');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('25','Say Wateridge','Male',1988,'007 Wayridge Way','134-572-4516');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('26','Tine Kightly','Female',1995,'75657 Sommers Crossing','717-285-0311');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('27','Hillie Silkstone','Female',2000,'55 Graedel Junction','553-933-0459');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('28','Salim Burel','Female',1984,'3136 Logan Road','692-518-9972');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('29','Findley Jillitt','Female',1999,'06 Meadow Valley Street','159-777-0470');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('30','Lorry Staples','Male',2001,'14224 Forest Run Center','459-668-0677');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('31','Katharyn Bakes','Male',1985,'96 Randy Junction','227-480-7138');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('32','Delilah Folkerts','Female',1984,'505 Superior Pass','386-369-0980');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('33','Alasteir Motion','Female',1990,'31564 Ruskin Avenue','377-134-1188');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('34','Robbie Fauguel','Male',1983,'6 Upham Hill','347-139-0773');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('35','Barde Groomebridge','Female',1984,'527 Beilfuss Court','122-434-3558');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('36','Chuck Heynel','Female',1999,'1 Schurz Terrace','203-812-8778');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('37','Cirillo Ansteys','Female',1994,'2 Mallard Lane','237-395-1502');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('38','Tedi Wressell','Male',1993,'88508 Mcguire Alley','856-660-2601');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('39','Hendrik Dooly','Male',2001,'56 Claremont Hill','395-789-8503');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('40','Eberto Faircloth','Female',1980,'72 Hovde Lane','662-592-3207');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('41','Nonna Bridat','Male',1986,'3 Sunfield Court','700-271-9172');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('42','Richy Parlatt','Male',1987,'9560 East Parkway','732-995-3973');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('43','Raychel Pudner','Female',1989,'9 Cottonwood Center','860-113-0414');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('44','Jesus Portch','Female',1992,'13978 Fieldstone Park','775-259-9890');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('45','Angie Nulty','Male',1994,'44069 Birchwood Junction','449-550-2009');
Insert into SYSTEM.BENHNHAN (MAKHAMBENH,TEN,GIOITINH,NAMSINH,DIACHILIENLAC,SDT) values ('46','Del Issit','Male',1986,'28 Red Cloud Parkway','359-529-2327');
REM INSERTING into SYSTEM.BOPHAN
SET DEFINE OFF;
Insert into SYSTEM.BOPHAN (MABP,TENBP,DIACHILL,SDT) values ('QLTN','Quan Ly Tai Nguyen','Phong 101','19008198');
Insert into SYSTEM.BOPHAN (MABP,TENBP,DIACHILL,SDT) values ('QLNS','Quan Ly Nhan Su','Phong 102','19008199');
Insert into SYSTEM.BOPHAN (MABP,TENBP,DIACHILL,SDT) values ('QLTV','Quan Ly Tai Vu','Phong 103','19008200');
Insert into SYSTEM.BOPHAN (MABP,TENBP,DIACHILL,SDT) values ('TTDP','Tiep Tan Va Dieu Phoi','Phong 104','19008201');
Insert into SYSTEM.BOPHAN (MABP,TENBP,DIACHILL,SDT) values ('BT','Ban Thuoc','Phong 105','19008202');
Insert into SYSTEM.BOPHAN (MABP,TENBP,DIACHILL,SDT) values ('KT','Ke Toan','Phong 106','19008203');
REM INSERTING into SYSTEM.CATRUC
SET DEFINE OFF;
Insert into SYSTEM.CATRUC (MACATRUC,THOIGIANBATDAU,THOIGIANKETTHUC,CATHU) values ('1',to_date('01-JAN-21','DD-MON-RR'),to_date('01-APR-21','DD-MON-RR'),1);
Insert into SYSTEM.CATRUC (MACATRUC,THOIGIANBATDAU,THOIGIANKETTHUC,CATHU) values ('2',to_date('01-APR-21','DD-MON-RR'),to_date('01-APR-21','DD-MON-RR'),2);
Insert into SYSTEM.CATRUC (MACATRUC,THOIGIANBATDAU,THOIGIANKETTHUC,CATHU) values ('3',to_date('01-APR-21','DD-MON-RR'),to_date('01-APR-21','DD-MON-RR'),3);
REM INSERTING into SYSTEM.CHAMCONG
SET DEFINE OFF;
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00034',1,2021,18,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00034',2,2021,11,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00043',1,2021,2,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00043',2,2021,22,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00068',1,2021,5,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00113',1,2021,1,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00172',1,2021,22,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00197',1,2021,24,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00197',2,2021,17,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00197',3,2021,9,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00202',1,2021,13,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00202',2,2021,11,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00202',3,2021,25,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00252',1,2021,22,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00277',1,2021,20,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00277',2,2021,1,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00277',3,2021,30,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00277',4,2021,17,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00287',1,2021,8,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00287',2,2021,11,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00296',1,2021,31,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00296',2,2021,8,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00296',3,2021,7,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00296',4,2021,7,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00296',5,2021,9,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00334',1,2021,19,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00334',2,2021,10,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00334',3,2021,19,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00334',4,2021,13,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00335',1,2021,8,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00342',1,2021,31,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00342',2,2021,2,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00397',1,2021,9,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00397',2,2021,14,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00397',3,2021,4,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00397',4,2021,3,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00416',1,2021,29,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00455',1,2021,18,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00455',2,2021,10,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00461',1,2021,1,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00461',2,2021,5,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00469',1,2021,5,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00469',2,2021,6,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00469',3,2021,31,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00501',1,2021,30,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00501',2,2021,31,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00515',1,2021,12,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00515',2,2021,4,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00529',1,2021,25,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00529',2,2021,18,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00542',1,2021,20,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00542',2,2021,18,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00553',1,2021,17,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00553',2,2021,27,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00553',3,2021,14,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00584',1,2021,31,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00584',2,2021,4,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00584',3,2021,21,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00584',4,2021,19,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00584',5,2021,9,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00585',1,2021,1,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00585',2,2021,5,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00597',1,2021,20,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00606',1,2021,20,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00606',2,2021,18,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00606',3,2021,9,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00613',1,2021,26,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00613',2,2021,18,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00613',3,2021,2,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00622',1,2021,15,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00622',2,2021,21,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00622',3,2021,18,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00622',4,2021,28,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00622',5,2021,25,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00659',1,2021,8,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00661',1,2021,22,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00661',2,2021,13,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00691',1,2021,15,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00691',2,2021,29,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00691',3,2021,10,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00691',4,2021,1,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00732',1,2021,5,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00762',1,2021,23,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00762',2,2021,25,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00775',1,2021,9,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00775',2,2021,12,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00780',1,2021,22,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00826',1,2021,16,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00835',1,2021,15,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00835',2,2021,31,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00835',3,2021,14,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00869',1,2021,18,14);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00912',1,2021,25,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00953',1,2021,10,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00953',2,2021,18,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00953',3,2021,28,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00989',1,2021,8,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00989',2,2021,19,21);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00989',3,2021,2,30);
Insert into SYSTEM.CHAMCONG (MANV,THANG,NAM,SONGAYCONG,SONGAYCONGQUYDINH) values ('NV00989',4,2021,19,21);
REM INSERTING into SYSTEM.CT_DONTHUOC
SET DEFINE OFF;
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0361','55289-370',13);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0361','0268-0821',19);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0560','54868-3952',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0560','0942-6470',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0560','0942-6326',7);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0736','36987-2352',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0736','60512-6568',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0736','0268-6761',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT0736','58118-0293',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT1695','42254-054',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT1695','25000-138',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT1944','51389-120',1);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT1944','0942-6326',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT2200','42254-054',15);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3271','65162-679',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3271','51346-050',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3301','55289-370',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3301','59779-889',6);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3301','0573-0196',19);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3419','65862-172',16);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3419','55289-370',2);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3419','37205-931',7);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3419','58118-1812',14);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3419','10210-0006',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3723','0009-0331',20);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3723','0409-4011',19);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3758','50563-133',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3758','0703-7023',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3758','13537-101',7);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT3758','35356-958',13);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT4697','0781-5748',14);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT4697','0869-0211',18);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT4697','65862-118',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5097','67510-0057',1);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5097','0573-0196',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5097','51389-120',2);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5097','65162-679',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5097','10812-321',12);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5097','44911-0052',3);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5224','36987-1067',6);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5538','64720-132',6);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5547','48951-8246',3);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5547','0781-5275',12);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5547','27505-004',6);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5734','50436-3621',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5956','0009-0331',20);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5956','55289-370',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT5956','25000-138',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6104','60681-1277',19);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6104','68472-119',3);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6104','0268-6643',14);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6146','17630-2019',16);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6146','63739-500',15);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6146','50845-0045',16);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6198','0135-0435',6);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6198','49873-056',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6436','0135-0435',15);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6436','49349-639',14);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6594','60681-1277',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6863','36987-2168',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT6916','55758-007',8);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7014','48951-1172',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7102','57237-028',12);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7102','0280-1159',4);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7102','0942-6326',3);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7228','0009-0331',3);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7228','60512-6568',16);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7228','52125-637',7);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7228','0002-5800',1);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7228','68428-093',8);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7228','49035-224',4);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7494','35356-958',9);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7511','0942-6470',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7511','63187-062',7);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7511','54622-104',12);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7511','55301-000',16);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7653','64720-132',16);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7653','36987-2352',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7653','42783-601',15);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT7653','0268-0821',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT8129','36987-2168',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT8253','50201-0246',8);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT8253','0409-4011',3);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT8253','10812-321',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT8473','63187-062',11);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9004','55758-007',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9335','0869-0211',7);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9335','0093-5787',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9630','49349-639',2);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9630','54868-3952',4);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9665','13925-160',8);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9830','65162-679',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9830','0536-2425',12);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9830','68151-0149',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9830','67510-0057',5);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9926','0268-0821',17);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9926','58118-0293',13);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9980','65862-172',10);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9980','10210-0006',20);
Insert into SYSTEM.CT_DONTHUOC (MADONTHUOC,MATHUOC,LIEULUONG) values ('DT9980','49999-455',14);
REM INSERTING into SYSTEM.DONTHUOC
SET DEFINE OFF;
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT0560',to_date('01-JAN-21','DD-MON-RR'),'NV00131');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9335',to_date('01-JAN-21','DD-MON-RR'),'NV00622');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6436',to_date('01-JAN-21','DD-MON-RR'),'NV00584');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6198',to_date('01-JAN-21','DD-MON-RR'),'NV00835');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7014',to_date('01-JAN-21','DD-MON-RR'),'NV00691');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT2794',to_date('01-JAN-21','DD-MON-RR'),'NV00515');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5538',to_date('01-JAN-21','DD-MON-RR'),'NV00287');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT8129',to_date('01-JAN-21','DD-MON-RR'),'NV00335');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6916',to_date('01-JAN-21','DD-MON-RR'),'NV00775');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9665',to_date('01-JAN-21','DD-MON-RR'),'NV00691');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT8253',to_date('01-JAN-21','DD-MON-RR'),'NV00691');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5224',to_date('01-JAN-21','DD-MON-RR'),'NV00585');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT3271',to_date('01-JAN-21','DD-MON-RR'),'NV00397');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7511',to_date('01-JAN-21','DD-MON-RR'),'NV00202');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT3419',to_date('01-JAN-21','DD-MON-RR'),'NV00172');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5647',to_date('01-JAN-21','DD-MON-RR'),'NV00762');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT2200',to_date('01-JAN-21','DD-MON-RR'),'NV00277');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9980',to_date('01-JAN-21','DD-MON-RR'),'NV00659');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT4697',to_date('01-JAN-21','DD-MON-RR'),'NV00469');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT8473',to_date('01-JAN-21','DD-MON-RR'),'NV00835');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9004',to_date('01-JAN-21','DD-MON-RR'),'NV00287');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT4534',to_date('01-JAN-21','DD-MON-RR'),'NV00548');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6146',to_date('01-JAN-21','DD-MON-RR'),'NV00416');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT1695',to_date('01-JAN-21','DD-MON-RR'),'NV00287');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7228',to_date('01-JAN-21','DD-MON-RR'),'NV00335');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT3758',to_date('01-JAN-21','DD-MON-RR'),'NV00936');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6594',to_date('01-JAN-21','DD-MON-RR'),'NV00335');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT3301',to_date('01-JAN-21','DD-MON-RR'),'NV00542');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5956',to_date('01-JAN-21','DD-MON-RR'),'NV00606');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT2244',to_date('01-JAN-21','DD-MON-RR'),'NV00553');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT0736',to_date('01-JAN-21','DD-MON-RR'),'NV00691');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9109',to_date('01-JAN-21','DD-MON-RR'),'NV00989');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT8885',to_date('01-JAN-21','DD-MON-RR'),'NV00501');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT0361',to_date('01-JAN-21','DD-MON-RR'),'NV00043');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5097',to_date('01-JAN-21','DD-MON-RR'),'NV00542');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6152',to_date('01-JAN-21','DD-MON-RR'),'NV00659');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT3723',to_date('01-JAN-21','DD-MON-RR'),'NV00775');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7653',to_date('01-JAN-21','DD-MON-RR'),'NV00613');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7524',to_date('01-JAN-21','DD-MON-RR'),'NV00691');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9926',to_date('01-JAN-21','DD-MON-RR'),'NV00427');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7102',to_date('01-JAN-21','DD-MON-RR'),'NV00585');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9630',to_date('01-JAN-21','DD-MON-RR'),'NV00584');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT1944',to_date('01-JAN-21','DD-MON-RR'),'NV00501');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT9830',to_date('01-JAN-21','DD-MON-RR'),'NV00043');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6863',to_date('01-JAN-21','DD-MON-RR'),'NV00553');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6770',to_date('01-JAN-21','DD-MON-RR'),'NV00081');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5734',to_date('01-JAN-21','DD-MON-RR'),'NV00936');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT6104',to_date('01-JAN-21','DD-MON-RR'),'NV00501');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT5547',to_date('01-JAN-21','DD-MON-RR'),'NV00416');
Insert into SYSTEM.DONTHUOC (MADONTHUOC,THOIGIANLAPDONTHUOC,MANV) values ('DT7494',to_date('01-JAN-21','DD-MON-RR'),'NV00515');
REM INSERTING into SYSTEM.HOADON
SET DEFINE OFF;
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD7120',to_date('14-JAN-21','DD-MON-RR'),3000,'HD Kham chi dinh','LS8010','NV00613');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD2156',to_date('30-NOV-20','DD-MON-RR'),11000,'Kham chuyen khoa','LS8010','NV00342');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8183',to_date('27-JUN-20','DD-MON-RR'),5000,'Thuoc','LS3552','NV00529');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD5148',to_date('04-DEC-20','DD-MON-RR'),64000,'Thuoc','LS5839','NV00953');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD5346',to_date('03-AUG-20','DD-MON-RR'),32000,'Thuoc','LS8108','NV00113');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD9891',to_date('03-JAN-21','DD-MON-RR'),12000,'Kham chuyen khoa','LS8400','NV00515');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD9835',to_date('23-OCT-20','DD-MON-RR'),13000,'Phau thuat','LS1015','NV00068');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD9296',to_date('22-APR-20','DD-MON-RR'),39000,'HD Kham chi dinh','LS2543','NV00553');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD0259',to_date('04-JUL-20','DD-MON-RR'),69000,'HD Kham chi dinh','LS7694','NV00613');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3220',to_date('21-AUG-20','DD-MON-RR'),33000,'Phau thuat','LS6250','NV00613');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD6066',to_date('20-APR-20','DD-MON-RR'),6000,'Phau thuat','LS6673','NV00691');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD4605',to_date('10-FEB-21','DD-MON-RR'),11000,'HD Kham chi dinh','LS5749','NV00912');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD1221',to_date('14-SEP-20','DD-MON-RR'),51000,'Thuoc','LS4813','NV00826');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD7087',to_date('20-DEC-20','DD-MON-RR'),79000,'Phau thuat','LS6250','NV00989');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3258',to_date('20-APR-20','DD-MON-RR'),56000,'Thuoc','LS9906','NV00455');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3088',to_date('20-FEB-21','DD-MON-RR'),30000,'Thuoc','LS8662','NV00553');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD0122',to_date('08-DEC-20','DD-MON-RR'),78000,'Kham chuyen khoa','LS8108','NV00585');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3796',to_date('09-FEB-21','DD-MON-RR'),34000,'HD Kham chi dinh','LS5839','NV00989');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3399',to_date('21-FEB-21','DD-MON-RR'),97000,'HD Kham chi dinh','LS0030','NV00542');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8053',to_date('13-JUN-20','DD-MON-RR'),4000,'Thuoc','LS7867','NV00732');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3331',to_date('18-AUG-20','DD-MON-RR'),17000,'Thuoc','LS3552','NV00780');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD7205',to_date('11-AUG-20','DD-MON-RR'),61000,'Thuoc','LS4308','NV00613');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD0523',to_date('08-JAN-21','DD-MON-RR'),53000,'Phau thuat','LS6673','NV00501');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD2683',to_date('08-APR-20','DD-MON-RR'),54000,'Thuoc','LS3552','NV00455');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD7516',to_date('30-APR-20','DD-MON-RR'),82000,'Thuoc','LS0603','NV00334');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD2841',to_date('23-JUN-20','DD-MON-RR'),43000,'Thuoc','LS5178','NV00622');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD2785',to_date('07-SEP-20','DD-MON-RR'),20000,'Kham chuyen khoa','LS0008','NV00585');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD2861',to_date('13-OCT-20','DD-MON-RR'),61000,'Kham chuyen khoa','LS3552','NV00762');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD2359',to_date('20-MAR-21','DD-MON-RR'),59000,'Thuoc','LS0030','NV00661');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD1903',to_date('08-JUL-20','DD-MON-RR'),37000,'HD Kham chi dinh','LS8662','NV00277');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8896',to_date('06-MAY-20','DD-MON-RR'),4000,'Thuoc','LS4308','NV00252');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD5591',to_date('18-MAY-20','DD-MON-RR'),64000,'Phau thuat','LS2918','NV00659');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD0732',to_date('15-AUG-20','DD-MON-RR'),5000,'HD Kham chi dinh','LS5685','NV00775');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8939',to_date('23-FEB-21','DD-MON-RR'),53000,'HD Kham chi dinh','LS3552','NV00461');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD9525',to_date('26-OCT-20','DD-MON-RR'),36000,'Thuoc','LS5749','NV00902');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD4696',to_date('21-JAN-21','DD-MON-RR'),53000,'Thuoc','LS5284','NV00296');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD0535',to_date('09-JUN-20','DD-MON-RR'),70000,'Thuoc','LS4267','NV00501');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD4751',to_date('12-MAY-20','DD-MON-RR'),97000,'Kham chuyen khoa','LS8662','NV00461');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD0561',to_date('02-JAN-21','DD-MON-RR'),67000,'Kham chuyen khoa','LS2500','NV00659');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8304',to_date('30-DEC-20','DD-MON-RR'),87000,'HD Kham chi dinh','LS2918','NV00732');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD5018',to_date('17-OCT-20','DD-MON-RR'),46000,'HD Kham chi dinh','LS8576','NV00585');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD1994',to_date('26-SEP-20','DD-MON-RR'),11000,'Kham chuyen khoa','LS8576','NV00218');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD9308',to_date('06-FEB-21','DD-MON-RR'),54000,'Phau thuat','LS2182','NV00869');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD5909',to_date('03-FEB-21','DD-MON-RR'),85000,'Thuoc','LS4032','NV00469');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD7938',to_date('25-APR-20','DD-MON-RR'),26000,'Thuoc','LS8662','NV00659');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8494',to_date('22-JUN-20','DD-MON-RR'),65000,'HD Kham chi dinh','LS2500','NV00553');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD6656',to_date('16-JUN-20','DD-MON-RR'),33000,'HD Kham chi dinh','LS2575','NV00296');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD8356',to_date('24-JUL-20','DD-MON-RR'),4000,'HD Kham chi dinh','LS5749','NV00613');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD3085',to_date('19-MAR-21','DD-MON-RR'),19000,'HD Kham chi dinh','LS6673','NV00775');
Insert into SYSTEM.HOADON (MAHOADON,THOIGIANLAP,TONGTIEN,LOAIHOADON,MALICHSU,MANV) values ('HD7908',to_date('29-AUG-20','DD-MON-RR'),4000,'Phau thuat','LS0030','NV00597');
REM INSERTING into SYSTEM.KHOA
SET DEFINE OFF;
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('AED','Accident and Emergency Department');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('CAR','Cardiology');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('DER','Dermatology');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('DID','Diagnostic imaging department');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('END','Endocrinology');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('GAS','Gastroenterology');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('IM','Internal medicine');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('NEU','Neurology');
Insert into SYSTEM.KHOA (MAKHOA,TENKHOA) values ('ODO','Odontology');
REM INSERTING into SYSTEM.HELP
SET DEFINE OFF;
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',2,' @ ("at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',3,' -------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',4,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',5,' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',7,' @ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',9,' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',11,'    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',2,' @@ (double "at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',3,' ---------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',5,' Runs the specified script. This command is almost identical to');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',6,' the @ command. It is useful for running nested scripts because it');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',7,' has the additional functionality of looking for the nested script');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',8,' in the same url or path as the calling script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',10,' @@ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',2,' / (slash)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',5,' Executes the most recently executed SQL command or PL/SQL block');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',6,' which is stored in the SQL buffer. Use slash (/) at the command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',7,' prompt or line number prompt in SQL*Plus command line. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',8,' has no command history and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',10,' /');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',2,' ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',5,' Reads a line of input and stores it in a given substitution variable.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',7,' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',8,' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',2,' APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',5,' Adds text to the end of the current line in the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',7,' A[PPEND] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',2,' ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',3,' -----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',5,' Displays information about redo log files.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',7,' ARCHIVE LOG LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',2,' ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',5,' Specifies display characteristics for a given attribute of an Object Type');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',6,' column, such as the format of NUMBER data. Columns and attributes should');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',7,' not have the same names as they share a common namespace. Lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',8,' current display characteristics for a single attribute or all attributes.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',10,' ATTRIBUTE [type_name.attribute_name [option ... ]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',12,' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',13,'     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',14,'     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',15,'     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',16,'     LIKE {type_name.attribute_name | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',17,'     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',2,' BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',5,' Specifies where changes occur in a report and the formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',6,' action to perform, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',7,' - suppressing display of duplicate values for a given column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',8,' - skipping a line each time a given column value changes');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',9,' - printing computed figures each time a given column value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',10,'   changes or at the end of the report.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',11,' Enter BREAK with no clauses to list the current BREAK definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',13,' BRE[AK] [ON report_element [action [action]]] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',15,' where report_element has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',16,'     {column | expression | ROW | REPORT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',18,' and where action has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',19,'     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',2,' BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',5,' Places and formats a specified title at the bottom of each report');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',6,' page, or lists the current BTITLE definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',8,' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',12,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',13,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',14,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',2,' CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',5,' Changes the first occurrence of the specified text on the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',6,' line of the SQL buffer. The buffer has no command history list and');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',7,' does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',9,' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',2,' CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',5,' Resets or erases the current value or setting for the specified option.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',7,' CL[EAR] option ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',9,' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',10,'     BRE[AKS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',11,'     BUFF[ER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',12,'     COL[UMNS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',13,'     COMP[UTES]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',14,'     SCR[EEN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',15,'     SQL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',16,'     TIMI[NG]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',2,' COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',5,' Specifies display attributes for a given column, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',6,'     - text for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',7,'     - alignment for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',8,'     - format for NUMBER data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',9,'     - wrapping of column data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',10,' Also lists the current display attributes for a single column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',11,' or all columns.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',13,' COL[UMN] [{column | expr} [option ...] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',15,' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',16,'     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',17,'     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',18,'     ENTMAP {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',19,'     FOLD_A[FTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',20,'     FOLD_B[EFORE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',21,'     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',22,'     HEA[DING] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',23,'     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',24,'     LIKE {expr | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',25,'     NEWL[INE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',26,'     NEW_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',27,'     NOPRI[NT] | PRI[NT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',28,'     NUL[L] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',29,'     OLD_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',30,'     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',31,'     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',32,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',2,' COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',5,' In combination with the BREAK command, calculates and prints');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',6,' summary lines using various standard computations. Also lists');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',7,' all COMPUTE definitions.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',9,' COMP[UTE] [function [LAB[EL] text] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',10,'   OF {expr|column|alias} ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',11,'   ON {expr|column|alias|REPORT|ROW} ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',2,' CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',5,' Connects a given username to the Oracle Database. When you run a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',6,' CONNECT command, the site profile, glogin.sql, and the user profile,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',7,' login.sql, are processed in that order. CONNECT does not reprompt');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',8,' for username or password if the initial connection does not succeed.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',10,' CONN[ECT] [{logon|/|proxy}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',11,' [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',12,' [edition=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',14,' where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',15,'     username[/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',16,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',17,' where proxy has the syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',18,'     proxyuser[username][/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',19,' NOTE: Brackets around username in proxy are required syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',2,' COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',5,' Copies data from a query to a table in the same or another');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',6,' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',8,' COPY {FROM database | TO database | FROM database TO database}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',9,'            {APPEND|CREATE|INSERT|REPLACE} destination_table');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',10,'            [(column, column, column, ...)] USING query');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',12,' where database has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',13,'     username[/password]@connect_identifier');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',2,' DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',5,' Specifies a substitution variable and assigns a CHAR value to it, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',6,' lists the value and variable type of a single variable or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',8,' DEF[INE] [variable] | [variable = text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',2,' DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',5,' Deletes one or more lines of the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',6,' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',8,' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',2,' DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',5,' Lists the column definitions for a table, view, or synonym,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',6,' or the specifications for a function or procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',8,' DESC[RIBE] {[schema.]object[@connect_identifier]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',2,' DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',3,' ----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',5,' Commits pending changes to the database and logs the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',6,' user out of Oracle, but does not exit SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',7,' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',8,' and return control to your computer''s operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',10,' DISC[ONNECT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',2,' EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',5,' Invokes an operating system text editor on the contents of the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',6,' specified file or on the contents of the SQL buffer. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',7,' has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',9,' ED[IT] [file_name[.ext]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',2,' EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',5,' Executes a single PL/SQL statement or runs a stored procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',7,' EXEC[UTE] statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',2,' EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',8,' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',9,'   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',2,' GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',5,' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',6,' The buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',8,' GET [FILE] file_name[.ext] [LIST | NOLIST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',2,' HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',5,' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',6,' for a list of topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',8,' You can view SQL*Plus resources at');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',9,'     http://www.oracle.com/technology/documentation/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',11,' ******************************************************************************');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',12,' **  Top 12.2 features:                                                      **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',13,' **    - Fast retrieval of data as CSV for use in applications like          **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',14,' **      SQL*Loader. Use SQLPLUS -M "CSV ON" or SET MARKUP CSV ON            **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',15,' **    - Improved defaults and optimizations for reports. Use SQLPLUS -F     **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',16,' **    - Command recall. Use SET HISTORY ON and HISTORY to list previous     **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',17,' **      commands.                                                           **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',18,' ******************************************************************************');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',19,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',20,' HELP|? [topic]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',21,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',2,' HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',5,' Stores, lists, executes, edits of the commands');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',6,' entered during the current SQL*Plus session.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',8,' HIST[ORY] [N {RUN | EDIT | DEL[ETE]}] | [CLEAR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',10,' N is the entry number listed in the history list.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',11,' Use this number to recall, edit or delete the command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',13,' Example:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',14,' HIST 3 RUN - will run the 3rd entry from the list.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',16,' HIST[ORY] without any option will list all entries in the list.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',2,' HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',5,' Executes an operating system command without leaving SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',6,' Enter HOST without command to display an operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',7,' You can then enter multiple operating system commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',9,' HO[ST] [command]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',2,'Enter Help [topic] for help.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',3,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',4,' @             COPY         PASSWORD                 SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',5,' @@            DEFINE       PAUSE                    SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',6,' /             DEL          PRINT                    SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',7,' ACCEPT        DESCRIBE     PROMPT                   SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',8,' APPEND        DISCONNECT   QUIT                     START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',9,' ARCHIVE LOG   EDIT         RECOVER                  STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',10,' ATTRIBUTE     EXECUTE      REMARK                   STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',11,' BREAK         EXIT         REPFOOTER                TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',12,' BTITLE        GET          REPHEADER                TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',13,' CHANGE        HELP         RESERVED WORDS (SQL)     UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',14,' CLEAR         HISTORY      RESERVED WORDS (PL/SQL)  VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',15,' COLUMN        HOST         RUN                      WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',16,' COMPUTE       INPUT        SAVE                     WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',17,' CONNECT       LIST         SET                      XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',2,' INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',5,' Adds one or more new lines of text after the current line in the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',6,' SQL buffer. The buffer has no command history list and does not');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',7,' record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',9,' I[NPUT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',2,' LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',5,' Lists one or more lines of the most recently executed SQL command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',6,' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',7,' no clauses to list all lines. In SQL*Plus command-line you can also');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',8,' use ";" to list all the lines in the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',9,' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',11,' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',2,' Menu');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',5,' Enter HELP INDEX for a list of help topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',2,' PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',5,' Allows you to change a password without displaying it on an input device.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',7,' PASSW[ORD] [username]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',2,' PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',5,' Displays the specified text then waits for the user to press RETURN.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',7,' PAU[SE] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',2,' PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',5,' Displays the current values of bind variables, or lists all bind');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',6,' variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',8,' PRINT [variable ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',2,' PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',5,' Sends the specified message or a blank line to the user''s screen.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',7,' PRO[MPT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',2,' QUIT (Identical to EXIT)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',8,' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',9,'   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',2,' RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',5,' Performs media recovery on one or more tablespaces, one or more');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',6,' datafiles, or the entire database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',8,' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',10,' where the general clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',11,'   [AUTOMATIC] [FROM location]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',12,'   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',13,'   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',14,'   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',15,'   |CONTINUE [DEFAULT]|CANCEL}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',16,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',17,'   where the full_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',18,'     [STANDBY] DATABASE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',19,'     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',20,'      | USING BACKUP CONTROLFILE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',21,'      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',22,'      | USING BACKUP CONTROLFILE] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',23,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',24,'   where the partial_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',25,'     {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',26,'      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',27,'      | STANDBY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',28,'       {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',29,'       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',30,'     UNTIL [CONSISTENT WITH] CONTROLFILE }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',31,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',32,' where the parallel clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',33,'   {NOPARALLEL | PARALLEL [integer]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',34,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',35,' where the managed clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',36,'   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',37,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',38,' where the recover_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',39,'   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',40,'    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',41,'    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',42,'    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',43,'    | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',44,'              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',45,'      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',46,'       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',47,'       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',48,'       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',49,'       | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',50,'                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',51,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',52,' where the cancel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',53,'   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',54,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',55,' where the finish_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',56,'   [DISCONNECT [FROM SESSION]] [parallel_clause]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',57,'   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',58,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',59,' where the parallel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',60,'   {NOPARALLEL | PARALLEL [integer] }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',61,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',2,' REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',5,' Begins a comment in a script. SQL*Plus does not interpret the comment');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',6,' as a command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',8,' REM[ARK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',2,' REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',5,' Places and formats a footer at the bottom of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',6,' REPFOOTER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',8,' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',11,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',13,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',2,' REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',5,' Places and formats a header at the top of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',6,' REPHEADER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',8,' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',11,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',13,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',2,' RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',3,' --------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',5,' SQL Reserved Words have special meaning in SQL, and may not be used for');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',6,' identifier names unless enclosed in "quotes".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',8,' An asterisk (*) indicates words are also ANSI Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',10,' Oracle prefixes implicitly generated schema object and subobject names');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',11,' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',12,' from prefixing your schema object and subobject names with "SYS_".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',14,' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',15,' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',16,' ALL*            DESC*            INTO*           OR*             SYNONYM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',17,' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',18,' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',19,' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',20,' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',21,' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',22,' AUDIT           FILE             MAXEXTENTS      RAW             UID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',23,' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',24,' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',25,' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',26,' CHECK*          GRANT*           MODIFY          ROW             USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',27,' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',28,' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',29,' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',30,' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',31,' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',32,' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',33,' CURRENT*        INDEX            OF*             SHARE           WHERE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',34,' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',35,' DECIMAL*        INSERT*          ON*             SMALLINT*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',36,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',2,' RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',3,' -----------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',5,' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',6,' for identifier names (unless enclosed in "quotes").');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',8,' An asterisk (*) indicates words are also SQL Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',10,' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',11,' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',12,' AND*            DO              LIKE*           PCTFREE*        SUM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',13,' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',14,' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',15,' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',16,' ASC*            END             LOOP            PRAGMA          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',17,' AT              EXCEPTION       MAX             PRIOR*          TIME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',18,' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',19,' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',20,' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',21,' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',22,' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',23,' BODY            EXTRACT         MODE*           RAW*            TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',24,' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',25,' BULK            FETCH           NATURAL         RECORD          TRUE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',26,' BY*             FLOAT*          NATURALN        REF             TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',27,' CHAR*           FOR*            NEW             RELEASE         UI');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',28,' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',29,' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',30,' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',31,' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',32,' COALESCE        GROUP*          NULL*           ROWID*          USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',33,' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',34,' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',35,' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',36,' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',37,' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',38,' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',39,' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',40,' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',41,' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',42,' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',43,' DATE*           INTERFACE       OR*             SQL             WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',44,' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',45,' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',46,' DECLARE         INTO*           OTHERS          START*          YEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',47,' DEFAULT*        IS*             OUT             STDDEV          ZONE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',48,' DELETE*         ISOLATION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',49,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',2,' RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',5,' Lists and executes the most recently executed SQL command or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',6,' PL/SQL block which is stored in the SQL buffer. The buffer has');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',7,' no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',9,' R[UN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',2,' SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',5,' Saves the contents of the SQL buffer in a script. The');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',6,' buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',8,' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',2,' SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',5,' Sets a system variable to alter the SQL*Plus environment settings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',6,' for your current session. For example, to:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',7,'     -   set the display width for data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',8,'     -   customize HTML formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',9,'     -   enable or disable printing of column headings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',10,'     -   set the number of lines per page');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',12,' SET system_variable value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',14,' where system_variable and value represent one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',16,'   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',17,'   ARRAY[SIZE] {15|n}                       NULL text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',18,'   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',19,'   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',20,'   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',21,'   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',22,'     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',23,'   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',24,'   CMDS[EP] {;|c|OFF|ON}                    ROWPREF[ETCH] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',25,'   COLINVI[SIBLE] {OFF|ON}                  SERVEROUT[PUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',26,'   COLSEP {_|text}                            [SIZE {n | UNLIMITED}]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',27,'   CON[CAT] {.|c|ON|OFF}                      [FOR[MAT]  {WRA[PPED]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',28,'   COPYC[OMMIT] {0|n}                          WOR[D_WRAPPED]|TRU[NCATED]}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',29,'   COPYTYPECHECK {ON|OFF}                   SHIFT[INOUT] {VIS[IBLE] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',30,'   DEF[INE] {&|c|ON|OFF}                      INV[ISIBLE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',31,'   DESCRIBE [DEPTH {1|n|ALL}]               SHOW[MODE] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',32,'     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SQLBL[ANKLINES] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',33,'   ECHO {OFF|ON}                            SQLC[ASE] {MIX[ED] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',34,'   EDITF[ILE] file_name[.ext]                 LO[WER] | UP[PER]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',35,'   EMB[EDDED] {OFF|ON}                      SQLCO[NTINUE] {> | text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',36,'   ERRORL[OGGING] {ON|OFF}                  SQLN[UMBER] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',37,'     [TABLE [schema.]tablename]             SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',38,'     [TRUNCATE] [IDENTIFIER identifier]     SQLPRE[FIX] {#|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',39,'   ESC[APE] {\|c|OFF|ON}                    SQLP[ROMPT] {SQL>|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',40,'   ESCCHAR {@|?|%|$|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',41,'   EXITC[OMMIT] {ON|OFF}                    STATEMENTC[ACHE] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',42,'   FEED[BACK] {6|n|ON|OFF|ONLY}[SQL_ID]     SUF[FIX] {SQL|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',43,'   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TAB {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',44,'   FLU[SH] {ON|OFF}                         TERM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',45,'   HEA[DING] {ON|OFF}                       TI[ME] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',46,'   HEADS[EP] {||c|ON|OFF}                   TIMI[NG] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',47,'   HIST[ORY] {ON|OFF|N}                     TRIM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',48,'   INSTANCE [instance_path|LOCAL]           TRIMS[POOL] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',49,'   LIN[ESIZE] {80|n|WINDOW}                 UND[ERLINE] {-|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',50,'   LOBOF[FSET] {1|n}                        VER[IFY] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',51,'   LOBPREF[ETCH] {n}                        WRA[P] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',52,'   LOGSOURCE [pathname]                     XQUERY {BASEURI text|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',53,'   LONG {80|n}                                ORDERING{UNORDERED|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',54,'   LONGC[HUNKSIZE] {80|n}                     ORDERED|DEFAULT}|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',55,'   MARK[UP] {HTML html_option|CSV csv_option} NODE{BYVALUE|BYREFERENCE|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',56,'     html_option;                             DEFAULT}|CONTEXT text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',57,'       {ON|OFF} [HEAD text] [BODY text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',58,'       [TABLE {ON|OFF}] [ENTMAP {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',59,'       [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',60,'     csv_option:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',61,'       {ON|OFF} [DELIM[ITER] {c}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',62,'       [QUOTE {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',63,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',2,' SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',5,' Shows the value of a SQL*Plus system variable, or the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',6,' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',8,' SHO[W] option');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',10,' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',11,'     system_variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',12,'     ALL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',13,'     BTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',14,'     CON_ID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',15,'     CON_NAME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',16,'     EDITION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',17,'     ERR[ORS] [{ANALYTIC VIEW | ATTRIBUTE DIMENSION | HIERARCHY | FUNCTION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',18,'        | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER | VIEW | TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',19,'        | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',20,'     LNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',21,'     PARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',22,'     PDBS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',23,'     PNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',24,'     RECYC[LEBIN] [original_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',25,'     REL[EASE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',26,'     REPF[OOTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',27,'     REPH[EADER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',28,'     SGA');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',29,'     SPOO[L]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',30,'     SPPARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',31,'     SQLCODE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',32,'     TTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',33,'     USER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',34,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',2,' SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',5,' Shuts down a currently running Oracle Database instance, optionally');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',6,' closing and dismounting a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',8,' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',2,' SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',5,' Stores query results in a file, or optionally sends the file to a printer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',7,' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',2,' SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',5,' Starts SQL*Plus from the operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',7,' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',9,' where option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',10,'     -H[ELP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',11,'     | -V[ERSION]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',12,'     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',13,'        [-M[ARKUP] markup_option] [-NOLOGINTIME] [-R[ESTRICT] {1|2|3}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',14,'	[-S[ILENT]] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',16,' and where markup_option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',17,'     {HTML html_options|CSV csv_options}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',18,'     See SET MARKUP command for detailed HTML and CSV options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',19,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',20,' and where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',21,'     {username[/password][@connect_identifier] | /}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',22,'     [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',23,'     [edition=value]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',24,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',25,' and where start has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',26,'     @{url|filename[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',27,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',2,' START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',5,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',6,' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',8,' STA[RT] {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',10,' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',12,'    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',2,' STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',5,' Starts an Oracle instance with several options, including mounting,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',6,' and opening a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',8,' STARTUP db_options | cdb_options | upgrade_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',10,' where db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',11,'    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',12,'    [ OPEN [open_db_options] [dbname] ] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',13,'    NOMOUNT ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',15,'    where open_db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',16,'       READ {ONLY | WRITE [RECOVER]} | RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',18,' where cdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',19,'    root_connection_options | pdb_connection_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',21,' where root_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',22,'    PLUGGABLE DATABASE pdbname');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',23,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',24,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',25,' where pdb_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',26,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',27,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',28,'    where open_pdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',29,'       READ WRITE | READ ONLY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',30,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',31,' and where upgrade_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',32,'    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',33,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',2,' STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',5,' Saves attributes of the current SQL*Plus environment in a script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',7,' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',2,' TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',5,' Records timing data for an elapsed time period, lists the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',6,' timer''s name and timing data, or lists the number of active timers.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',8,' TIMI[NG] [START text|SHOW|STOP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',2,' TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',5,' Places and formats a title at the top of each report page.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',6,' Enter TTITLE with no clause to list its current definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',8,' The old form of TTITLE is used if only a single word or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',9,' a string in quotes follows the TTITLE command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',11,' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',13,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',15,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',16,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',17,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',2,' UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',5,' Deletes one or more substitution variables that you defined either');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',6,' explicitly (with the DEFINE command), or implicitly (with a START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',7,' command argument).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',9,' UNDEF[INE] variable ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',2,' VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',5,' Declares a bind variable that can be referenced in PL/SQL, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',6,' lists the current display characteristics for a single variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',7,' or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',9,' VAR[IABLE] [<variable> [type][=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',11,' where type represents one of the following:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',13,'     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',14,'     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',15,'     NVARCHAR2 (n)  CLOB          NCLOB');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',16,'     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',18,' One can assign value to a variable for input with the new syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',19,' Example:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',20,'   VARIABLE tmp_var VAHRCHAR2(10)=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',21,'   or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',22,'   VARIABLE tmp_var VAHRCHAR2(10)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',23,'   VARIABLE tmp_var=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',24,'   EXECUTE DBMS_OUTPUT.PUT_LINE(:tmp_var)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',25,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',2,' WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',3,' ----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',5,' Performs the specified action (exits SQL*Plus by default) if an');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',6,' operating system error occurs (such as a file writing error).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',8,' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',9,'                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',2,' WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',3,' -----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',5,' Performs the specified action (exits SQL*Plus by default) if a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',6,' SQL command or PL/SQL block generates an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',8,' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',9,'                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',2,' XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',5,' Performs an XQuery 1.0 query on a specified database. Attempting to use');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',6,' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',7,' an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',9,' XQUERY xquery_statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',2,' Help is available on the following topics:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',3,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',11,'/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',12,'@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',13,'@@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',14,'ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',15,'APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',16,'ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',17,'ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',18,'BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',19,'BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',20,'CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',21,'CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',22,'COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',23,'COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',24,'CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',25,'COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',26,'DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',27,'DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',28,'DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',29,'DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',30,'EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',31,'EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',32,'EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',33,'GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',34,'HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',35,'HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',36,'HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',37,'INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',38,'INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',39,'LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',40,'MENU');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',41,'PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',42,'PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',43,'PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',44,'PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',45,'QUIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',46,'RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',47,'REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',48,'REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',49,'REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',50,'RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',51,'RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',52,'RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',53,'SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',54,'SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',55,'SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',56,'SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',57,'SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',58,'SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',59,'START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',60,'STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',61,'STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',62,'TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',63,'TOPICS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',64,'TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',65,'UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',66,'VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',67,'WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',68,'WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',69,'XQUERY');
REM INSERTING into SYSTEM.LICHSUKHAMBENH
SET DEFINE OFF;
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS8400',3,to_date('29-DEC-20','DD-MON-RR'),21000,'53','NV00732');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS0603',4,to_date('07-FEB-20','DD-MON-RR'),33000,'5','NV00548');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2203',4,to_date('15-MAR-20','DD-MON-RR'),85000,'90','NV00034');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS8662',3,to_date('15-SEP-20','DD-MON-RR'),28000,'86','NV00397');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS0030',2,to_date('29-SEP-20','DD-MON-RR'),81000,'92','NV00936');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS8467',4,to_date('12-OCT-20','DD-MON-RR'),52000,'10','NV00529');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS1418',1,to_date('20-AUG-20','DD-MON-RR'),44000,'98','NV00902');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2918',2,to_date('05-JUL-20','DD-MON-RR'),43000,'76','NV00334');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS7097',1,to_date('21-MAY-20','DD-MON-RR'),56000,'82','NV00397');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS5839',1,to_date('10-SEP-20','DD-MON-RR'),55000,'50','NV00501');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS4308',4,to_date('20-MAY-20','DD-MON-RR'),57000,'14','NV00775');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2543',5,to_date('13-APR-20','DD-MON-RR'),79000,'8','NV00287');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2528',1,to_date('21-MAR-20','DD-MON-RR'),13000,'27','NV00835');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS3002',5,to_date('20-AUG-20','DD-MON-RR'),3000,'2','NV00762');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS7694',1,to_date('05-SEP-20','DD-MON-RR'),99000,'45','NV00835');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS4319',2,to_date('16-SEP-20','DD-MON-RR'),71000,'62','NV00989');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS5685',5,to_date('09-APR-20','DD-MON-RR'),17000,'55','NV00252');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS0450',5,to_date('02-SEP-20','DD-MON-RR'),73000,'48','NV00081');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS4032',3,to_date('09-JUN-20','DD-MON-RR'),59000,'65','NV00936');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS4875',4,to_date('02-SEP-20','DD-MON-RR'),18000,'31','NV00081');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS1139',5,to_date('15-DEC-20','DD-MON-RR'),31000,'85','NV00775');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS5178',1,to_date('14-NOV-20','DD-MON-RR'),81000,'33','NV00427');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS1556',5,to_date('21-DEC-20','DD-MON-RR'),2000,'81','NV00113');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS6250',5,to_date('23-DEC-20','DD-MON-RR'),60000,'25','NV00585');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2575',1,to_date('11-MAY-20','DD-MON-RR'),54000,'92','NV00912');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS0001',4,to_date('20-JUN-20','DD-MON-RR'),31000,'8','NV00416');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS0008',3,to_date('06-FEB-20','DD-MON-RR'),50000,'23','NV00661');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS9906',3,to_date('06-DEC-20','DD-MON-RR'),32000,'65','NV00397');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS6617',2,to_date('16-DEC-20','DD-MON-RR'),4000,'36','NV00068');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS4813',4,to_date('16-AUG-20','DD-MON-RR'),70000,'76','NV00043');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS8010',1,to_date('21-JUN-20','DD-MON-RR'),35000,'21','NV00252');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS9945',2,to_date('26-JAN-20','DD-MON-RR'),31000,'27','NV00775');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS8108',2,to_date('19-NOV-20','DD-MON-RR'),14000,'74','NV00334');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS8576',5,to_date('07-SEP-20','DD-MON-RR'),52000,'28','NV00172');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS7356',2,to_date('08-DEC-20','DD-MON-RR'),87000,'62','NV00989');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS1853',3,to_date('17-MAY-20','DD-MON-RR'),87000,'96','NV00277');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS3950',1,to_date('20-JUL-20','DD-MON-RR'),32000,'1','NV00218');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS6673',3,to_date('15-MAY-20','DD-MON-RR'),47000,'5','NV00277');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2500',5,to_date('06-OCT-20','DD-MON-RR'),45000,'32','NV00585');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS5749',4,to_date('15-SEP-20','DD-MON-RR'),91000,'47','NV00342');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS4267',4,to_date('26-SEP-20','DD-MON-RR'),55000,'41','NV00113');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS1015',2,to_date('09-JUL-20','DD-MON-RR'),66000,'60','NV00334');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS9476',1,to_date('18-MAR-20','DD-MON-RR'),89000,'2','NV00202');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS7901',5,to_date('08-NOV-20','DD-MON-RR'),74000,'41','NV00342');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS7867',4,to_date('28-MAY-20','DD-MON-RR'),85000,'78','NV00953');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS3552',5,to_date('07-MAR-20','DD-MON-RR'),3000,'54','NV00342');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS6348',2,to_date('30-JUL-20','DD-MON-RR'),33000,'76','NV00762');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS2182',5,to_date('23-AUG-20','DD-MON-RR'),30000,'11','NV00762');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS5760',4,to_date('24-OCT-20','DD-MON-RR'),26000,'85','NV00287');
Insert into SYSTEM.LICHSUKHAMBENH (MALICHSU,LANKHAM,THOIGIAN,CHIPHI,MAKHAMBENH,MANV) values ('LS5284',5,to_date('26-JUL-20','DD-MON-RR'),10000,'55','NV00081');
REM INSERTING into SYSTEM.LICHSUTRUC
SET DEFINE OFF;
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00034','P203','3',to_date('20-MAY-04','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00043','P201','3',to_date('20-SEP-09','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00043','P204','3',to_date('20-DEC-02','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00043','P205','1',to_date('21-JAN-04','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00068','P202','3',to_date('20-JUN-15','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00068','P203','2',to_date('20-DEC-24','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00068','P205','3',to_date('20-AUG-05','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00068','P205','3',to_date('20-JUN-09','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00081','P204','1',to_date('20-JUL-20','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00081','P204','2',to_date('20-MAR-31','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00113','P203','1',to_date('20-DEC-14','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00113','P204','1',to_date('20-JUN-27','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00113','P205','2',to_date('20-AUG-29','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00113','P206','3',to_date('20-DEC-11','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00131','P206','3',to_date('20-FEB-23','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00172','P201','1',to_date('20-JUN-08','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00172','P204','1',to_date('20-FEB-24','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00197','P202','1',to_date('20-DEC-19','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00218','P201','3',to_date('20-NOV-08','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00218','P204','2',to_date('20-FEB-23','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00252','P201','1',to_date('20-DEC-22','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00252','P206','2',to_date('20-APR-07','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00277','P203','3',to_date('20-FEB-22','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00287','P203','2',to_date('20-APR-19','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00287','P205','2',to_date('20-APR-26','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00287','P206','2',to_date('20-JUL-09','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00287','P206','3',to_date('20-AUG-24','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00296','P201','3',to_date('20-AUG-07','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00296','P203','2',to_date('20-FEB-15','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00296','P206','2',to_date('20-AUG-25','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00335','P204','2',to_date('20-MAR-22','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00335','P204','3',to_date('20-AUG-21','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00335','P205','2',to_date('20-JAN-19','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00342','P203','1',to_date('20-JUN-04','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00342','P205','3',to_date('20-FEB-08','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00397','P201','2',to_date('20-MAR-20','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00397','P202','1',to_date('20-JUN-01','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00397','P203','3',to_date('20-MAY-22','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00416','P203','3',to_date('20-MAR-26','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00416','P204','2',to_date('20-NOV-15','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00427','P203','3',to_date('20-MAR-26','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00427','P206','2',to_date('20-JUL-10','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00455','P201','3',to_date('20-FEB-01','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00455','P202','1',to_date('20-APR-11','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00455','P204','3',to_date('20-JUN-15','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00461','P202','1',to_date('20-OCT-18','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00469','P202','1',to_date('20-JUN-26','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00469','P204','1',to_date('20-JUN-10','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00469','P206','2',to_date('20-JAN-28','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00501','P201','1',to_date('20-JAN-15','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00501','P204','2',to_date('20-SEP-04','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00515','P206','3',to_date('20-JUL-14','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00529','P202','1',to_date('20-JAN-30','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00529','P205','1',to_date('20-SEP-13','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00529','P205','2',to_date('20-JUL-04','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00529','P205','2',to_date('20-DEC-11','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00529','P206','2',to_date('20-DEC-22','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00542','P203','1',to_date('20-SEP-13','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00542','P204','3',to_date('20-NOV-20','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00542','P206','3',to_date('20-APR-21','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00548','P202','2',to_date('20-SEP-16','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00553','P201','1',to_date('20-MAR-30','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00553','P202','3',to_date('20-MAY-02','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00553','P206','1',to_date('20-AUG-12','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00597','P204','1',to_date('20-AUG-14','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00597','P205','1',to_date('20-NOV-12','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00606','P203','2',to_date('20-MAY-01','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00606','P206','1',to_date('20-AUG-25','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00622','P203','1',to_date('20-APR-02','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00659','P202','1',to_date('20-JUL-28','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00659','P203','1',to_date('20-DEC-13','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00659','P206','1',to_date('20-FEB-08','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00659','P206','1',to_date('20-SEP-20','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00691','P201','2',to_date('20-APR-12','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00691','P206','1',to_date('20-AUG-02','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00732','P201','3',to_date('20-JUL-15','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00732','P201','3',to_date('20-AUG-23','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00762','P204','1',to_date('20-JUL-20','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00775','P203','1',to_date('20-NOV-24','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00775','P204','3',to_date('20-MAR-04','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00775','P204','3',to_date('20-OCT-06','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00780','P201','2',to_date('20-APR-17','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00780','P201','3',to_date('20-MAR-16','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00780','P203','3',to_date('20-MAR-24','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00780','P205','1',to_date('20-APR-22','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00780','P205','2',to_date('20-FEB-07','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00835','P202','3',to_date('20-JAN-25','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00835','P205','3',to_date('20-JUN-18','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00869','P204','1',to_date('20-APR-09','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00869','P206','1',to_date('20-MAR-21','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00902','P202','1',to_date('20-DEC-03','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00902','P203','3',to_date('20-DEC-08','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00902','P204','3',to_date('20-AUG-17','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00936','P204','1',to_date('20-JUL-01','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00936','P206','3',to_date('20-MAY-13','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00953','P202','2',to_date('20-MAY-01','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00953','P203','1',to_date('20-JAN-17','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00953','P204','1',to_date('20-FEB-24','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00989','P202','1',to_date('21-JAN-02','DD-MON-RR'));
Insert into SYSTEM.LICHSUTRUC (MANV,MAPHONG,MACATRUC,NGAYTRUC) values ('NV00989','P203','2',to_date('20-MAR-04','DD-MON-RR'));
REM INSERTING into SYSTEM.LOAIDICHVU
SET DEFINE OFF;
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0FU607Z','Supplement Left Hepatic Duct with Autol Sub, Open Approach',59000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('02174JS','Bypass L Atrium to R Pulm Vn w Synth Sub, Perc Endo',77000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0B1','Respiratory System, Bypass',70000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('F01L0ZZ','Muscle Performance Assessment of Musculosk Low Back/LE',43000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0D134K9','Bypass Low Esophag to Duoden w Nonaut Sub, Perc Endo',63000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0QPK35Z','Removal of Ext Fix from L Fibula, Perc Approach',92000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0X0807Z','Alteration of Right Upper Arm with Autol Sub, Open Approach',88000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('095P4ZZ','Destruction of Accessory Sinus, Perc Endo Approach',16000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('F08G5YZ','Wound Mgmt Treatment of Integu Low Back/LE using Oth Equip',57000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0BYD0Z2','Transplantation of R Mid Lung Lobe, Zooplast, Open Approach',13000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0U9K0ZX','Drainage of Hymen, Open Approach, Diagnostic',91000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('03VV3DZ','Restrict of L Thyroid Art with Intralum Dev, Perc Approach',93000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0RC00ZZ','Extirpation of Matter from Occip Jt, Open Approach',49000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('051C4KY','Bypass L Basilic Vein to Up Vein w Nonaut Sub, Perc Endo',11000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('05QV3ZZ','Repair Left Face Vein, Percutaneous Approach',76000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0VMF0ZZ','Reattachment of Right Spermatic Cord, Open Approach',91000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0SS9XZZ','Reposition Right Hip Joint, External Approach',64000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0U9G80Z','Drainage of Vagina with Drainage Device, Endo',91000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0M910ZZ','Drainage of Right Shoulder Bursa and Ligament, Open Approach',2000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0X960ZX','Drainage of Right Upper Extremity, Open Approach, Diagnostic',73000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0D5Q0ZZ','Destruction of Anus, Open Approach',41000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0QH904Z','Insertion of Int Fix into L Femur Shaft, Open Approach',10000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0G5F0ZZ','Destruction of Paraganglion Extremity, Open Approach',19000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('30273J1','Transfuse Nonaut Serum Albumin in POC, Circ, Perc',47000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0M983ZZ','Drainage of Left Hand Bursa and Ligament, Perc Approach',21000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('BT1C0ZZ','Fluoroscopy of Ileal Diversion Loop using H Osm Contrast',68000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('F06ZBYZ','Receptive/Expressive Language Treatment using Oth Equip',20000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('06UY37Z','Supplement Lower Vein with Autol Sub, Perc Approach',85000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0HR9X73','Replace Perineum Skin w Autol Sub, Full Thick, Extern',51000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0DH93DZ','Insertion of Intralum Dev into Duodenum, Perc Approach',32000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0PBD3ZX','Excision of Left Humeral Head, Percutaneous Approach, Diagn',4000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('075B0ZZ','Destruction of Mesenteric Lymphatic, Open Approach',61000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0YPB4JZ','Removal of Synth Sub from L Low Extrem, Perc Endo Approach',61000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('F00ZPYZ','Oral Peripheral Mechanism Assessment using Other Equipment',92000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('02724TZ','Dilate 3 Cor Art w Radioact Intralum, Perc Endo',63000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('2W0GXYZ','Change Other Device on Right Thumb',21000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0DFK0ZZ','Fragmentation in Ascending Colon, Open Approach',41000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0FC94ZZ','Extirpation of Matter from Com Bile Duct, Perc Endo Approach',61000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0D154J6','Bypass Esophag to Stomach with Synth Sub, Perc Endo Approach',10000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0RR60JZ','Replacement of Thor Jt with Synth Sub, Open Approach',23000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('03R34JZ','Replace of R Subclav Art with Synth Sub, Perc Endo Approach',45000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('09PH07Z','Removal of Autol Sub from R Ear, Open Approach',99000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('D9061ZZ','Beam Radiation of Salivary Glands using Photons 1 - 10 MeV',61000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('377076','Dilate R Brach Art, Bifurc, w 4 Drug-elut, Open',19000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('DT12BBZ','LDR Brachytherapy of Bladder using Palladium 103',97000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0B937ZZ','Drainage of Right Main Bronchus, Via Opening',7000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0VJS4ZZ','Inspection of Penis, Percutaneous Endoscopic Approach',72000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('04H543Z','Insert Infusion Dev in Sup Mesent Art, Perc Endo',45000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('047C4D6','Dilate R Com Iliac Art, Bifurc, w Intralum Dev, Perc Endo',84000);
Insert into SYSTEM.LOAIDICHVU (MALOAIDICHVU,TENLOAIDICHVU,CHIPHI) values ('0BV30CZ','Restriction of R Main Bronc with Extralum Dev, Open Approach',94000);
REM INSERTING into SYSTEM.NHANVIEN
SET DEFINE OFF;
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00131','Betty Hurren','Female','3378 Maple Wood Plaza','810-164-3376',940000,'montes nascetur','QLNS','GAS');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00172','Rosa Dipple','Female','882 Maple Wood Drive','253-897-9800',110000,'ut at dolor','KT','IM');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00869','Celeste Vaskov','Male','0761 Dovetail Court','303-734-5737',430000,'dis parturient','QLNS','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00613','Corey Moxson','Male','75203 Sunnyside Pass','797-839-1953',110000,'suscipit nulla','BT','NEU');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00661','Wallis Bockings','Female','6 Division Crossing','210-184-2395',490000,'vel augue vestibulum','BT','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00584','Kendra Rannie','Male','5149 Glendale Junction','673-691-7923',780000,'id lobortis convallis tortor','QLNS','AED');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00501','Danila Haselhurst','Female','98125 Dovetail Center','839-282-4216',90000,'tellus','QLTV','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00732','Jenda Lindsey','Female','00306 Kedzie Parkway','389-250-3618',630000,'amet sem','QLTN','IM');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00202','Osgood Ralphs','Female','7 Tennessee Way','790-402-3000',890000,'sed ante','BT','IM');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00775','Vick Frangione','Female','2610 Arizona Street','858-491-6589',470000,'convallis morbi','KT','CAR');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00989','Myca Tingley','Male','43 Cottonwood Parkway','549-577-9801',510000,'eros suspendisse accumsan tortor','QLTN','CAR');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00515','Judon Jindracek','Female','25398 Huxley Pass','900-889-9025',720000,'mauris viverra diam','KT','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00461','Ortensia Doak','Male','627 Scott Trail','173-473-9178',880000,'etiam pretium iaculis','TTDP','GAS');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00622','Jenelle McGinnis','Male','75 Grasskamp Terrace','638-456-6643',440000,'pede justo eu massa','KT','ODO');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00296','Danette Soreau','Female','2 Hansons Trail','474-614-9272',640000,'tortor eu pede','BT','CAR');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00081','Sharity Escala','Female','16165 Autumn Leaf Avenue','356-539-1343',100000,'congue eget','QLTN','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00335','Parnell Lapenna','Male','828 Scott Junction','180-200-3489',950000,'porttitor id consequat in','BT','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00691','Bernita Whal','Male','3185 Brickson Park Circle','533-853-4352',180000,'aliquam lacus morbi quis','QLNS','IM');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00606','Fanya Pinnell','Female','487 Redwing Center','566-788-7273',30000,'tempor convallis nulla neque','QLTN','AED');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00197','Hillyer Leggate','Female','3 Clarendon Circle','834-735-1926',820000,'sed justo pellentesque','QLTN','GAS');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00277','Ashla Thomesson','Female','3121 Dakota Plaza','776-984-5079',340000,'lacinia aenean sit','KT','END');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00427','Dacy Fletcher','Male','33 Starling Center','476-525-6464',460000,'ante','KT','IM');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00548','Jory Giovannardi','Female','11 Esch Drive','586-235-4767',460000,'nunc viverra dapibus','QLTN','NEU');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00912','Kary Romei','Male','49853 Service Center','584-720-5154',210000,'ut nulla sed accumsan','QLTV','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00455','Charmian Zupo','Female','24 Jay Court','731-421-3195',800000,'donec dapibus duis at','QLTV','AED');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00043','Tove Siggee','Male','695 Mariners Cove Park','137-603-6371',810000,'aliquam lacus','QLNS','END');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00034','Teodoro McCloughlin','Male','5 Cody Trail','966-849-1339',550000,'tellus nisi','BT','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00953','Pen Shenley','Male','0 Knutson Plaza','701-237-4288',610000,'quam sollicitudin','BT','ODO');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00342','Hale Balfre','Male','69 Anniversary Plaza','607-661-4711',540000,'mauris eget massa tempor','BT','NEU');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00597','Sherline Druhan','Female','505 Westport Crossing','325-682-2067',140000,'ultrices phasellus id','QLNS','GAS');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00113','Bea O''Shaughnessy','Male','0759 Welch Hill','398-194-9811',920000,'rhoncus aliquet pulvinar','BT','END');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00218','Angelico Furzer','Male','4629 Hauk Trail','845-731-3439',680000,'in hac habitasse platea','QLTN','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00416','Simonne Trembath','Female','2826 Vidon Parkway','693-886-0708',850000,'maecenas ut massa quis','KT','NEU');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00469','Kip Marshman','Female','48664 Bunker Hill Terrace','497-314-8493',160000,'scelerisque mauris sit','KT','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00826','Emmalee Doucette','Female','137 Merrick Avenue','569-810-8273',940000,'in quam fringilla','QLTV','AED');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00287','Phyllida Menghi','Male','19270 Hanson Point','184-795-2890',430000,'aliquam','KT','ODO');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00902','Rancell Giddons','Male','9 Shopko Trail','185-679-6196',280000,'dapibus','QLTN','CAR');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00397','Kearney Stothert','Female','68 Dunning Park','838-627-0326',980000,'imperdiet sapien urna','QLTV','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00334','Mignonne Kembry','Male','771 Gateway Hill','474-794-5444',870000,'platea dictumst','KT','NEU');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00553','Diana Weatherdon','Male','65746 Hazelcrest Terrace','226-552-5082',510000,'amet lobortis sapien','TTDP','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00936','Jillian Rickell','Female','9332 Bowman Point','125-189-7258',90000,'et','QLNS','GAS');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00762','Davey Dory','Male','4464 Di Loreto Road','655-982-2541',990000,'placerat ante nulla','KT','CAR');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00780','Laina Gisburne','Male','43056 Ohio Point','790-671-1855',800000,'vitae nisl aenean lectus','TTDP','IM');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00659','Sky Meijer','Male','1757 Center Lane','764-380-6655',820000,'in faucibus orci','BT','CAR');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00068','Freeman Delagua','Female','2548 Vera Terrace','571-233-1064',940000,'commodo vulputate','KT','DID');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00835','Sula Slimming','Female','8 Kingsford Crossing','537-994-0093',160000,'sapien','BT','GAS');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00585','Leontyne Emberton','Female','475 Russell Road','265-770-4084',900000,'montes nascetur ridiculus','KT','NEU');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00542','Devondra Elderidge','Female','3292 Ridge Oak Crossing','757-121-0144',610000,'tellus semper interdum','BT','DER');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00529','Archibald Rotherham','Female','35 Ludington Plaza','278-454-6519',940000,'montes','KT','END');
Insert into SYSTEM.NHANVIEN (MANV,HOTEN,GIOITINH,DIACHILIENLAC,SDT,LUONG,VAITRO,MABP,MAKHOA) values ('NV00252','Maureene Feldklein','Female','26 Bluestem Junction','233-224-4372',950000,'feugiat','TTDP','CAR');
REM INSERTING into SYSTEM.PHONG
SET DEFINE OFF;
Insert into SYSTEM.PHONG (MAPHONG,TENPHONG) values ('P201','Ke Hoach Tong Hop');
Insert into SYSTEM.PHONG (MAPHONG,TENPHONG) values ('P202','To Chuc Can Bo');
Insert into SYSTEM.PHONG (MAPHONG,TENPHONG) values ('P203','Vat Tu Thiet Bi');
Insert into SYSTEM.PHONG (MAPHONG,TENPHONG) values ('P204','Cong Nghe Thong Tin');
Insert into SYSTEM.PHONG (MAPHONG,TENPHONG) values ('P205','Quan Ly Chat Luong');
Insert into SYSTEM.PHONG (MAPHONG,TENPHONG) values ('P206','Dieu Duong');
REM INSERTING into SYSTEM.THANGNAM
SET DEFINE OFF;
Insert into SYSTEM.THANGNAM (THANG,NAM) values (1,2021);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (2,2021);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (3,2021);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (4,2021);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (5,2021);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (6,2021);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (7,2020);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (8,2020);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (9,2020);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (10,2020);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (11,2020);
Insert into SYSTEM.THANGNAM (THANG,NAM) values (12,2020);
REM INSERTING into SYSTEM.THUOC
SET DEFINE OFF;
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49348-633','Psyllium husk','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',4900,'mi');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('63517-016','Fluoride Anticavity Toothpaste','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',2200,'ut tellus nulla');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('53499-5272','Pelargonium sidoides','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',6100,'platea');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49349-639','Levothyroxine Sodium','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Fusce consequat. Nulla nisl. Nunc nisl.',3600,'bibendum imperdiet nullam');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('57237-028','Amoxicillin','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',6800,'sed lacus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('62011-0195','Dextromethorphan HBr, Guaifenesin, Phenylephrine HCl','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',2400,'maecenas leo odio');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0002-5800','Atomoxetine hydrochloride','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',6400,'a');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('36987-1067','Hamster Epithelium','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',7400,'nulla');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('36987-1190','Bluefish','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',1100,'pede');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('50845-0045','Alumina, Arsenicum Metallicum, Mercurius Corrosivus, Niccolum Metallicum, Plumbum Metallicum, Radium Bromatum, Stannum Metallicum,','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',8400,'dui');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('52125-637','PROMETHAZINE HYDROCHLORIDE','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.',7700,'cubilia curae');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('50563-133','ALCOHOL','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',8300,'suspendisse');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('50436-3621','diclofenac sodium','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',2100,'blandit mi in');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('58118-0293','verapamil hydrochloride','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',3200,'eleifend pede libero');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('59985-217','Tabacum, HPUS,Cocculus, HPUS,Ipecacuanha, HPUS','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.',8700,'blandit nam nulla');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('50419-171','regorafenib','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',7400,'iaculis congue vivamus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0942-6470','Anticoagulant Citrate Phosphate Dextrose (CPD) Solution and ADSOL Preservation Solution','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',4000,'sociis natoque');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('51346-050','TITANIUM DIOXIDE, ZINC OXIDE','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',9900,'ut dolor');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('55289-370','doxepin hydrochloride','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',2400,'sollicitudin vitae');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0615-7641','Lisinopril','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',1900,'vel nulla eget');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('10210-0006','AVOBENZONE, OCTISALATE, HOMOSALATE, OCTOCRYLENE','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',5500,'mauris ullamcorper');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('63739-438','Simvastatin','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',1200,'mus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49873-056','tolnaftate','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',6700,'in');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('48951-8246','Sulfur 6 Special Order','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',100,'morbi odio odio');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49738-553','CETYLPYRIDINIUM CHLORIDE','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',4500,'posuere felis sed');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0409-2307','MIDAZOLAM HYDROCHLORIDE','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',7500,'hac habitasse');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('48951-1172','Astragalus e rad. 1%','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.',3700,'dolor');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0172-5413','Fluconazole','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',6600,'integer non velit');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('63187-062','Tramadol Hydrochloride','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Sed ante. Vivamus tortor. Duis mattis egestas metus.',1300,'odio in hac');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('65162-679','Promethazine and Phenylephrine','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',5500,'platea');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('54868-3952','donepezil hydrochloride','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',2300,'eget elit');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0573-0196','chlorpheniramine maleate, ibuprofen, and phenylephrine hydrochloride','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',4800,'et magnis');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('68428-093','CINCHONA OFFICINALIS BARK','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',9500,'donec');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('36987-2890','Water Oak','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',1700,'augue aliquam erat');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('55301-000','OCTINOXATE OXYBENZONE','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',10000,'nisl ut');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('65044-3585','Shrimp Crago sp.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',500,'dictumst');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49999-455','moxifloxacin hydrochloride','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',2900,'maecenas tincidunt lacus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('11822-2461','Colloidal Oatmeal','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Fusce consequat. Nulla nisl. Nunc nisl.',3500,'volutpat');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0143-9924','Cefazolin','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',100,'et ultrices');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('55758-007','DEXTROMETHORPHAN HYDROBROMIDE and GUAIFENESIN','Sed ante. Vivamus tortor. Duis mattis egestas metus.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',3000,'blandit nam nulla');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('65862-172','Topiramate','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',4300,'sagittis sapien');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('54622-104','ALCOHOL','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',700,'et');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0781-5275','Donepezil Hydrochloride','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',1700,'arcu');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('67510-0057','Tolnaftate','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',5400,'maecenas tristique');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('10812-321','Avobenzone, Homosalate, Octisalate, Octocrylene, and Oxybenzone','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','Sed ante. Vivamus tortor. Duis mattis egestas metus.',8000,'in blandit');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('60429-348','Phenelzine Sulfate','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',6400,'lacus at velit');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('60512-6568','CARDUUS MARIANUS','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',1900,'vulputate justo in');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('68472-119','OCTINOXATE','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',3700,'imperdiet et');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('25000-138','Naproxen','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',100,'consectetuer');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0536-2425','Chloraseptic','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',5100,'feugiat non');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49884-835','Morphine Sulfate','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',4100,'ut massa');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('36987-2975','Scrub Pine','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',6700,'dui luctus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('33992-4949','Ethyl Alcohol','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',8400,'interdum in');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0009-0331','clindamycin hydrochloride','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',6000,'convallis morbi odio');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0280-1159','Acetaminophen, Dextromethorphan hydrobromide, guaifenesin, and Phenylephrine hydrochloride','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',3800,'adipiscing');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0135-0435','sodium fluoride','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',9200,'amet sapien dignissim');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0067-0116','Simethicone','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',3900,'sapien sapien non');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('16590-102','GABAPENTIN','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',1000,'sapien placerat ante');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0409-4011','VERAPAMIL HYDROCHLORIDE','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',5900,'odio');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('51389-120','OCTOCRYLENE AVOBENZONE OCTISALATE','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',3200,'lorem ipsum');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('50201-0246','ASPIRIN, CHLORPHENIRAMINE MALEATE, PHENYLEPHRINE BITARTRATE','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',7600,'lorem ipsum');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('52959-535','temazepam','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',1700,'consectetuer adipiscing elit');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('54868-5876','miconazole nitrate','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',1700,'convallis nulla neque');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0268-6643','Virginia Live Oak','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',1300,'justo nec condimentum');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('58118-1812','Nortriptyline Hydrochloride','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',5500,'pulvinar');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0781-5748','methylphenidate hydrochloride','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',400,'ac lobortis');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0703-7023','Haloperidol Decanoate','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',8400,'quis orci');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('68084-863','Hydrocodone Bitartrate And Acetaminophen','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',100,'amet sem fusce');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('35356-958','Oxybutynin Chloride','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',7100,'eu massa');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('36987-2168','Wheat Smut','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',4800,'aenean');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0268-0821','ASPERGILLUS FUMIGATUS','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',1600,'consequat');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('44911-0052','Aconitum Napellus, Arsenicum Album, Baptisia Tinctoria, Belladonna, Bryonia, Causticum, Echinacea, Eupatorium Perfoliatum','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',5000,'ultrices posuere');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('36987-2352','Para Grass Pollen','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',8200,'diam nam');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('60764-009','Titanium Dioxide','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',4100,'donec vitae nisi');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('64720-132','Dextroamphetamine saccharate and amphetamine aspartate monohydrate and dextroamphetamine sulfate and amphetamine sulfate','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',3600,'tempus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('42783-601','Doxycycline','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',5000,'morbi porttitor lorem');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('49035-224','Loperamide Hydrochloride','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',6600,'in hac habitasse');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('60681-1277','serratia marcescens','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',500,'morbi');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('68737-227','Acetaminophen, Dextromethorphan Hydrobromide, Guaifenesin, and Phenylephrine Hydrochloride','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Phasellus in felis. Donec semper sapien a libero. Nam dui.',3300,'consequat lectus in');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('63629-4980','Fentanyl','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1000,'nisl');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('63739-500','Lorazepam','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',2500,'gravida nisi at');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0268-6761','California Walnut Black Pollen','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',9400,'primis');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('13537-101','Octinoxate and Oxybenzone','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Fusce consequat. Nulla nisl. Nunc nisl.',5200,'sodales');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('57472-004','Carbon Dioxide','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',600,'at');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('13925-160','Lidocaine Hydrochloride and Hydrocortisone Acetate','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',5700,'leo');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('42254-054','Gabapentin','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',6800,'nullam');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('53440-005','Air','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',4400,'dapibus duis at');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('59779-889','Acetaminophen, Phenylephrine HCl, Dextromethorphan HBr, Guiafenesin','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',7500,'tristique tortor');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('17630-2019','Avobenzone and Octocrylene and Oxybenzone','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',3200,'amet');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('54973-3223','ATROPA BELLADONNA, LYTTA VESICATORIA, APIS MELLIFERA, ARNICA MONTANA, ONION, RHUS AROMATICA ROOT BARK, and EQUISETUM HYEMALE','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',5600,'vivamus');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('37205-931','phenylephrine hcl, brompheniramine maleate','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',4500,'sapien');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0093-5787','Entecavir','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',2800,'duis');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0869-0211','ISOPROPYL ALCOHOL','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',8100,'proin leo odio');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('27505-004','APOMORPHINE HYDROCHLORIDE','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',9800,'augue aliquam');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('0942-6326','Anticoagulant Citrate Phosphate Dextrose Adenine','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',3200,'mi sit amet');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('60986-1003','Formicum acidum, Lachesis mutus, luffa Operculata. Petroleum, Rhus Toxicodebdron, Aralai racemosa,Galphimia glauca, thuja occidentalis, Urtica dicica and Cardiospermum','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.',7900,'varius');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('65044-4708','AP House Dust Mix','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',6000,'vel');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('65862-118','Benazepril Hydrochloride','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',300,'est risus auctor');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('68151-0149','Ethambutol Hydrochloride','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',5000,'ipsum primis in');
Insert into SYSTEM.THUOC (MATHUOC,TENTHUOC,CONGDUNG,CHONGCHIDINH,GIA,DONVI) values ('59630-074','butalbital, acetaminophen and caffeine','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Sed ante. Vivamus tortor. Duis mattis egestas metus.',9600,'velit vivamus');
REM INSERTING into SYSTEM.TTDV
SET DEFINE OFF;
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00397','HD7120',to_date('11-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('02174JS','NV00287','HD2156',to_date('22-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0X960ZX','NV00287','HD8183',to_date('25-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F08G5YZ','NV00335','HD5148',to_date('30-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0X960ZX','NV00277','HD5346',to_date('17-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0B937ZZ','NV00218','HD9891',to_date('06-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0D134K9','NV00501','HD9835',to_date('29-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00334','HD9296',to_date('03-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('05QV3ZZ','NV00461','HD0259',to_date('06-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('047C4D6','NV00461','HD3220',to_date('03-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0VMF0ZZ','NV00622','HD6066',to_date('30-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('09PH07Z','NV00202','HD4605',to_date('06-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0BV30CZ','NV00775','HD1221',to_date('09-OCT-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00691','HD7087',to_date('21-OCT-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0QH904Z','NV00826','HD3258',to_date('13-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0QPK35Z','NV00989','HD3088',to_date('12-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('047C4D6','NV00172','HD0122',to_date('08-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F08G5YZ','NV00397','HD3796',to_date('18-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RC00ZZ','NV00780','HD3399',to_date('26-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('D9061ZZ','NV00826','HD8053',to_date('01-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('BT1C0ZZ','NV00197','HD3331',to_date('17-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0DH93DZ','NV00252','HD7205',to_date('31-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0FU607Z','NV00287','HD0523',to_date('07-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('02174JS','NV00529','HD2683',to_date('18-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0U9G80Z','NV00936','HD7516',to_date('19-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('05QV3ZZ','NV00455','HD2841',to_date('05-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0VMF0ZZ','NV00835','HD2785',to_date('13-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0B1','NV00691','HD2861',to_date('09-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0HR9X73','NV00869','HD2359',to_date('20-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0U9K0ZX','NV00548','HD1903',to_date('11-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0B937ZZ','NV00606','HD8896',to_date('16-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0U9G80Z','NV00296','HD5591',to_date('21-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F01L0ZZ','NV00597','HD0732',to_date('03-OCT-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00732','HD8939',to_date('12-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F06ZBYZ','NV00542','HD9525',to_date('03-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00252','HD4696',to_date('26-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0HR9X73','NV00835','HD0535',to_date('03-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0YPB4JZ','NV00597','HD4751',to_date('23-OCT-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('03VV3DZ','NV00953','HD0561',to_date('10-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0X0807Z','NV00732','HD8304',to_date('19-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F01L0ZZ','NV00902','HD5018',to_date('13-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('06UY37Z','NV00277','HD1994',to_date('23-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('03R34JZ','NV00202','HD9308',to_date('10-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RC00ZZ','NV00691','HD5909',to_date('27-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0DH93DZ','NV00501','HD7938',to_date('13-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00597','HD8494',to_date('15-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('095P4ZZ','NV00427','HD6656',to_date('10-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00936','HD8356',to_date('06-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00252','HD3085',to_date('24-SEP-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00606','HD7908',to_date('12-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00659','HD7120',to_date('28-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('03R34JZ','NV00113','HD2156',to_date('04-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('BT1C0ZZ','NV00427','HD8183',to_date('14-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('02724TZ','NV00597','HD5148',to_date('20-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0B937ZZ','NV00043','HD5346',to_date('23-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F01L0ZZ','NV00835','HD9891',to_date('08-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0VJS4ZZ','NV00131','HD9835',to_date('14-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('30273J1','NV00296','HD9296',to_date('29-APR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('2W0GXYZ','NV00397','HD0259',to_date('04-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0D134K9','NV00469','HD3220',to_date('06-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('06UY37Z','NV00622','HD6066',to_date('09-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('09PH07Z','NV00335','HD4605',to_date('14-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0YPB4JZ','NV00936','HD1221',to_date('31-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('095P4ZZ','NV00277','HD7087',to_date('21-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0YPB4JZ','NV00622','HD3258',to_date('28-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('2W0GXYZ','NV00287','HD3088',to_date('02-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0VMF0ZZ','NV00416','HD0122',to_date('13-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0B1','NV00342','HD3796',to_date('06-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0D154J6','NV00197','HD3399',to_date('23-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0DH93DZ','NV00043','HD8053',to_date('28-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0SS9XZZ','NV00416','HD3331',to_date('29-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('BT1C0ZZ','NV00068','HD7205',to_date('12-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0BYD0Z2','NV00202','HD0523',to_date('13-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00659','HD2683',to_date('29-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0M983ZZ','NV00548','HD7516',to_date('23-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0SS9XZZ','NV00461','HD2841',to_date('04-AUG-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0X960ZX','NV00202','HD2785',to_date('04-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00775','HD2861',to_date('26-FEB-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0G5F0ZZ','NV00342','HD2359',to_date('13-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('095P4ZZ','NV00202','HD1903',to_date('04-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0VJS4ZZ','NV00081','HD8896',to_date('11-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('03VV3DZ','NV00296','HD5591',to_date('01-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0QH904Z','NV00252','HD0732',to_date('14-OCT-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0G5F0ZZ','NV00461','HD8939',to_date('24-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F00ZPYZ','NV00068','HD9525',to_date('10-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('D9061ZZ','NV00455','HD4696',to_date('24-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0D5Q0ZZ','NV00218','HD0535',to_date('06-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0D134K9','NV00296','HD4751',to_date('12-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('06UY37Z','NV00469','HD0561',to_date('24-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0U9G80Z','NV00043','HD8304',to_date('19-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0QH904Z','NV00218','HD5018',to_date('30-JUL-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0VMF0ZZ','NV00427','HD1994',to_date('05-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00068','HD9308',to_date('06-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('377076','NV00548','HD5909',to_date('30-MAR-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('D9061ZZ','NV00606','HD7938',to_date('11-JUN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0D5Q0ZZ','NV00515','HD8494',to_date('23-MAY-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0QH904Z','NV00989','HD6656',to_date('25-DEC-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('F00ZPYZ','NV00515','HD8356',to_date('05-NOV-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0HR9X73','NV00613','HD3085',to_date('14-JAN-20','DD-MON-RR'));
Insert into SYSTEM.TTDV (MALOAIDICHVU,MANV,MAHOADON,THOIGIANTHUCHIEN) values ('0RR60JZ','NV00043','HD7908',to_date('28-AUG-20','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index BENHNHA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."BENHNHA_PK" ON "SYSTEM"."BENHNHAN" ("MAKHAMBENH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index BOPHAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."BOPHAN_PK" ON "SYSTEM"."BOPHAN" ("MABP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATRUC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CATRUC_PK" ON "SYSTEM"."CATRUC" ("MACATRUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CHAMCONG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CHAMCONG_PK" ON "SYSTEM"."CHAMCONG" ("MANV", "THANG", "NAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CT_DONTHUOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CT_DONTHUOC_PK" ON "SYSTEM"."CT_DONTHUOC" ("MADONTHUOC", "MATHUOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DONTHUOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DONTHUOC_PK" ON "SYSTEM"."DONTHUOC" ("MADONTHUOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HOADON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."HOADON_PK" ON "SYSTEM"."HOADON" ("MAHOADON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index KHOA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."KHOA_PK" ON "SYSTEM"."KHOA" ("MAKHOA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HELP_TOPIC_SEQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."HELP_TOPIC_SEQ" ON "SYSTEM"."HELP" ("TOPIC", "SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LSKHAMBENH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LSKHAMBENH_PK" ON "SYSTEM"."LICHSUKHAMBENH" ("MALICHSU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LICHSUTRUC
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LICHSUTRUC" ON "SYSTEM"."LICHSUTRUC" ("MANV", "MAPHONG", "MACATRUC", "NGAYTRUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOAIDICHVU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOAIDICHVU_PK" ON "SYSTEM"."LOAIDICHVU" ("MALOAIDICHVU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index NHANVIEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."NHANVIEN_PK" ON "SYSTEM"."NHANVIEN" ("MANV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PHONG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PHONG_PK" ON "SYSTEM"."PHONG" ("MAPHONG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index THANGNAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."THANGNAM" ON "SYSTEM"."THANGNAM" ("THANG", "NAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index THUOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."THUOC_PK" ON "SYSTEM"."THUOC" ("MATHUOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TTDV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TTDV_PK" ON "SYSTEM"."TTDV" ("MALOAIDICHVU", "MANV", "MAHOADON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Function LOGMNR$COL_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$COL_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
237 185
nkvJV1w6wH1y7mRApzf9mGuebNUwgxDILkhGfHQCmP8+Vi4fyqh3SG1Fyq+pCts1OlgnK761
YuzKBA4JE5DNwZzBIF/Y4ZM5eUlquVyTkOg+AodK3vQJt9NLvPITXbP42O37gO+zKr4BQEJk
ypwrP1U/Pf6MLZONN8LUaVqHCN87T14HqHs5taX7LhLXQ2lCVBE1Ll8dyB9CDOlbyvQS/lrb
+0n1pQi9IJAWySL85ChAqnTaqFJm0YeToD4lZ8UUPQqIZNoX0x73WK9OzsmdBrvEC97iduxe
PEXVkxF6xklPod6yOGBvW7DAFMBgf+LajDLVKOAwB2EAiKCXYMuTUTtMYYkCFFf4sj1rCpsj
TLth6TSru530aM2HP6bEbm3m

/
--------------------------------------------------------
--  DDL for Function LOGMNR$GSBA_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$GSBA_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
206 171
6gxi/CQwK1I5Rfwuw/SXrOGpVRYwgwLI1yfbfHRGEjNe54OE4QwRZCoA20oG536tzgcBrj+1
xE3tE8jIhAoTlUdUmkdYMmZycO1SdiJZwwt/6BrM1wHXl/E5+3Ip2NXzC9j8v4+KjkD9d5AT
p05eEsEWjU1CBTMSpjZZrXzbgFl9QNnQ+zJGjSug21f76ajs78m6anxz7vFcTcem6XpAgKjc
EXzd/ijP8qiOqwblTfnXcRslJn3MljD02u+5fh9NBctOmnaw/tOjRCFPUhY8I9gCoMptjG7U
rHEIFzHOFyxBEdulRGq4ngSgcm7l2yOdSHgNM8rO2vUH4gozvJoLE1S8GBBzG/wrvHPhACQ/
2w==

/
--------------------------------------------------------
--  DDL for Function LOGMNR$KEY_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$KEY_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
2a0 1a1
3O4I5hDO715d8A2tqbxMCflFW0owg/D319xqfC9Grfg+K6yE71zMvtNS45AyRXBk77WpI5v4
nUSfE2lbvUYgk3JHySIe28XxC3xIYYpPGQjxwa3GzPw0FN5aN6kerQQTHUBp29Dd+vLSgBaC
2pAFrq059ZvN0ZPN11XG/2RuDY7HaTQu/QffhnY8rVlNxpFmbkVidwtZQahx5qIFu9Uww/tv
o1AvhjaORi898/KiPtOqv7LpsPFbyNuMnZEG48cxtZuesMBJFP/bKtgU2DN69xiT8Pxf+N2n
g0D2ximYzZqwY/4dBQj9dyQDuXRFo40hdqtWw0L96zV6723aQ8Xp0cqBaZj2wWTI4+6Ikry9
zY0Mdm3bV8TYqsOa+zT4fnikGO0eYbTFHEiW9QUbl/UwzuERwk8p

/
--------------------------------------------------------
--  DDL for Function LOGMNR$SEQ_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$SEQ_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
249 181
++dDv/cHZatK7/vHG9lvR8DQCpYwg/D3AEhqfHQC2h6ONoOvOeHvTNX1S5GDyajM4j8vkSVz
IMw+LbYS3goujprvmrB/LUpdBF8TVvjEqZpC7MCKPXWcGnTeL7ja8C2tcOdjOpRXkwL5NmPJ
B0KqMvwepdiQDY7HUDQrBddQC1lBqHGEogWkwRJ3+2+jUC+Gpo5GTazIWS0V551NkSl3+h0W
BhkPglLbvQDPzxWTnmu4ZuJIlTiNwTf1R0WxghyyKFjES9CJsCrGT8Fn7prlF4Mr5kx1YBGf
5xaODtRnmVJgb65RlKbAN9+Xxf2QnQjKQL99RZAgsEwGVKNfx9lFKwHLGUwzjOxmIAXXYd/Z
+L9osPQJjZYkNrD0pQ==

/
--------------------------------------------------------
--  DDL for Function LOGMNR$TAB_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$TAB_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
22e 181
PRVt0FiLRPgjIhZlCZcQhnOHXQ4wgzJp2UhGfHSKrQ843hKm3gKD9swoFAS4jVcW0CsSl7W1
6banVWdjktOVM18XyRjY4ZM5eRdquSp0ZdfHl3KJPBYqPi9LXIwum30Qh7ymgO+zTKj+R1N2
nSs/TPnknfYLwcUdAfBryDQGEIMisMuE9XT5ix3sudhHa5tLJRjsBIDKlqL7zk2CH0C1NRAZ
XrP7WgavVdNS3Yikz88VupZG21hTuAGspJBgCagmNWIwi9pgCIWP3rxF4p+uMps/ABEg+MBP
6Iykm62kO6hWhVHJXkfKF/jrQFjYBTTzatr1VTcOXt/AFuagDR7isNtb//lnXh8TXyAFWyCT
ubv6GXL0aM0PP/t+DfSl

/
--------------------------------------------------------
--  DDL for Function LOGMNR$USER_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$USER_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
272 191
Vc+i+Mga8m7/BSlvXl0J+GmParYwg/D319wCfC8CTE6Ot30G8QRR0WzR8ohw8Z/y6DuL4pL5
IDjZApnCaZgeKa1OTjLj2B2tOYZg2ZuOAPKrxo7DeBqtn0Ahw0tubS36jP4xc+d2eQebdJMD
c/U0JxdiAl0qIPzsltBjeoGAEsxUk0aubCMJmysgc2d8ojil6ixQ37D7RA0HWMkh27QdOuXF
vSwuufDunMMT8Hue9dvy4vRXj+PhuyylJSukStsxyIb234EahCXyrjDlnzbC91eoU7v5sb4D
OvtDmggQCEViyhFXwspP9P0dOObin8JENsDJeFZYr/oVAgSHa97LRKvNZgd+f//XHlpEAOP4
rNm5mF0wTCABbb7tc5c7uo09M+79i7en8g==

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  Constraints for Table BENHNHAN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BENHNHAN" ADD CONSTRAINT "BENHNHA_PK" PRIMARY KEY ("MAKHAMBENH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOPHAN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOPHAN" ADD CONSTRAINT "BOPHAN_PK" PRIMARY KEY ("MABP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATRUC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CATRUC" ADD CONSTRAINT "CATRUC_PK" PRIMARY KEY ("MACATRUC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHAMCONG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHAMCONG" ADD CONSTRAINT "CHAMCONG_PK" PRIMARY KEY ("MANV", "THANG", "NAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CT_DONTHUOC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CT_DONTHUOC" ADD CONSTRAINT "CT_DONTHUOC_PK" PRIMARY KEY ("MADONTHUOC", "MATHUOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DONTHUOC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DONTHUOC" ADD CONSTRAINT "DONTHUOC_PK" PRIMARY KEY ("MADONTHUOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOADON
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HOADON" ADD CONSTRAINT "HOADON_PK" PRIMARY KEY ("MAHOADON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KHOA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."KHOA" ADD CONSTRAINT "KHOA_PK" PRIMARY KEY ("MAKHOA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HELP" MODIFY ("TOPIC" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HELP" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICHSUKHAMBENH
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LICHSUKHAMBENH" MODIFY ("MALICHSU" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LICHSUKHAMBENH" ADD CONSTRAINT "LSKHAMBENH_PK" PRIMARY KEY ("MALICHSU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICHSUTRUC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LICHSUTRUC" MODIFY ("NGAYTRUC" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LICHSUTRUC" ADD CONSTRAINT "LICHSUTRUC" PRIMARY KEY ("MANV", "MAPHONG", "MACATRUC", "NGAYTRUC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOAIDICHVU
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOAIDICHVU" ADD CONSTRAINT "LOAIDICHVU_PK" PRIMARY KEY ("MALOAIDICHVU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NHANVIEN" ADD CONSTRAINT "NHANVIEN_PK" PRIMARY KEY ("MANV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PHONG" ADD CONSTRAINT "PHONG_PK" PRIMARY KEY ("MAPHONG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table THANGNAM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."THANGNAM" ADD CONSTRAINT "THANGNAM" PRIMARY KEY ("THANG", "NAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table THUOC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."THUOC" ADD CONSTRAINT "THUOC_PK" PRIMARY KEY ("MATHUOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TTDV
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TTDV" ADD CONSTRAINT "TTDV_PK" PRIMARY KEY ("MALOAIDICHVU", "MANV", "MAHOADON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHAMCONG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHAMCONG" ADD CONSTRAINT "FK_CHAMCONG_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "SYSTEM"."NHANVIEN" ("MANV") ENABLE;
  ALTER TABLE "SYSTEM"."CHAMCONG" ADD CONSTRAINT "FK_CHAMCONG_THANGNAM" FOREIGN KEY ("THANG", "NAM")
	  REFERENCES "SYSTEM"."THANGNAM" ("THANG", "NAM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CT_DONTHUOC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CT_DONTHUOC" ADD CONSTRAINT "FK_CTDT_DT" FOREIGN KEY ("MADONTHUOC")
	  REFERENCES "SYSTEM"."DONTHUOC" ("MADONTHUOC") ENABLE;
  ALTER TABLE "SYSTEM"."CT_DONTHUOC" ADD CONSTRAINT "FK_CTDT_THUOC" FOREIGN KEY ("MATHUOC")
	  REFERENCES "SYSTEM"."THUOC" ("MATHUOC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DONTHUOC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DONTHUOC" ADD CONSTRAINT "FK_DT_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "SYSTEM"."NHANVIEN" ("MANV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HOADON
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HOADON" ADD CONSTRAINT "FK_HOADON_LSKHAMBENH" FOREIGN KEY ("MALICHSU")
	  REFERENCES "SYSTEM"."LICHSUKHAMBENH" ("MALICHSU") ENABLE;
  ALTER TABLE "SYSTEM"."HOADON" ADD CONSTRAINT "FK_HOADON_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "SYSTEM"."NHANVIEN" ("MANV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICHSUKHAMBENH
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LICHSUKHAMBENH" ADD CONSTRAINT "FK_LSKHAMBENH_BENHNHAN" FOREIGN KEY ("MAKHAMBENH")
	  REFERENCES "SYSTEM"."BENHNHAN" ("MAKHAMBENH") ENABLE;
  ALTER TABLE "SYSTEM"."LICHSUKHAMBENH" ADD CONSTRAINT "FK_LSKHAMBENH_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "SYSTEM"."NHANVIEN" ("MANV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICHSUTRUC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LICHSUTRUC" ADD CONSTRAINT "FK_LSTRUC_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "SYSTEM"."NHANVIEN" ("MANV") ENABLE;
  ALTER TABLE "SYSTEM"."LICHSUTRUC" ADD CONSTRAINT "FK_LSTRUC_PHONG" FOREIGN KEY ("MAPHONG")
	  REFERENCES "SYSTEM"."PHONG" ("MAPHONG") ENABLE;
  ALTER TABLE "SYSTEM"."LICHSUTRUC" ADD CONSTRAINT "FK_LSTRUC_CATRUC" FOREIGN KEY ("MACATRUC")
	  REFERENCES "SYSTEM"."CATRUC" ("MACATRUC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NHANVIEN" ADD CONSTRAINT "FK_NV_BOPHAN" FOREIGN KEY ("MABP")
	  REFERENCES "SYSTEM"."BOPHAN" ("MABP") ENABLE;
  ALTER TABLE "SYSTEM"."NHANVIEN" ADD CONSTRAINT "FK_NV_KHOA" FOREIGN KEY ("MAKHOA")
	  REFERENCES "SYSTEM"."KHOA" ("MAKHOA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TTDV
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TTDV" ADD CONSTRAINT "FK_TTDV_HOADON" FOREIGN KEY ("MAHOADON")
	  REFERENCES "SYSTEM"."HOADON" ("MAHOADON") ENABLE;
  ALTER TABLE "SYSTEM"."TTDV" ADD CONSTRAINT "FK_TTDV_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "SYSTEM"."NHANVIEN" ("MANV") ENABLE;
  ALTER TABLE "SYSTEM"."TTDV" ADD CONSTRAINT "FK_TTDV_LDICHVU" FOREIGN KEY ("MALOAIDICHVU")
	  REFERENCES "SYSTEM"."LOAIDICHVU" ("MALOAIDICHVU") ENABLE;
