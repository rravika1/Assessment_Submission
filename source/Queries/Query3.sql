-- Avergae Spend from receipts with rewardsReceiptStatus of Accepted or Rejected, which is greater.
select REWARDSRECEIPTSTATUS, avg(totalspent) as avg_spend from rpts_flat where REWARDSRECEIPTSTATUS
 in('FINISHED','REJECTED') group by REWARDSRECEIPTSTATUS



