const express = require('express');
const {pool} = require('../config/db'); // Assuming db connection is set up here
console.log(pool);
const reportRouter = express.Router();

// Endpoint for fetching monthly sales data for a specified item type
// In reportServer.js or similar backend file
reportRouter.get('/monthly-sales', async (req, res) => {
    const { itemType, startDate, endDate } = req.query;
  
    const query = `
    SELECT 
        Item_Name AS ItemName, 
        Year, 
        Month, 
        TotalVolume AS TotalSold, 
        TotalRevenue AS TotalRevenue
    FROM 
        MonthlyItemSales
    WHERE 
        Item_Name IN (SELECT Item_Name FROM Item WHERE Item_Type = ?)
        AND CONCAT(Year, '-', LPAD(Month, 2, '0'), '-01') BETWEEN ? AND ?
    ORDER BY 
        Item_Name, Year, Month;
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
    `;
    try {
        const [rows] = await pool.query(query, [itemType, startDate, endDate]);
        res.json(rows);
    } catch (error) {
        console.error('Error fetching item aggregate report:', error);
        res.status(500).json({ error: 'Failed to retrieve item aggregate report' });
    }
});

// Endpoint for fetching all flavors
reportRouter.get('/flavors', async (req, res) => {
  try {
    const query = 'SELECT DISTINCT Item_Name FROM Item WHERE Item_Type = "flavor"';
    const [rows] = await pool.query(query);
    res.json(rows.map(row => row.Item_Name));
    console.log("router test 1")
  } catch (error) {
    console.error('Error fetching flavors in Router:', error);
    res.status(500).json({ error: 'Failed to retrieve flavors' });
  }
});



module.exports = reportRouter;
