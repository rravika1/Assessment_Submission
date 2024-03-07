-- Ranking of the top 5 brands by receipts scanned for recent month compared to the ranking for the previous month. 
with rm as( SELECT 
        i.REWARDSRECEIPTITEMLIST_BARCODE as barcode,
        COUNT(*) AS ScanCount
    FROM 
        items i join rpts r on r.id=i.id
        
    WHERE 
        r.datescanned >= DATEADD(MONTH, -1, CURRENT_DATE()) -- Filter for the recent month
    GROUP BY 
    i.REWARDSRECEIPTITEMLIST_BARCODE
        
    ORDER BY 
        ScanCount DESC
    LIMIT 5),

    pm as(SELECT 
        i.REWARDSRECEIPTITEMLIST_BARCODE as barcode,
        COUNT(*) AS ScanCount
    FROM 
        items i join rpts r on r.id=i.id
        
    WHERE 
       r.datescanned >= DATEADD(MONTH, -2, CURRENT_DATE()) AND
        r.datescanned  < DATEADD(MONTH, -1, CURRENT_DATE())
    GROUP BY 
    i.REWARDSRECEIPTITEMLIST_BARCODE
        
    ORDER BY 
        ScanCount DESC
    LIMIT 5)
    SELECT 
    RM.BARCODE AS RecentMonthBarcode,
    RM.ScanCount AS RecentMonthScanCount,
    PM.BARCODE AS PreviousMonthBarcode,
    PM.ScanCount AS PreviousMonthScanCount,
    CASE 
        WHEN RM.BARCODE IS NULL THEN 'New Entry'
        WHEN PM.BARCODE IS NULL THEN 'Dropped Out'
        WHEN RM.BARCODE = PM.BARCODE THEN 'No Change'
        WHEN RM.ScanCount > PM.ScanCount THEN 'Increased'
        ELSE 'Decreased'
    END AS Change
FROM 
    RM
FULL OUTER JOIN 
     PM ON RM.BARCODE = PM.BARCODE
ORDER BY 
    RM.ScanCount DESC;


