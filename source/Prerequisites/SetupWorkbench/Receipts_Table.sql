-- Create Receipts table using receipts.json file as input 
CREATE TABLE "FETCH"."PUBLIC"."Receipts" ( _id VARCHAR , bonusPointsEarned NUMBER , bonusPointsEarnedReason VARCHAR , createDate VARCHAR , dateScanned VARCHAR , finishedDate VARCHAR , modifyDate VARCHAR , pointsAwardedDate VARCHAR , pointsEarned VARCHAR , purchaseDate VARCHAR , purchasedItemCount NUMBER , rewardsReceiptItemList VARCHAR , rewardsReceiptStatus VARCHAR , totalSpent VARCHAR , userId VARCHAR ); 

CREATE TEMP FILE FORMAT "FETCH"."PUBLIC"."temp_file_format_infer_2024-03-07T07:04:10.056Z"
	TYPE=JSON
    STRIP_OUTER_ARRAY=FALSE
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "FETCH"."PUBLIC"."Receipts" 
FROM (SELECT $1:_id::VARCHAR, $1:bonusPointsEarned::NUMBER, $1:bonusPointsEarnedReason::VARCHAR, $1:createDate::VARCHAR, $1:dateScanned::VARCHAR, $1:finishedDate::VARCHAR, $1:modifyDate::VARCHAR, $1:pointsAwardedDate::VARCHAR, $1:pointsEarned::VARCHAR, $1:purchaseDate::VARCHAR, $1:purchasedItemCount::NUMBER, $1:rewardsReceiptItemList::VARCHAR, $1:rewardsReceiptStatus::VARCHAR, $1:totalSpent::VARCHAR, $1:userId::VARCHAR
	FROM '@"FETCH"."PUBLIC"."_snowflake_temp_import_files_"') 
FILES = ('2024-03-07T07:04:07.746Z/receipts.json') 
FILE_FORMAT = '"FETCH"."PUBLIC"."temp_file_format_infer_2024-03-07T07:04:10.056Z"' 
ON_ERROR=ABORT_STATEMENT 

