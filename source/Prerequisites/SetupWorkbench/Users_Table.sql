-- Create Users table using users.josn file
CREATE TABLE "FETCH"."PUBLIC"."Users" ( _id VARCHAR , active BOOLEAN , createdDate VARCHAR , lastLogin VARCHAR , role VARCHAR , signUpSource VARCHAR , state VARCHAR ); 

CREATE TEMP FILE FORMAT "FETCH"."PUBLIC"."temp_file_format_infer_2024-03-07T07:02:00.391Z"
	TYPE=JSON
    STRIP_OUTER_ARRAY=FALSE
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "FETCH"."PUBLIC"."Users" 
FROM (SELECT $1:_id::VARCHAR, $1:active::BOOLEAN, $1:createdDate::VARCHAR, $1:lastLogin::VARCHAR, $1:role::VARCHAR, $1:signUpSource::VARCHAR, $1:state::VARCHAR
	FROM '@"FETCH"."PUBLIC"."_snowflake_temp_import_files_"') 
FILES = ('2024-03-07T07:01:59.676Z/users.json') 
FILE_FORMAT = '"FETCH"."PUBLIC"."temp_file_format_infer_2024-03-07T07:02:00.391Z"' 
ON_ERROR=ABORT_STATEMENT 

