const express = require('express');
const router = express.Router();
const ReportController = require('../controllers/reportController');
const { authMiddleware, isStrictAdmin } = require('../middlewares/auth');

// Sales Report
router.get('/sales', authMiddleware, isStrictAdmin, ReportController.getSalesReport);

// Inventory Sale Report
router.get('/inventory', authMiddleware, isStrictAdmin, ReportController.getInventoryReport);

// Monthly Flavor Sales Report
router.get('/monthly-sales', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)
router.get('/monthly-topping-sales', authMiddleware, isStrictAdmin, ReportController.getMonthlyToppingReport)
router.get('/item-aggregate', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)
router.get('/flavors', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)
router.get('/toppings', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)
router.get('/aggregate-flavor-sales', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)
router.get('/aggregate-topping-sales', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)
router.get('/flavor-topping-heatmap', authMiddleware, isStrictAdmin,  ReportController.getMonthlyFlavorReport)

module.exports = router;