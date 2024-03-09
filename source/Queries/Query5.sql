-- Brand which has most spend among users who were created within past 6 months. 
select  b.name as brand_name,   sum(i.finalprice) as total_spend from   rpts_flat r     join items i on r.id=i.receipt_id  join     brands b on i.brandcode = b.brandcode join users u on r.userid = u._ID_$OID where    TO_TIMESTAMP(CREATEDDATE_$DATE / 1000) >= dateadd(month, -6, (select max(TO_TIMESTAMP(CREATEDDATE_$DATE / 1000)) from users)) group by     b.name order by     total_spend desc limit 1 ;

