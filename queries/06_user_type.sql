-- New vs returning user analysis
SELECT
  CASE 
    WHEN totals.newVisits = 1 THEN 'New' 
    WHEN totals.newVisits IS NULL THEN 'Returning' 
  END AS user_type,
  COUNT(*) AS sessions, 
  SUM(totals.transactions) AS transactions, 
  SUM(totals.totalTransactionRevenue)/1000000 AS revenue 
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*` 
GROUP BY 1
