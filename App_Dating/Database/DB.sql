--------------------------------------------------------
--  File created - Sunday-February-03-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PREFERENCES
--------------------------------------------------------

  CREATE TABLE "IT164663"."PREFERENCES" 
   (	"ID" NUMBER, 
	"COLOR" VARCHAR2(20 BYTE), 
	"MUSIC" VARCHAR2(20 BYTE), 
	"FOOD" VARCHAR2(20 BYTE), 
	"SEASON" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "IT164663"."USERS" 
   (	"ID" NUMBER(5,0), 
	"USERNAME" VARCHAR2(40 BYTE), 
	"PASSWORD" NUMBER(20,0), 
	"ADACCESS" NUMBER(1,0) DEFAULT 0, 
	"STATUS" VARCHAR2(20 BYTE) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"   NO INMEMORY ;

   COMMENT ON COLUMN "IT164663"."USERS"."ADACCESS" IS 'Admin access';
   COMMENT ON COLUMN "IT164663"."USERS"."STATUS" IS 'Online or not';
--------------------------------------------------------
--  DDL for Table RESTAURANTS
--------------------------------------------------------

  CREATE TABLE "IT164663"."RESTAURANTS" 
   (	"ESTID" NUMBER, 
	"ADDRESS" VARCHAR2(40 BYTE), 
	"RNAME" VARCHAR2(40 BYTE), 
	"RATINGS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DISHES
--------------------------------------------------------

  CREATE TABLE "IT164663"."DISHES" 
   (	"ESTID" NUMBER, 
	"MONDAY" VARCHAR2(40 BYTE), 
	"TUESDAY" VARCHAR2(40 BYTE), 
	"WEDNESDAY" VARCHAR2(40 BYTE), 
	"THURSDAY" VARCHAR2(40 BYTE), 
	"FRIDAY" VARCHAR2(40 BYTE), 
	"SATURDAY" VARCHAR2(40 BYTE), 
	"SUNDAY" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into IT164663.PREFERENCES
SET DEFINE OFF;
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (1,'Purple','Rock','Meat','Spring');
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (2,'Orange','Rap','Meat','Winter');
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (525,'Blue','Dubstep','Meat','Summer');
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (392,'Pink','Dubstep','Meat','Spring');
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (425,'Brown','Classical','Vegetables','Fall');
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (337,'Red','Rock','Salads','Winter');
Insert into IT164663.PREFERENCES (ID,COLOR,MUSIC,FOOD,SEASON) values (656,'fsafsa','fas','fsa','fsa');
REM INSERTING into IT164663.USERS
SET DEFINE OFF;
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (1,'TehKonnos',1243,1,'Offline');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (2,'7ismyjam',7777,0,'Offline');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (337,'Wisdom',1234,0,'0');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (392,'girl',0,0,'Offline');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (525,'Kotsos',1234,1,'Offline');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (425,'Boy',1111,0,'Offline');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (921,'kroni',1111,0,'Offline');
Insert into IT164663.USERS (ID,USERNAME,PASSWORD,ADACCESS,STATUS) values (656,'test',1212,0,'Offline');
REM INSERTING into IT164663.RESTAURANTS
SET DEFINE OFF;
Insert into IT164663.RESTAURANTS (ESTID,ADDRESS,RNAME,RATINGS) values (1,'Analipsi','?? ???????? ??? ?????',8);
Insert into IT164663.RESTAURANTS (ESTID,ADDRESS,RNAME,RATINGS) values (2,'Kalamaria','Shark',7);
Insert into IT164663.RESTAURANTS (ESTID,ADDRESS,RNAME,RATINGS) values (3,'Analipsi','???? ??????',9);
REM INSERTING into IT164663.DISHES
SET DEFINE OFF;
Insert into IT164663.DISHES (ESTID,MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY) values (3,'?????????','?????????','??????????','?????????','???????????','??????','?????');
Insert into IT164663.DISHES (ESTID,MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY) values (2,'??????????','?????????','??????','?????????','????????????','??????????','???????');
Insert into IT164663.DISHES (ESTID,MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY) values (1,'?????? ???????','?????????','????? ?????????','??????','???? ????????','?????','????????');
--------------------------------------------------------
--  DDL for Index PREFERENCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IT164663"."PREFERENCES_PK" ON "IT164663"."PREFERENCES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PASSWORDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IT164663"."PASSWORDS_PK" ON "IT164663"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESTAURANTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IT164663"."RESTAURANTS_PK" ON "IT164663"."RESTAURANTS" ("ESTID", "ADDRESS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DISHES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IT164663"."DISHES_PK" ON "IT164663"."DISHES" ("ESTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PREFERENCES
--------------------------------------------------------

  ALTER TABLE "IT164663"."PREFERENCES" ADD CONSTRAINT "PREFERENCES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IT164663"."PREFERENCES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "IT164663"."USERS" ADD CONSTRAINT "PASSWORDS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IT164663"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IT164663"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "IT164663"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "IT164663"."USERS" MODIFY ("ADACCESS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESTAURANTS
--------------------------------------------------------

  ALTER TABLE "IT164663"."RESTAURANTS" ADD CONSTRAINT "RESTAURANTS_PK" PRIMARY KEY ("ESTID", "ADDRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IT164663"."RESTAURANTS" MODIFY ("ESTID" NOT NULL ENABLE);
  ALTER TABLE "IT164663"."RESTAURANTS" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "IT164663"."RESTAURANTS" MODIFY ("RATINGS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DISHES
--------------------------------------------------------

  ALTER TABLE "IT164663"."DISHES" ADD CONSTRAINT "DISHES_PK" PRIMARY KEY ("ESTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IT164663"."DISHES" MODIFY ("ESTID" NOT NULL ENABLE);
