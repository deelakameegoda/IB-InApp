DROP TABLE IF EXISTS WLT_DM_AGENT;
DROP TABLE IF EXISTS WLT_DP_AGENT;
DROP TABLE IF EXISTS WLT_DM_USR_REG_REQ;
DROP TABLE IF EXISTS WLT_DP_USR_REG_REQ;
DROP TABLE IF EXISTS WLT_DM_USR_ACCT;
DROP TABLE IF EXISTS WLT_DM_SND_MONY;
DROP TABLE IF EXISTS WLT_DP_SND_MONY;
DROP TABLE IF EXISTS WLT_DM_BILL_PYMT;
DROP TABLE IF EXISTS WLT_DP_FND_TRFR;
DROP TABLE IF EXISTS WLT_DM_FND_TRFR;
DROP TABLE IF EXISTS WLT_DM_BILL_PYMT_SCHD;
DROP TABLE IF EXISTS WLT_DP_BILL_PYMT_SCHD;
DROP TABLE IF EXISTS WLT_DM_BILL_PYMT_TPLT;
DROP TABLE IF EXISTS WLT_DP_BILL_PYMT_TPLT;
DROP TABLE IF EXISTS WLT_DM_VOUC_PYMT_TPLT;
DROP TABLE IF EXISTS WLT_DP_VOUC_PYMT_TPLT;
DROP TABLE IF EXISTS CMN_DR_KYC;
DROP TABLE IF EXISTS WLT_DM_NTFY;
DROP TABLE IF EXISTS WLT_DP_NTFY;


DROP SEQUENCE IF EXISTS WLT_DQ_DM_USR_ACCT;
DROP SEQUENCE IF EXISTS SEQ_WLT_DM_AGENT;
DROP SEQUENCE IF EXISTS SEQ_WLT_DP_NTFY;

CREATE TABLE WLT_DM_AGENT
(
    SEQ_ID        DECIMAL,
    AGENT_ID      varchar(255),
    TERM_ID       varchar(255),
    USR_ID        varchar(255),
    FIRST_NAME    varchar(255),
    LAST_NAME     varchar(255),
    LICENCE       varchar(255),
    BNK_CODE      varchar(255),
    EMAIL         varchar(255),
    OFFICE_PHONE  varchar(255),
    MERC_ACC_NO   varchar(255),
    AGENT_ACC_NO  varchar(255),
    COMM_ACC_NO   varchar(255),
    CHARGE_ACC_NO varchar(255),
    FACEBOOK_URL  varchar(255),
    CMNT          varchar(255),
    STATUS        INTEGER,
    ADDED_BY      varchar(255),
    ADDED_DATE    date,
    MODIFIED_BY   varchar(255),
    MODIFIED_DATE date
);
INSERT INTO WLT_DM_AGENT
VALUES (100, 'instrumentSix', 'termId', 'instrumentSix', 'fName', 'lName', 'licence', '0001', 'email', 'officePhone',
        'mercAccNo', 'agentAccNo', 'CommAccNo', 'ChargeAccNo', 'facebookUrl', 'comment', 0, 'Deelaka', '2019-10-15',
        'Deelaka', '2019-11-15');

INSERT INTO WLT_DM_AGENT
VALUES (200, 'instrumentSeven', 'termId', 'instrumentSeven', 'fName', 'lName', 'licence', '0001', 'email',
        'officePhone', 'mercAccNo', 'agentAccNo', 'CommAccNo', 'ChargeAccNo', 'facebookUrl', 'comment', 0, 'Deelaka',
        '2019-10-15', 'Deelaka', '2019-11-15');

