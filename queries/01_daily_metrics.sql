SELECT PARSE_DATE('%Y%m%d', date) AS session_date,
  COUNT(*) AS total_sessions,
  SUM(totals.totalTransactionRevenue)/1000000 AS total_revenue
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY 1 
ORDER BY 1
