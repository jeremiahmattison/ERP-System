-- Query to get Sales Orders with its corresponding Financial Transactions
select sales_orders.sales_order_id, sales_orders.order_date, sales_orders.total_amount, financial_transactions.transaction_date, financial_transactions.amount
from sales_orders
inner join financial_transactions on sales_orders.sales_order_id = financial_transactions.sales_order_id;


-- Query to get Inventory Details with Supplier Information
select inventory.item_name, inventory.quantity, inventory.cost, suppliers.supplier_name, suppliers.contact_info
from inventory
inner join suppliers on inventory.supplier_id = suppliers.supplier_id;


-- Query to get Employee Payroll Information
select employees.first_name, employees.last_name, payroll.salary, payroll.tax, payroll.net_pay, payroll.payment_date
from employees
inner join payroll on employees.employee_id = payroll.employee_id;


-- Query to Report on Inventory Levels
select inventory.item_name, inventory.quantity, inventory.cost, suppliers.supplier_name
from inventory
inner join suppliers on inventory.supplier_id = suppliers.supplier_id
where inventory.quantity > 0;


-- Query to Report Total Sales by Customer
select customers.customer_name, sum(sales_orders.total_amount) as total_sales
from customers
inner join sales_orders on customers.customer_id = sales_orders.customer_id
group by customers.customer_name;


-- Query to Report on Financial Transactions by Date
select financial_transactions.transaction_id, financial_transactions.transaction_date, financial_transactions.amount, financial_transactions.transaction_type
from financial_transactions
where financial_transactions.transaction_date between #03/01/2024# and #03/31/2024#;
