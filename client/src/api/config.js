const API_CONFIG = {
    BASE_URL: process.env.NODE_ENV === 'production'
      ? 'https://dbms-cosc-3380.vercel.app'
      : 'http://localhost:5000',
    ENDPOINTS: {
      AUTH: {
        CUSTOMER_LOGIN: '/auth/customer/login',
        ADMIN_LOGIN: '/auth/admin/login'
      },
      CUSTOMER: {
        ACCOUNT: '/acc/customer/account'
      },
      SHOP: {
        FLAVORS: '/shop/all-flavors'
      },
      REPORTS: {
        MONTHLY_SALES: '/api/reports/monthly-sales', //for 1st 
        MONTHLY_TOPPING_SALES: '/api/reports/monthly-topping-sales', //for 2nd report
        ITEM_AGGREGATE: '/api/reports/item-aggregate', // For the third report
        FLAVORS: '/api/reports/flavors',
        TOPPINGS: '/api/reports/toppings',
        AGGREGATE_FLAVOR_SALES: '/api/reports/aggregate-flavor-sales',
        AGGREGATE_TOPPING_SALES: '/api/reports/aggregate-topping-sales',
        FLAVOR_TOPPING_HEATMAP: '/api/reports/flavor-topping-heatmap',
      }
    },
    HEADERS: {
      DEFAULT: {
        'Content-Type': 'application/json'
      }
    }
  };
  
  export default API_CONFIG;