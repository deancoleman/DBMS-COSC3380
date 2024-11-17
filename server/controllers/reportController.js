const ReportService = require('../services/reportService');
const { REPORT_ERRORS } = require('../utils/constants');

class ReportController {
    static async getSalesReport(req, res) {
        try {
            const startDate = new Date(req.query.startDate);
            const endDate = new Date(req.query.endDate);

            const reportData = await ReportService.getSalesReport(startDate, endDate);
            res.json(reportData);
            
        } catch (error) {
            console.error('Controller - getSalesReport error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getInventoryReport(req, res) {
        try {
            const startDate = req.query.startDate ? new Date(req.query.startDate) : new Date(0);
            const endDate = req.query.endDate ? new Date(req.query.endDate) : new Date();

            // Use the ReportService instead of direct pool queries
            const reportData = await ReportService.getInventoryReport(startDate, endDate);
            res.json(reportData);
            
        } catch (error) {
            console.error('Controller - getInventoryReport error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getMonthlySales(req, res) {
        try {
            const { flavor, startDate, endDate } = req.query;
            const reportData = await ReportService.getMonthlySales(flavor, startDate, endDate);
            res.json(reportData);
        } catch (error) {
            console.error('Controller - getMonthlySales error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getMonthlyToppingSales(req, res) {
        try {
            const { topping, startDate, endDate } = req.query;
            const reportData = await ReportService.getMonthlyToppingSales(topping, startDate, endDate);
            res.json(reportData);
        } catch (error) {
            console.error('Controller - getMonthlyToppingSales error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getItemAggregate(req, res) {
        try {
            const { itemType, startDate, endDate } = req.query;
            const reportData = await ReportService.getItemAggregate(itemType, startDate, endDate);
            res.json(reportData);
        } catch (error) {
            console.error('Controller - getItemAggregate error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getFlavors(req, res) {
        try {
            const flavors = await ReportService.getFlavors();
            res.json(flavors);
        } catch (error) {
            console.error('Controller - getFlavors error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getToppings(req, res) {
        try {
            const toppings = await ReportService.getToppings();
            res.json(toppings);
        } catch (error) {
            console.error('Controller - getToppings error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getAggregateFlavorSales(req, res) {
        try {
            const { startDate, endDate } = req.query;
            const reportData = await ReportService.getAggregateFlavorSales(startDate, endDate);
            res.json(reportData);
        } catch (error) {
            console.error('Controller - getAggregateFlavorSales error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getAggregateToppingSales(req, res) {
        try {
            const { startDate, endDate } = req.query;
            const reportData = await ReportService.getAggregateToppingSales(startDate, endDate);
            res.json(reportData);
        } catch (error) {
            console.error('Controller - getAggregateToppingSales error:', error);
            res.status(500).json({ error: error.message });
        }
    }

    static async getFlavorToppingHeatmap(req, res) {
        try {
            const { startDate, endDate } = req.query;
            const heatmapData = await ReportService.getFlavorToppingHeatmap(startDate, endDate);
            res.json(heatmapData);
        } catch (error) {
            console.error('Controller - getFlavorToppingHeatmap error:', error);
            res.status(500).json({ error: error.message });
        }
    }
    
}

module.exports = ReportController;