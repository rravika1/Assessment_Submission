-- Top 5 Brands by receipts scanned for most recent month.
select b.name as brand_name, 
count(*) as receipts_scanned from brand_flattened b join items it on b.brandcode = it.rewardsreceiptitemlist_brandcode join rpts r on r.id=it.id where date_trunc('month', r.datescanned) = (      select max(date_trunc('month', datescanned))from rpts) group by b.name order by receipts_scanned desc limit 5;

