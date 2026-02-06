WITH customer_ltv AS (
    SELECT customerkey,
        cleaned_name,
        SUM(total_net_revenue) AS total_ltv
    FROM cohort_analysis
    GROUP BY customerkey,
        cleaned_name
),
-- Put previous main query into a CTE
customer_segments AS (
    SELECT PERCENTILE_CONT(0.25) WITHIN GROUP (
            ORDER BY total_ltv
        ) AS percentile_25th,
        PERCENTILE_CONT(0.75) WITHIN GROUP (
            ORDER BY total_ltv
        ) AS percentile_75th
    FROM customer_ltv
),
segment_values AS(
    SELECT c.customerkey,
        c.cleaned_name,
        c.total_ltv,
        CASE
            WHEN c.total_ltv < percentile_25th THEN '1 - Low-Value'
            WHEN c.total_ltv BETWEEN percentile_25th AND percentile_75th THEN '2 - Mid-Value'
            ELSE '3 - High-Value'
        END AS customer_segment
    FROM customer_ltv c,
        customer_segments cs
)
SELECT customer_segment,
    SUM(total_ltv) as total_ltv,
    COUNT(customerkey) AS customer_count,
    SUM(total_ltv) / COUNT(customerkey) AS avg_LTV
FROM segment_values
GROUP BY customer_segment
ORDER BY customer_segment DESC