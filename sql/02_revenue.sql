--Metric: Revenue = Sum from sales prices with status 'delivered'
--Coverage: Jan 2017 - Aug 2018 (complete months)
--A row per month
-- Result: The month with the highest revenue was November 2017 with $987765.37

SELECT
	DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
	ROUND(SUM(oi.price), 2) AS revenue,
	COUNT(DISTINCT(o.order_id)) AS Total_orders,
	ROUND(SUM(oi.price) / COUNT(DISTINCT(o.order_id)), 2) AS avg_order_value
FROM
	orders o
JOIN order_items oi
	ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
	AND o.order_purchase_timestamp >= '2017-01-01'
	AND o.order_purchase_timestamp <  '2018-09-01'
GROUP BY DATE_TRUNC('month', o.order_purchase_timestamp)
ORDER BY revenue DESC;