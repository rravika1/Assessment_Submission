-- Top 5 Brands by receipts scanned for most recent month.
SELECT
    b.name AS brand_name,
    COUNT(*) AS receipts_scanned
FROM
    brands b
JOIN
    items it ON b.brandcode = it.brandcode
JOIN
    rpts_flat r ON r.id = it.RECEIPT_ID
WHERE
    DATE_TRUNC('month', TO_TIMESTAMP(r.DATESCANNED_$DATE / 1000)) =
    (
        SELECT
            MAX(DATE_TRUNC('month', TO_TIMESTAMP(r2.DATESCANNED_$DATE / 1000)))
        FROM
            rpts_flat r2
    )
GROUP BY
    b.name
ORDER BY
    receipts_scanned DESC
LIMIT
    5;


