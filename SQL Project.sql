create database BMS_DB1;
use BMS_DB1;
create table CUSTOMER_PERSONAL_INFO
(
CUSTOMER_ID VARCHAR(5),
CUSTOMER_NAME VARCHAR(30),
DATE_OF_BIRTH DATE,
GUARDIAN_NAME VARCHAR(30),
ADDRESS VARCHAR(50),
CONTACT_N0 INT(10),
MAIL_ID VARCHAR(30),
GENDER CHAR(1),
MARITAL_STATUS VARCHAR(10),
IDENTIFICATION_DOC_TYPE VARCHAR(20),
ID_DOC_NUMBER VARCHAR(20),
CITIZENSHIP VARCHAR(20),
CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY( CUSTOMER_ID)
);

create table CUSTOMER_REFERENCE_INFO
(
CUSTOMER_ID varchar(5),
REFERENCE_ACC_NAME varchar(20),
REFERENCE_ACC_N0 bigint(16),
REFERENCE_ACC_ADDRESS varchar(50),
RELATION varchar(25),
constraint CUST_REF_INFO_PK primary key(CUSTOMER_ID),
constraint CUST_REF_INFO_FK foreign key(CUSTOMER_ID) references CUSTOMER_PERSONAL_INFO(CUSTOMER_ID)
);

create table ACCOUNT_INFO
(
ACCOUNT_NO bigint(16),
CUSTOMER_ID varchar(5),
ACCOUNT_TYPE varchar(10),
REGISTRATION_DATE date,
ACTIVATION_DATE date,
IFSC_CODE varchar(10),
INTEREST decimal(7,2),
INITIAL_DEPOSIT bigint(10),
constraint ACC_INFO_PK primary key(ACCOUNT_NO),
constraint ACC_INFO_PERS_FK foreign key (CUSTOMER_ID) references CUSTOMER_PERSONAL_INFO(CUSTOMER_ID),
constraint ACC_INFO_BANK_FK foreign key(IFSC_CODE) references BANK_INFO( IFSC_CODE)
);

insert into bank_info( IFSC_CODE,BANK_NAME,BRANCH_NAME) values( 'HDV12367','HDFC','ADARSH NAGAR');
insert into bank_info( IFSC_CODE,BANK_NAME,BRANCH_NAME) values( 'SBI457YTS','SBI','JAWAHAR NAGAR');
insert into bank_info( IFSC_CODE,BANK_NAME,BRANCH_NAME) values( 'HDV17777','HDFC','ADARSH NAGAR');