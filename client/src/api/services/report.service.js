import API_CONFIG from '../config';
import { api } from '../axios';

export const reportService = {
  getMonthlySalesReport: async (itemType, startDate, endDate) => {
    try {
      const response = await api.get(API_CONFIG.ENDPOINTS.REPORTS.MONTHLY_SALES, {
        params: { itemType, startDate, endDate },
      });
      return response.data;
    } catch (error) {
      throw error;
    }
  },
  getItemAggregate: async (itemType, startDate, endDate) => {
    const response = await api.get(API_CONFIG.REPORTS.ITEM_AGGREGATE, {
        params: { itemType, startDate, endDate },
    });
    return response.data;
},
};
