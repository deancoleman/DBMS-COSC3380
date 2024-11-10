import API_CONFIG from '../config';
import { api } from '../axios';

export const reportService = {
  getMonthlySales: async (itemType, startDate, endDate) => {
    try {
      const response = await api.get(API_CONFIG.ENDPOINTS.REPORTS.MONTHLY_SALES, {
        params: { itemType, startDate, endDate },
      });
      return response.data;
    } catch (error) {
      console.error('Error fetching monthly sales report:', error);
      throw error;
    }
  },
  
  getItemAggregate: async (itemType, startDate, endDate) => {
    try {
      const response = await api.get(API_CONFIG.ENDPOINTS.REPORTS.ITEM_AGGREGATE, {
        params: { itemType, startDate, endDate },
      });
      return response.data;
    } catch (error) {
      console.error('Error fetching item aggregate report:', error);
      throw error;
    }
  },

  getAllFlavors: async () => {
    try {
      const response = await api.get(API_CONFIG.ENDPOINTS.REPORTS.FLAVORS);
      return response.data;
    } catch (error) {
      console.error('Error fetching all flavors:', error);
      throw error;
    }
  }
};
