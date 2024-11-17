const reportQueries = {
    getSalesData: `
        SELECT 
            DATE(t.Date) as date,
            SUM(t.Total_Price) as revenue,
            COUNT(DISTINCT t.Transaction_ID) as orders,
            SUM(t.Total_Price - t.Discount_Amount) as profit
        FROM transaction t
        WHERE t.Date BETWEEN ? AND ?
        GROUP BY DATE(t.Date)
        ORDER BY date
    `,

    getTopSellingItems: `
        SELECT 
            i.Item_ID as itemId,
            i.Item_Name as name,
            SUM(ti.Quantity_Sold) as quantitySold,
            SUM(ti.Quantity_Sold * i.Unit_Price) as revenue,
            SUM((ti.Quantity_Sold * i.Unit_Price) - 
                COALESCE(t.Discount_Amount * (ti.Quantity_Sold * i.Unit_Price / t.Total_Price), 0)
            ) as profit
        FROM transaction t
        JOIN transaction_item ti ON t.Transaction_ID = ti.Transaction_ID
        JOIN item i ON ti.Item_ID = i.Item_ID
        WHERE t.Date BETWEEN ? AND ?
        GROUP BY i.Item_ID, i.Item_Name
        ORDER BY quantitySold DESC
        LIMIT 10
    `,

    getInventoryReport: `
        SELECT 
            i.Item_ID,
            i.Item_Name,
            i.Quantity,
            COUNT(il.Log_ID) as changes_count,
            SUM(CASE WHEN il.Quantity_Changed > 0 THEN il.Quantity_Changed ELSE 0 END) as total_added,
            SUM(CASE WHEN il.Quantity_Changed < 0 THEN ABS(il.Quantity_Changed) ELSE 0 END) as total_removed,
            MIN(i.Quantity) as min_quantity,
            MAX(i.Quantity) as max_quantity
        FROM item i
        LEFT JOIN inventory_log il ON i.Item_ID = il.Item_ID
        AND il.Action_Date BETWEEN ? AND ?
        GROUP BY i.Item_ID, i.Item_Name, i.Quantity
        ORDER BY i.Item_Name
    `,

    getMonthlyFlavorSales: `
        SELECT 
            FlavorName, 
            Year, 
            Month, 
            TotalVolume AS TotalSold, 
            TotalRevenue AS TotalRevenue
        FROM 
            MonthlyFlavorSales
        WHERE 
            FlavorName = ?
            AND CONCAT(Year, '-', LPAD(Month, 2, '0'), '-01') BETWEEN ? AND ?
        ORDER BY 
            FlavorName, Year, Month;
    `,

    getMonthlyToppingSales: `
        SELECT 
            ToppingName, 
            Year, 
            Month, 
            TotalVolume AS TotalSold, 
            TotalRevenue AS TotalRevenue
        FROM 
            MonthlyToppingSales
        WHERE 
            ToppingName = ?
            AND CONCAT(Year, '-', LPAD(Month, 2, '0'), '-01') BETWEEN ? AND ?
        ORDER BY 
            ToppingName, Year, Month;
    `,

    getItemAggregateSales: `
        SELECT 
            Item_Name AS ItemName,
            SUM(total_volume) AS totalSold,
            SUM(total_revenue) AS totalRevenue
        FROM 
            MonthlyItemSales
        WHERE 
            Item_Type = ? 
            AND CONCAT(year, '-', LPAD(month, 2, '0'), '-01') BETWEEN ? AND ?
        GROUP BY 
            Item_Name
        ORDER BY 
            totalSold DESC;
    `,
    getAggregateFlavorSales: `
        SELECT 
            FlavorName, 
            SUM(TotalVolume) AS TotalVolume, 
            SUM(TotalRevenue) AS TotalRevenue
        FROM 
            FlavorSalesAggregate
        JOIN
            \`Transaction\` t ON t.Date BETWEEN ? AND ?
        GROUP BY 
            FlavorName
        ORDER BY 
            TotalVolume DESC;
    `,
    getAggregateToppingSales: `
        SELECT 
            ToppingName, 
            SUM(TotalVolume) AS TotalVolume, 
            SUM(TotalRevenue) AS TotalRevenue
        FROM 
            ToppingSalesAggregate
        JOIN
            \`Transaction\` t ON t.Date BETWEEN ? AND ?
        GROUP BY 
            ToppingName
        ORDER BY 
            TotalVolume DESC;
    `,
    getToppings: `
        SELECT DISTINCT Item_Name 
        FROM Item 
        WHERE Item_Type = "topping"
    `,
    getFlavors: `
        SELECT DISTINCT Item_Name 
        FROM Item 
        WHERE Item_Type = "flavor"
    `
};

module.exports = {
    reportQueries
};