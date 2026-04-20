-- Conversion rate and Average Order Value
SELECT PARSE_DATE('%Y%m%d', date) AS session_date, 
  COUNT(*) AS sessions, 
  SUM(totals.transactions) AS transactions, 
  SUM(totals.totalTransactionRevenue)/1000000 AS revenue, 
  SAFE_DIVIDE(SUM(totals.transactions), COUNT(*))*100 AS conversion_rate, 
  SAFE_DIVIDE(SUM(totals.totalTransactionRevenue)/1000000, SUM(totals.transactions)) AS average_order_value 
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*` 
GROUP BY 1
ORDER BY 1
