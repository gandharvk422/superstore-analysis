SELECT
    strftime('%Y-%m', "Order Date") as year_month,
    COUNT(DISTINCT "Order ID") as order_count,
    ROUND(SUM(Sales), 2) as total_sales,
    ROUND(SUM(Profit), 2) as total_profit,
    ROUND(AVG(Profit/Sales)*100, 2) as profit_margin_pct
FROM superstore
WHERE "Order Date" IS NOT NULL
GROUP BY year_month
ORDER BY year_month ASC;