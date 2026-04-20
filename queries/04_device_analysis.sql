-- Revenue by device category
SELECT device.deviceCategory, 
  COUNT(*) AS sessions, 
  SUM(totals.transactions) AS transactions, 
  SUM(totals.totalTransactionRevenue)/1000000 AS revenue, 
  SAFE_DIVIDE(SUM(totals.transactions), COUNT(*))*100 AS conversion_rate 
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*` 
GROUP BY 1
