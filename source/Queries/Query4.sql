-- Total Number of items purchased from receipts with rewardsReceiptStatus of Accepted or Rejected which is gretaer.
select REWARDSRECEIPTSTATUS, sum(purchaseditemcount) as total_count from rpts_flat where REWARDSRECEIPTSTATUS in('FINISHED','REJECTED') group by REWARDSRECEIPTSTATUS;