CREATE TABLE WLT_DP_AGENT
(
    SEQ_ID        DECIMAL,
    AGENT_ID      varchar(255),
    TERM_ID       varchar(255),
    USR_ID        varchar(255),
    FIRST_NAME    varchar(255),
    LAST_NAME     varchar(255),
    LICENCE       varchar(255),
    BNK_CODE      varchar(255),
    EMAIL         varchar(255),
    OFFICE_PHONE  varchar(255),
    MERC_ACC_NO   varchar(255),
    AGENT_ACC_NO  varchar(255),
    COMM_ACC_NO   varchar(255),
    CHARGE_ACC_NO varchar(255),
    FACEBOOK_URL  varchar(255),
    CMNT          varchar(255),
    STATUS        INTEGER,
    ADDED_BY      varchar(255),
    ADDED_DATE    date,
    MODIFIED_BY   varchar(255),
    MODIFIED_DATE date
);
INSERT INTO WLT_DP_AGENT
VALUES (10, 'agentId', 'termId', 'user_exception', 'firstName', 'lastName', 'licence', '0001', 'email', 'officePhone',
        'mercAccNo', 'agentAccNo', 'CommAccNo', 'ChargeAccNo', 'facebookUrl', 'comment', 5, 'Deelaka', '2019-10-15',
        'Deelaka', '2019-11-15');
