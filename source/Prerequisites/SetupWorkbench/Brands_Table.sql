-- Create Brand Table usinf brands.json file.
CREATE TABLE "FETCH"."PUBLIC"."Brand" ( _id VARCHAR , barcode VARCHAR , category VARCHAR , brandCode VARCHAR , categoryCode VARCHAR , cpg VARCHAR , name VARCHAR , topBrand BOOLEAN ); 

CREATE TEMP FILE FORMAT "FETCH"."PUBLIC"."temp_file_format_infer_2024-03-07T07:07:20.995Z"
	TYPE=JSON
    STRIP_OUTER_ARRAY=FALSE
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "FETCH"."PUBLIC"."Brand" 
FROM (SELECT $1:_id::VARCHAR, $1:barcode::VARCHAR, $1:category::VARCHAR, $1:brandCode::VARCHAR, $1:categoryCode::VARCHAR, $1:cpg::VARCHAR, $1:name::VARCHAR, $1:topBrand::BOOLEAN
	FROM '@"FETCH"."PUBLIC"."_snowflake_temp_import_files_"') 
FILES = ('2024-03-07T07:07:20.268Z/brands.json') 
FILE_FORMAT = '"FETCH"."PUBLIC"."temp_file_format_infer_2024-03-07T07:07:20.995Z"' 
ON_ERROR=ABORT_STATEMENT 

