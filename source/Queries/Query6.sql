-- Brand which has most transactions among users who were created within past 6 months.
select  b.name as brand_name,   sum(i.rewardsreceiptitemlist_finalprice) as total_spend from   rpts r     join items i on r.id=i.id  join     brand_flattened b on i.rewardsreceiptitemlist_brandcode = b.brandcode join     airbnb.raw.user_flattened u on r.userid = u.oid where     u.createddate >= dateadd(month, -6, (select max(createddate) from airbnb.raw.user_flattened)) group by     b.name order by     total_spend desc limit 1 ;

