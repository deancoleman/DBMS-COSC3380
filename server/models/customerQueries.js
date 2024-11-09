const customerQueries = {
    getCustomerById: `
        SELECT 
            c.Customer_ID, 
            c.Membership_Level, 
            c.Phone_Number, 
            c.Account_Creation_Date, 
            c.Total_Accrued_Discount_Points, 
            c.Discount_Points_Used,
            (c.Total_Accrued_Discount_Points - c.Discount_Points_Used) as Available_Points,
            CASE
                WHEN c.Membership_Level = 'Bronze' THEN 50 - (c.Total_Accrued_Discount_Points - c.Discount_Points_Used)
                WHEN c.Membership_Level = 'Silver' THEN 100 - (c.Total_Accrued_Discount_Points - c.Discount_Points_Used)
                WHEN c.Membership_Level = 'Gold' THEN 200 - (c.Total_Accrued_Discount_Points - c.Discount_Points_Used)
                ELSE 0
            END as Points_To_Next_Level,
            MONTH(c.Account_Creation_Date) as Birth_Month
        FROM customer c
        WHERE c.Customer_ID = ?
    `,
    
    getCustomerOrders: `
        SELECT 
            t.Transaction_ID,
            t.Date as Transaction_Date,
            t.Total_Price as Total_Amount,
            t.Discount_Percentage,
            t.Discount_Amount,
            ti.Item_ID,
            i.Item_Name,
            ti.Quantity_Sold as Quantity,
            i.Unit_Price
        FROM transaction t
        JOIN transaction_item ti ON t.Transaction_ID = ti.Transaction_ID
        JOIN item i ON ti.Item_ID = i.Item_ID
        WHERE t.Customer_ID = ?
        ORDER BY t.Date DESC
    `,

    updateCustomerPoints: `
        UPDATE customer
        SET 
            Total_Accrued_Discount_Points = Total_Accrued_Discount_Points + ?,
            Membership_Level = CASE
                WHEN (Total_Accrued_Discount_Points + ? - Discount_Points_Used) >= 200 THEN 'Diamond'
                WHEN (Total_Accrued_Discount_Points + ? - Discount_Points_Used) >= 100 THEN 'Gold'
                WHEN (Total_Accrued_Discount_Points + ? - Discount_Points_Used) >= 50 THEN 'Silver'
                ELSE 'Bronze'
            END
        WHERE Customer_ID = ?
    `
};

module.exports = {
    customerQueries
};