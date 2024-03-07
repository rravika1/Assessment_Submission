-- Creates Receipts table
create or replace TABLE RPTS (
	BONUSPOINTSEARNED NUMBER(38,0),
	BONUSPOINTSEARNEDREASON VARCHAR(16777216),
	CREATEDATE TIMESTAMP_NTZ(9),
	DATESCANNED TIMESTAMP_NTZ(9),
	FINISHEDDATE TIMESTAMP_NTZ(9),
	MODIFYDATE TIMESTAMP_NTZ(9),
	POINTSAWARDEDDATE TIMESTAMP_NTZ(9),
	OUTER_POINTSEARNED NUMBER(38,0),
	PURCHASEDATE TIMESTAMP_NTZ(9),
	PURCHASEDITEMCOUNT NUMBER(38,0),
	REWARDSRECEIPTSTATUS VARCHAR(16777216),
	TOTALSPENT NUMBER(38,0),
	USERID VARCHAR(16777216),
	ID VARCHAR(16777216)
);

