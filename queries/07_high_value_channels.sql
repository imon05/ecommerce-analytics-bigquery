-- Revenue per session analysis
SELECT trafficSource.source,
  COUNT(*) AS sessions,
  SUM(totals.transactions) AS transactions,
  SUM(totals.totalTransactionRevenue)/1000000 AS revenue,
  SAFE_DIVIDE(SUM(totals.totalTransactionRevenue)/1000000, COUNT(*)) AS revenue_per_session
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20160919'
GROUP BY 1
