const SHOP_ERRORS = {
    ITEM_NOT_FOUND: 'Item not found',
    INVALID_INPUT: 'Invalid input data',
    DB_ERROR: 'Database error occurred',
    CREATE_ERROR: 'Error creating item',
    UPDATE_ERROR: 'Error updating item',
    DELETE_ERROR: 'Error deleting item'
};

const AUTH_ERRORS = {
    INVALID_CREDENTIALS: 'Invalid credentials',
    TOKEN_REQUIRED: 'Authentication required',
    TOKEN_INVALID: 'Invalid token',
    ADMIN_ACCESS_REQUIRED: 'Admin access required',
    EMPLOYEE_ACCESS_REQUIRED: 'Employee access required',
    SERVER_ERROR: 'Server error during authentication'
};

const CUSTOMER_ERRORS = {
    NOT_FOUND: 'Customer not found',
    INVALID_POINTS: 'Invalid points value',
    INVALID_ROLE: 'Invalid user role',
    UPDATE_FAILED: 'Failed to update customer data',
    ORDERS_NOT_FOUND: 'No orders found for customer'
};

module.exports = {
    SHOP_ERRORS,
    AUTH_ERRORS,
    CUSTOMER_ERRORS
};