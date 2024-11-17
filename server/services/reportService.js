const { pool } = require('../config/db');
const { REPORT_ERRORS } = require('../utils/constants');
const { reportQueries } = require('../models/reportQueries');

class ReportService {
    static async getSalesReport(startDate, endDate) {
        const connection = await pool.getConnection();
        try {
            await connection.beginTransaction();

            // Get sales data
            const [salesData] = await connection.query(
                reportQueries.getSalesData,
                [startDate, endDate]
            );

            // Get top selling items
            const [topSellingItems] = await connection.query(
                reportQueries.getTopSellingItems,
                [startDate, endDate]
            );

            // Calculate summary statistics
            const summary = {
                totalRevenue: salesData.reduce((sum, day) => sum + Number(day.revenue), 0),
                totalProfit: salesData.reduce((sum, day) => sum + Number(day.profit), 0),
                totalOrders: salesData.reduce((sum, day) => sum + Number(day.orders), 0),
                averageOrderValue: salesData.length > 0 
                    ? salesData.reduce((sum, day) => sum + Number(day.revenue), 0) / 
                      salesData.reduce((sum, day) => sum + Number(day.orders), 0)
                    : 0,
                topSellingItems: topSellingItems.map(item => ({
                    ...item,
                    revenue: Number(item.revenue),
                    profit: Number(item.profit)
                }))
            };

            await connection.commit();
            return {
                salesData: salesData.map(day => ({
                    ...day,
                    revenue: Number(day.revenue),
                    profit: Number(day.profit),
                    orders: Number(day.orders)
                })),
                summary
            };

        } catch (error) {
            await connection.rollback();
            console.error('Error in getSalesReport:', error);
            throw new Error(REPORT_ERRORS.SALES_REPORT_ERROR);
        } finally {
            connection.release();
        }
    }

    static async getInventoryReport(startDate, endDate) {
        try {
            const [inventoryData] = await pool.query(
                reportQueries.getInventoryReport,
                [startDate, endDate]
            );

            return inventoryData;
        } catch (error) {
            console.error('Error in getInventoryReport:', error);
            throw new Error(REPORT_ERRORS.INVENTORY_REPORT_ERROR);
        }
    }
    static async getMonthlyFlavorSales(flavor, startDate, endDate) {
        try {
            const [rows] = await pool.query(
                reportQueries.getMonthlyFlavorSales,
                [flavor, startDate, endDate]
            );
            return rows;
        } catch (error) {
            console.error('Error in getMonthlyFlavorSales:', error);
            throw new Error('Failed to generate monthly flavor sales report');
        }
    }

    static async getMonthlyToppingSales(topping, startDate, endDate) {
        try {
            const [rows] = await pool.query(
                reportQueries.getMonthlyToppingSales,
                [topping, startDate, endDate]
            );
            return rows;
        } catch (error) {
            console.error('Error in getMonthlyToppingSales:', error);
            throw new Error('Failed to generate monthly topping sales report');
        }
    }

    static async getItemAggregateSales(itemType, startDate, endDate) {
        try {
            const [rows] = await pool.query(
                reportQueries.getItemAggregateSales,
                [itemType, startDate, endDate]
            );
            return rows;
        } catch (error) {
            console.error('Error in getItemAggregateSales:', error);
            throw new Error('Failed to generate item aggregate sales report');
        }
    }

    static async getAggregateFlavorSales(startDate, endDate) {
        try {
            const [rows] = await pool.query(
                reportQueries.getAggregateFlavorSales,
                [startDate, endDate]
            );
            return rows;
        } catch (error) {
            console.error('Error in getAggregateFlavorSales:', error);
            throw new Error('Failed to generate aggregate flavor sales report');
        }
    }

    static async getAggregateToppingSales(startDate, endDate) {
        try {
            const [rows] = await pool.query(
                reportQueries.getAggregateToppingSales,
                [startDate, endDate]
            );
            return rows;
        } catch (error) {
            console.error('Error in getAggregateToppingSales:', error);
            throw new Error('Failed to generate aggregate topping sales report');
        }
    }

    static async getFlavors() {
        try {
            const [rows] = await pool.query(reportQueries.getFlavors);
            return rows.map(row => row.Item_Name);
        } catch (error) {
            console.error('Error in getFlavors:', error);
            throw new Error('Failed to fetch flavors');
        }
    }

    static async getToppings() {
        try {
            const [rows] = await pool.query(reportQueries.getToppings);
            return rows.map(row => row.Item_Name);
        } catch (error) {
            console.error('Error in getToppings:', error);
            throw new Error('Failed to fetch toppings');
        }
    }

    static async getFlavorToppingHeatmap(startDate, endDate) {
        const query = reportQueries.getFlavorToppingHeatmap;
        try {
            const [rows] = await pool.query(query, [startDate, endDate]);
            return rows;
        } catch (error) {
            console.error('Error in getFlavorToppingHeatmap:', error);
            throw new Error('Failed to generate flavor-topping heatmap');
        }
    }
}

module.exports = ReportService;