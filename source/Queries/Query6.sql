-- Brand which has most transactions among users who were created within past 6 months.
select  b.name as brand_name, count(*) as transaction_count from   rpts_flat r     join items i on r.id=i.receipt_id  join     brands b on i.brandcode = b.brandcode join users u on r.userid = u._ID_$OID where    TO_TIMESTAMP(CREATEDDATE_$DATE / 1000) >= dateadd(month, -6, (select max(TO_TIMESTAMP(CREATEDDATE_$DATE / 1000)) from users)) group by     b.name order by  transaction_count desc limit 1 ;

