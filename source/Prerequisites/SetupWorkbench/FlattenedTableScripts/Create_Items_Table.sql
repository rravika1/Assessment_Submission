-- Craete Items table. We had flattened REWARDSRECEIPTITEMLIST column in recetipts table and created this table.
create sequence EXAMPLE_SEQUENCE;
create or replace TABLE ITEMS (
	ITEM_ID NUMBER(38,0) NOT NULL DEFAULT EXAMPLE_SEQUENCE.NEXTVAL,
	ID VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_BARCODE VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_BRANDCODE VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_COMPETITIVEPRODUCT BOOLEAN,
	REWARDSRECEIPTITEMLIST_COMPETITORREWARDSGROUP VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_DELETED BOOLEAN,
	REWARDSRECEIPTITEMLIST_DESCRIPTION VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_DISCOUNTEDITEMPRICE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_FINALPRICE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_ITEMNUMBER NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_ITEMPRICE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_METABRITECAMPAIGNID VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_NEEDSFETCHREVIEW BOOLEAN,
	REWARDSRECEIPTITEMLIST_NEEDSFETCHREVIEWREASON VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_ORIGINALFINALPRICE VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEBARCODE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEDESCRIPTION VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEITEMPRICE VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEQUANTITYPURCHASED NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_ORIGINALRECEIPTITEMTEXT VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_PARTNERITEMID NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_POINTSEARNED NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_POINTSNOTAWARDEDREASON VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_POINTSPAYERID VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_PREVENTTARGETGAPPOINTS BOOLEAN,
	REWARDSRECEIPTITEMLIST_PRICEAFTERCOUPON NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_QUANTITYPURCHASED NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_REWARDSGROUP VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_REWARDSPRODUCTPARTNERID VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_TARGETPRICE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_USERFLAGGEDBARCODE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_USERFLAGGEDDESCRIPTION VARCHAR(16777216),
	REWARDSRECEIPTITEMLIST_USERFLAGGEDNEWITEM BOOLEAN,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDPRICE NUMBER(38,0),
	REWARDSRECEIPTITEMLIST_USERFLAGGEDQUANTITY NUMBER(38,0),
	primary key (ITEM_ID)
);

-- Copying data from rpts table to items table
INSERT INTO items(ID,
	REWARDSRECEIPTITEMLIST_BARCODE,
	REWARDSRECEIPTITEMLIST_BRANDCODE,
	REWARDSRECEIPTITEMLIST_COMPETITIVEPRODUCT,
	REWARDSRECEIPTITEMLIST_COMPETITORREWARDSGROUP ,
	REWARDSRECEIPTITEMLIST_DELETED,
	REWARDSRECEIPTITEMLIST_DESCRIPTION,
	REWARDSRECEIPTITEMLIST_DISCOUNTEDITEMPRICE,
	REWARDSRECEIPTITEMLIST_FINALPRICE,
	REWARDSRECEIPTITEMLIST_ITEMNUMBER,
	REWARDSRECEIPTITEMLIST_ITEMPRICE,
	REWARDSRECEIPTITEMLIST_METABRITECAMPAIGNID,
	REWARDSRECEIPTITEMLIST_NEEDSFETCHREVIEW,
	REWARDSRECEIPTITEMLIST_NEEDSFETCHREVIEWREASON,
	REWARDSRECEIPTITEMLIST_ORIGINALFINALPRICE,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEBARCODE,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEDESCRIPTION ,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEITEMPRICE ,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEQUANTITYPURCHASED ,
	REWARDSRECEIPTITEMLIST_ORIGINALRECEIPTITEMTEXT,
	REWARDSRECEIPTITEMLIST_PARTNERITEMID,
	REWARDSRECEIPTITEMLIST_POINTSEARNED,
	REWARDSRECEIPTITEMLIST_POINTSNOTAWARDEDREASON,
	REWARDSRECEIPTITEMLIST_POINTSPAYERID,
	REWARDSRECEIPTITEMLIST_PREVENTTARGETGAPPOINTS,
	REWARDSRECEIPTITEMLIST_PRICEAFTERCOUPON,
	REWARDSRECEIPTITEMLIST_QUANTITYPURCHASED,
	REWARDSRECEIPTITEMLIST_REWARDSGROUP ,
	REWARDSRECEIPTITEMLIST_REWARDSPRODUCTPARTNERID ,
	REWARDSRECEIPTITEMLIST_TARGETPRICE ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDBARCODE ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDDESCRIPTION ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDNEWITEM ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDPRICE ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDQUANTITY 
) 
SELECT ID,
	REWARDSRECEIPTITEMLIST_BARCODE,
	REWARDSRECEIPTITEMLIST_BRANDCODE,
	REWARDSRECEIPTITEMLIST_COMPETITIVEPRODUCT,
	REWARDSRECEIPTITEMLIST_COMPETITORREWARDSGROUP ,
	REWARDSRECEIPTITEMLIST_DELETED,
	REWARDSRECEIPTITEMLIST_DESCRIPTION,
	REWARDSRECEIPTITEMLIST_DISCOUNTEDITEMPRICE,
	REWARDSRECEIPTITEMLIST_FINALPRICE,
	REWARDSRECEIPTITEMLIST_ITEMNUMBER,
	REWARDSRECEIPTITEMLIST_ITEMPRICE,
	REWARDSRECEIPTITEMLIST_METABRITECAMPAIGNID,
	REWARDSRECEIPTITEMLIST_NEEDSFETCHREVIEW,
	REWARDSRECEIPTITEMLIST_NEEDSFETCHREVIEWREASON,
	REWARDSRECEIPTITEMLIST_ORIGINALFINALPRICE,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEBARCODE,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEDESCRIPTION ,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEITEMPRICE ,
	REWARDSRECEIPTITEMLIST_ORIGINALMETABRITEQUANTITYPURCHASED ,
	REWARDSRECEIPTITEMLIST_ORIGINALRECEIPTITEMTEXT,
	REWARDSRECEIPTITEMLIST_PARTNERITEMID,
	REWARDSRECEIPTITEMLIST_POINTSEARNED,
	REWARDSRECEIPTITEMLIST_POINTSNOTAWARDEDREASON,
	REWARDSRECEIPTITEMLIST_POINTSPAYERID,
	REWARDSRECEIPTITEMLIST_PREVENTTARGETGAPPOINTS,
	REWARDSRECEIPTITEMLIST_PRICEAFTERCOUPON,
	REWARDSRECEIPTITEMLIST_QUANTITYPURCHASED,
	REWARDSRECEIPTITEMLIST_REWARDSGROUP ,
	REWARDSRECEIPTITEMLIST_REWARDSPRODUCTPARTNERID ,
	REWARDSRECEIPTITEMLIST_TARGETPRICE ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDBARCODE ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDDESCRIPTION ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDNEWITEM ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDPRICE ,
	REWARDSRECEIPTITEMLIST_USERFLAGGEDQUANTITY 
	FROM RECEIPTS_FLATTENED;