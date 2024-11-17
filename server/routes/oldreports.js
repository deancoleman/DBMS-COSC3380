const express = require('express');
const {pool} = require('../config/db'); // Assuming db connection is set up here
const { router } = require('../server');
const reportRouter = express.Router();

// Endpoint for fetching monthly sales data for a specified item type
// In reportServer.js or similar backend file


reportRouter.get('/monthly-sales', async (req, res) => {
  const { flavor, startDate, endDate } = req.query;

  const query = `
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
  `;

  try {
      const [rows] = await pool.query(query, [flavor, startDate, endDate]);
      res.json(rows);
      
  } catch (error) {
      console.error('Error fetching filtered sales report:', error);
      res.status(500).json({ error: 'Failed to retrieve flavor sales data' });
  }
});

reportRouter.get('/monthly-topping-sales', async (req, res) => {
  const { topping, startDate, endDate } = req.query;

  const query = `
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
  `;

  try {
      const [rows] = await pool.query(query, [topping, startDate, endDate]);
      res.json(rows);
  } catch (error) {
      console.error('Error fetching topping sales report:', error);
      res.status(500).json({ error: 'Failed to retrieve topping sales data' });
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
  } catch (error) {
    console.error('Error fetching flavors in Router:', error);
    res.status(500).json({ error: 'Failed to retrieve flavors' });
  }
});

reportRouter.get('/toppings', async (req, res) => {
  try {
    const query = 'SELECT DISTINCT Item_Name FROM Item WHERE Item_Type = "topping"';
    const [rows] = await pool.query(query);
    res.json(rows.map(row => row.Item_Name));
  } catch (error) {
    console.error('Error fetching toppings in Router:', error);
    res.status(500).json({ error: 'Failed to retrieve flavors' });
  }
});

// Route to get aggregate flavor sales
reportRouter.get('/aggregate-flavor-sales', async (req, res) => {
  const { startDate, endDate } = req.query;

  const query = `
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
  `;

  try {
      const [rows] = await pool.query(query, [startDate, endDate]);
      res.json(rows);
  } catch (error) {
      console.error('Error fetching aggregate flavor sales:', error);
      res.status(500).json({ error: 'Failed to retrieve aggregate flavor sales data' });
  }
});

// Route to get aggregate topping sales
reportRouter.get('/aggregate-topping-sales', async (req, res) => {
  const { startDate, endDate } = req.query;

  const query = `
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
  `;

  try {
      const [rows] = await pool.query(query, [startDate, endDate]);
      res.json(rows);
  } catch (error) {
      console.error('Error fetching aggregate topping sales:', error);
      res.status(500).json({ error: 'Failed to retrieve aggregate topping sales data' });
  }
});

// Route to get flavor-topping heatmap data
reportRouter.get('/flavor-topping-heatmap', async (req, res) => {
  const { startDate, endDate } = req.query;

  const query = `
  SELECT 
    FlavorName, 
    ToppingName, 
    SUM(CombinationVolume) AS TotalCombinationVolume
  FROM 
    FlavorToppingDateHeatmap
  WHERE 
    TransactionDate BETWEEN ? AND ?
  GROUP BY 
    FlavorName, ToppingName
  ORDER BY 
    TotalCombinationVolume DESC;
  `;

  try {
      const [rows] = await pool.query(query, [startDate, endDate]);
      res.json(rows);
  } catch (error) {
      console.error('Error fetching flavor-topping heatmap data:', error);
      res.status(500).json({ error: 'Failed to retrieve flavor-topping heatmap data' });
  }
});



module.exports = reportRouter;
