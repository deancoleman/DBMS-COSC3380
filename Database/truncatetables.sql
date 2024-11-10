SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM Customer;
DELETE FROM Employee;
DELETE FROM Food_Item;
DELETE FROM Item;
DELETE FROM Promotions;
DELETE FROM Retail_Price_History;
DELETE FROM Returns;
DELETE FROM Supplies_Item;
DELETE FROM Transaction;
DELETE FROM Transaction_Item;
DELETE FROM Vendor;
DELETE FROM VendorInvoice;
DELETE FROM Vendor_Price_History;

SET FOREIGN_KEY_CHECKS = 1;
