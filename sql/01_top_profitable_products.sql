SELECT 
    Category,
    "Sub-Category",        -- ← Quotes for hyphen!
    "Product Name",        -- ← Quotes for spaces!
    ROUND(SUM(Sales), 2) as total_sales,
    ROUND(SUM(Profit), 2) as total_profit,
    COUNT(DISTINCT "Order ID") as order_count
FROM superstore 
WHERE Profit > 0
GROUP BY Category, "Sub-Category", "Product Name"
ORDER BY total_profit DESC
LIMIT 10;