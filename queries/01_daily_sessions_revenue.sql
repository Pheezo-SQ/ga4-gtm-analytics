-- Query 01: Daily Sessions & Revenue
-- Project: veteran-analytics
-- Dataset: bigquery-public-data.google_analytics_sample

SELECT
  date,
  COUNT(*) AS total_sessions,
  SUM(totals.transactions) AS total_transactions,
  SUM(totals.totalTransactionRevenue) / 1000000 AS total_revenue,
  SUM(totals.visits) AS total_visits,
  SUM(totals.bounces) AS total_bounces
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20170101' AND '20171231'
GROUP BY date
ORDER BY date ASC