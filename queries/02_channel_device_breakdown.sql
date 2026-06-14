-- Query 02: Channel & Device Breakdown
-- Project: veteran-analytics
-- Dataset: bigquery-public-data.google_analytics_sample

SELECT
  date,
  trafficSource.medium AS medium,
  trafficSource.source AS source,
  device.deviceCategory AS device,
  COUNT(*) AS sessions,
  SUM(totals.transactions) AS transactions,
  SUM(totals.totalTransactionRevenue) / 1000000 AS revenue,
  SUM(totals.bounces) AS bounces
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20170101' AND '20171231'
GROUP BY date, medium, source, device
ORDER BY date ASC