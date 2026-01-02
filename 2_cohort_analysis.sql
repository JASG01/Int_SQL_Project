SELECT
	cohort_year,
	COUNT(DISTINCT customerkey) AS total_customers,
	SUM(total_net_reveneue) AS total_revenue,
	SUM(total_net_reveneue) / COUNT(DISTINCT customerkey) AS customer_revenue
FROM
	cohort_analysis
WHERE
	orderdate = first_purchase_date
GROUP BY 
	cohort_year