CREATE TABLE WLT_DM_USR_REG_REQ
(
    USR_REG_ID     DECIMAL,
    USR_ID         varchar(255),
    MOBL_NO        varchar(255),
    FIRST_NAME     varchar(255),
    LAST_NAME      varchar(255),
    MIDDLE_NAME    varchar(255),
    TITL           varchar(255),
    EMAIL          varchar(255),
    GENDER         varchar(255),
    USR_NAME       varchar(255),
    CUST_NO        INTEGER,
    NIC            varchar(255),
    CMNT           varchar(255),
    DOB            date,
    SESS_ID        varchar(255),
    SEC_PROF       varchar(255),
    SEC_VAL        varchar(255),
    BNK_CODE       varchar(255),
    USR_KYC_STATUS INTEGER,
    COUNTRY        varchar(255),
    STATE          varchar(255),
    CITY           varchar(255),
    STREET_ADDR    varchar(255),
    POSTAL_CODE    varchar(255),
    LATITUDE       varchar(255),
    LONGITUDE      INTEGER,
    STAT           INTEGER,
    TOC_STAT       BOOLEAN,
    FORCE_PWD      BOOLEAN,
    ADD_BY         varchar(255),
    ADD_DATE       date,
    MDFY_BY        varchar(255),
    MDFY_DATE      date,
);
INSERT INTO WLT_DM_USR_REG_REQ
VALUES (12, 'userId', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 1, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15');
INSERT INTO WLT_DM_USR_REG_REQ
VALUES (12, 'user_suspend', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 1, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15');
INSERT INTO WLT_DM_USR_REG_REQ
VALUES (12, 'user_reject', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 1, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15');
INSERT INTO WLT_DM_USR_REG_REQ
VALUES (12, 'user_approve', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 1, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15');
INSERT INTO WLT_DM_USR_REG_REQ
VALUES (12, 'user_active', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 1, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15');
INSERT INTO WLT_DM_USR_REG_REQ
VALUES (110, 'user', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 1, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15');
CREATE TABLE WLT_DP_USR_REG_REQ
(
    USR_REG_ID     DECIMAL,
    USR_ID         varchar(255),
    MOBL_NO        varchar(255),
    FIRST_NAME     varchar(255),
    LAST_NAME      varchar(255),
    MIDDLE_NAME    varchar(255),
    TITL           varchar(255),
    EMAIL          varchar(255),
    GENDER         varchar(255),
    USR_NAME       varchar(255),
    CUST_NO        INTEGER,
    NIC            varchar(255),
    CMNT           varchar(255),
    DOB            date,
    SESS_ID        varchar(255),
    SEC_PROF       varchar(255),
    SEC_VAL        varchar(255),
    BNK_CODE       varchar(255),
    USR_KYC_STATUS INTEGER,
    COUNTRY        varchar(255),
    STATE          varchar(255),
    CITY           varchar(255),
    STREET_ADDR    varchar(255),
    POSTAL_CODE    varchar(255),
    LATITUDE       varchar(255),
    LONGITUDE      INTEGER,
    STAT           INTEGER,
    TOC_STAT       BOOLEAN,
    FORCE_PWD      BOOLEAN,
    ADD_BY         varchar(255),
    ADD_DATE       date,
    MDFY_BY        varchar(255),
    MDFY_DATE      date,
    ADM_STAT       INTEGER,
    OTP_TOKEN      varchar(255)
);
INSERT INTO WLT_DP_USR_REG_REQ
VALUES (15, 'userId', 'mobileNumber', 'firstName', 'lastName', 'middleName', 'title', 'email', 'male', 'userName',
        '0123456789',
        'NIC', 'comment', '2019-11-15', 'sessId', 'sesProf', 'sessValue', '0001', 0, 'country', 'state', 'city',
        'streetAddress', 'postalCode', 'latitude', 1256, 0, true, true, 'Deelaka', '2019-10-15', 'Deelaka',
        '2019-11-15', 0, 'otpToken');
CREATE TABLE WLT_DM_USR_ACCT
(
    INSTRMNT_ID       DECIMAL,
    USR_ID            varchar(255),
    BNK_CODE          varchar(255),
    EML               varchar(255),
    ACCT_NAME         varchar(255),
    IS_CRD            INTEGER,
    CRD_NO            varchar(255),
    CO_ID             varchar(255),
    VSBLTY            INTEGER,
    IS_DEF            INTEGER,
    NAME_ON_CRD       varchar(255),
    CRD_TYP           varchar(255),
    TYP               varchar(255),
    EXP_MONTH         INTEGER,
    EXP_YEAR          INTEGER,
    ADD_BY            varchar(255),
    ADD_DATE          date,
    MDFY_BY           varchar(255),
    MDFY_DATE         date,
    WLT_DP_USR_ACCTID varchar(255),
    STAT              INTEGER,
    IS_VISHWA         INTEGER,
    ALIAS             varchar(255),
    INSTRMNT_BNK_CODE varchar(255),
    MERC_ID           varchar(255),
    TERM_ID           varchar(255),
    CRD_BIN           varchar(255),
    NETWORK_TYPE      varchar(255),
    OFFUS_ONUS        INTEGER,
    CIS_TOKEN         varchar2(100)
);
INSERT INTO WLT_DM_USR_ACCT
VALUES (12, 'USERID', '0001', 'email', 'accName', 0, 'cardNo', 'companyId', 0,
        1, 'nameOnCard', '3', 'typ', 12, 2019, 'Deelaka', '2019-10-15', 'Deelaka', '2019-11-15',
        '123456', 0, 1, 'alias', '0001', null, null, 'crdBin', 'networkType', 0,'cisToken');
INSERT INTO WLT_DM_USR_ACCT
VALUES (12, 'user', '0001', 'email', 'accName', 0, 'cardNo', 'companyId', 0,
        1, 'nameOnCard', '4', 'typ', 12, 2019, 'Deelaka', '2019-10-15', 'Deelaka', '2019-11-15',
        '123456', 0, 1, 'alias', '0001', null, null, 'crdBin', 'networkType', 0,'cisToken');
CREATE TABLE WLT_DM_SND_MONY
(
    ID                INTEGER,
    TO_CRD            varchar(255),
    EML               varchar(255),
    PYMT_TYP          varchar(255),
    REF_ID            varchar(255),
    STAT              INTEGER,
    AMT               varchar(255),
    RCVR_ID           varchar(255),
    EXP_TIME          date,
    ADD_BY            varchar(255),
    MDFY_BY           varchar(255),
    ADD_DATE          date,
    MDFY_DATE         date,
    USR_ID            varchar(255),
    BNK_CODE          varchar(255),
    CRD_NO            varchar(255),
    WLT_DP_SND_MONYID INTEGER,
    INSTRMNT_ID       INTEGER,
    CURR_CODE         varchar(255),
    SWT_AUX_NO        varchar(255),
    SWT_RET_REF_ID    varchar(255)
);
CREATE TABLE WLT_DP_SND_MONY
(
    ID                INTEGER,
    TO_CRD            varchar(255),
    EML               varchar(255),
    PYMT_TYP          varchar(255),
    REF_ID            varchar(255),
    STAT              INTEGER,
    AMT               varchar(255),
    RCVR_ID           varchar(255),
    EXP_TIME          date,
    ADD_BY            varchar(255),
    MDFY_BY           varchar(255),
    ADD_DATE          date,
    MDFY_DATE         date,
    USR_ID            varchar(255),
    BNK_CODE          varchar(255),
    CRD_NO            varchar(255),
    WLT_DP_SND_MONYID INTEGER,
    INSTRMNT_ID       INTEGER,
    CURR_CODE         varchar(255),
    SWT_AUX_NO        varchar(255),
    SWT_RET_REF_ID    varchar(255)
);
CREATE TABLE WLT_DM_BILL_PYMT
(
    ID          INTEGER,
    BILR_ID     varchar(255),
    AMT         varchar(255),
    FLD_VAL_1   varchar(255),
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    STAT        INTEGER,
    CURR_CODE   varchar(255),
    INSTRMNT_ID INTEGER,
    FLD_VAL_2   varchar(255),
    FLD_VAL_3   varchar(255),
    FLD_VAL_4   varchar(255),
    FLD_VAL_5   varchar(255),
    FLD_VAL_6   varchar(255),
    FLD_VAL_7   varchar(255),
    BILR_ACC_NO varchar(255)
);
CREATE TABLE WLT_DP_FND_TRFR
(
    ID          INTEGER,
    CRD_NO      varchar(255),
    FT_TYP      varchar(255),
    AMT         varchar(255),
    CURR_CODE   varchar(255),
    IS_MERC     INTEGER,
    TO_INSTRMNT varchar(255),
    STAT        INTEGER,
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    INSTRMNT_ID INTEGER,
    RMK         varchar(255)
);
CREATE TABLE WLT_DM_FND_TRFR
(
    ID          INTEGER,
    CRD_NO      varchar(255),
    FT_TYP      varchar(255),
    AMT         varchar(255),
    CURR_CODE   varchar(255),
    IS_MERC     INTEGER,
    TO_INSTRMNT varchar(255),
    STAT        INTEGER,
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    INSTRMNT_ID INTEGER,
    RMK         varchar(255)
);

CREATE TABLE WLT_DM_BILL_PYMT_SCHD
(
    ID          INTEGER,
    AMT         varchar(255),
    BILR_ID     varchar(255),
    FLD_VAL_1   varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    STAT        INTEGER,
    INSTRMNT_ID INTEGER,
    CURR_CODE   varchar(255),
    FLD_VAL_2   varchar(255),
    FLD_VAL_3   varchar(255),
    FLD_VAL_4   varchar(255),
    FLD_VAL_5   varchar(255),
    FLD_VAL_6   varchar(255),
    FLD_VAL_7   varchar(255),
    START_DATE  date,
    END_DATE    date,
    FREQ        INTEGER,
    NO_OF_OCUR  INTEGER,
    BILR_NAME   varchar(255)
);
CREATE TABLE WLT_DP_BILL_PYMT_SCHD
(
    ID          INTEGER,
    AMT         varchar(255),
    BILR_ID     varchar(255),
    FLD_VAL_1   varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    STAT        INTEGER,
    INSTRMNT_ID INTEGER,
    CURR_CODE   varchar(255),
    FLD_VAL_2   varchar(255),
    FLD_VAL_3   varchar(255),
    FLD_VAL_4   varchar(255),
    FLD_VAL_5   varchar(255),
    FLD_VAL_6   varchar(255),
    FLD_VAL_7   varchar(255),
    START_DATE  date,
    END_DATE    date,
    FREQ        INTEGER,
    NO_OF_OCUR  INTEGER,
    BILR_NAME   varchar(255)
);

CREATE TABLE WLT_DM_BILL_PYMT_TPLT
(
    ID          INTEGER,
    BILR_ID     varchar(255),
    AMT         varchar(255),
    FLD_VAL_1   varchar(255),
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    STAT        INTEGER,
    CURR_CODE   varchar(255),
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    INSTRMNT_ID INTEGER,
    FLD_VAL_2   varchar(255),
    FLD_VAL_3   varchar(255),
    FLD_VAL_4   varchar(255),
    FLD_VAL_5   varchar(255),
    FLD_VAL_6   varchar(255),
    FLD_VAL_7   varchar(255),
    CAT         varchar(255),
    BILR_NAME   varchar(255),
    BILR_ACC_NO varchar(255)
);
CREATE TABLE WLT_DP_BILL_PYMT_TPLT
(
    ID          INTEGER,
    BILR_ID     varchar(255),
    AMT         varchar(255),
    FLD_VAL_1   varchar(255),
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    STAT        INTEGER,
    CURR_CODE   varchar(255),
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    INSTRMNT_ID INTEGER,
    FLD_VAL_2   varchar(255),
    FLD_VAL_3   varchar(255),
    FLD_VAL_4   varchar(255),
    FLD_VAL_5   varchar(255),
    FLD_VAL_6   varchar(255),
    FLD_VAL_7   varchar(255),
    CAT         varchar(255),
    BILR_NAME   varchar(255),
    BILR_ACC_NO varchar(255)
);
CREATE TABLE WLT_DM_VOUC_PYMT_TPLT
(
    ID          INTEGER,
    VOUC_ID     varchar(255),
    VOUC_REF    varchar(255),
    AMT         varchar(255),
    DENM_ID     varchar(255),
    DENM_TYP    varchar(255),
    VOUC_TYP    varchar(255),
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    CURR_CODE   varchar(255),
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    STAT        INTEGER,
    INSTRMNT_ID INTEGER,
);
CREATE TABLE WLT_DP_VOUC_PYMT_TPLT
(
    ID          INTEGER,
    VOUC_ID     varchar(255),
    VOUC_REF    varchar(255),
    AMT         varchar(255),
    DENM_ID     varchar(255),
    DENM_TYP    varchar(255),
    VOUC_TYP    varchar(255),
    USR_ID      varchar(255),
    BNK_CODE    varchar(255),
    CRD_NO      varchar(255),
    CURR_CODE   varchar(255),
    ADD_BY      varchar(255),
    MDFY_BY     varchar(255),
    ADD_DATE    date,
    MDFY_DATE   date,
    STAT        INTEGER,
    INSTRMNT_ID INTEGER
);

CREATE TABLE CMN_DR_KYC
(
    ID            INTEGER,
    APP_ID        varchar(255),
    CATEGORY      varchar(255),
    NAME          varchar(255),
    FORMAT        varchar(255),
    REQUIRED      INTEGER,
    STATUS        INTEGER,
    ADDED_BY      varchar(255),
    MODIFIED_BY   varchar(255),
    ADDED_DATE    date,
    MODIFIED_DATE date,
    DESCRIPTION   varchar(255)
);
INSERT INTO CMN_DR_KYC
VALUES (12, 'WLT', 'category', 'kycType', 'format', 0, 0, 'deelaka', 'deelaka', '2019-10-15', '2019-11-15', 'desc');
CREATE TABLE WLT_DP_NTFY
(
    ID            INTEGER,
    NTFY_READ     INTEGER,
    IS_SCHEDULE   INTEGER,
    SCHEDULE_DATE date,
    TITL          varchar(255),
    MSG           varchar(255),
    TYP           varchar(255),
    CMNT          varchar(255),
    STATUS        INTEGER,
    ADD_DATE      date,
    MDFY_DATE     date,
    ADD_BY        varchar(255),
    MDFY_BY       varchar(255)
);
CREATE TABLE WLT_DM_NTFY
(
    ID            INTEGER,
    NTFY_READ     INTEGER,
    IS_SCHEDULE   INTEGER,
    SCHEDULE_DATE date,
    TITL          varchar(255),
    MSG           varchar(255),
    TYP           varchar(255),
    CMNT          varchar(255),
    STATUS        INTEGER,
    ADD_DATE      date,
    MDFY_DATE     date,
    ADD_BY        varchar(255),
    MDFY_BY       varchar(255)
);

CREATE SEQUENCE WLT_DQ_DM_USR_ACCT;
CREATE SEQUENCE SEQ_WLT_DM_AGENT;
CREATE SEQUENCE SEQ_WLT_DP_NTFY;
