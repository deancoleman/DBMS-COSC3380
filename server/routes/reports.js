const express = require('express');
const pool = require('../config/db'); // Assuming db connection is set up here
const reportRouter = express.Router();

// Endpoint for fetching monthly sales data for a specified item type
// In reportServer.js or similar backend file
reportRouter.get('/monthly-sales', async (req, res) => {
    const { itemType, startDate, endDate } = req.query;
  
    const query = `
      SELECT 
        item_name AS ItemName, 
        year AS Year, 
        month AS Month, 
        SUM(total_volume) AS TotalSold, 
        SUM(total_revenue) AS TotalRevenue
      FROM MonthlyItemSales
      WHERE item_name IN (SELECT Item_Name FROM Item WHERE Item_Type = ?)
        AND TransactionDate BETWEEN ? AND ?
      GROUP BY item_name, year, month
      ORDER BY item_name, year, month;
    `;
  
    try {
      const [rows] = await pool.query(query, [itemType, startDate, endDate]);
      res.json(rows);
    } catch (error) {
      console.error('Error fetching filtered sales report:', error);
      res.status(500).json({ error: 'Failed to retrieve filtered sales data' });
    }
  });
  
  // Aggregate item report route
  reportRouter.get('/item-aggregate', async (req, res) => {
    const { startDate, endDate, itemType } = req.query;
    const query = `
        SELECT 
            item_name AS itemName,
            SUM(total_volume) AS totalSold,
            SUM(total_revenue) AS totalRevenue
        FROM 
            MonthlyItemSales
        WHERE 
            item_type = ? 
            AND CONCAT(year, '-', LPAD(month, 2, '0'), '-01') BETWEEN ? AND ?
        GROUP BY 
            item_name
        ORDER BY 
            totalSold DESC;
    `;
    try {
        const [rows] = await pool.query(query, [itemType, startDate, endDate]);
        res.json(rows);
    } catch (error) {
        console.error('Error fetching item aggregate report:', error);
        res.status(500).json({ error: 'Failed to retrieve item aggregate report' });
    }
});


module.exports = reportRouter;
