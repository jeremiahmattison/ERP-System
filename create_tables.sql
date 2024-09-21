--- these will be copied and pasted into the Query Design raw SQL input


create table users (
    user_id autoincrement primary key,
    username text(50) not null,
    password text(100) not null,
    role text(50),
    email text(100),
    phone_number text(15)
);

create table departments (
    department_id autoincrement primary key,
    department_name text(100),
    manager_id int
);

create table employees (
    employee_id autoincrement primary key,
    first_name text(50),
    last_name text(50),
    department_id int,
    position text(100),
    salary currency,
    attendance text(50)
);

create table payroll (
    payroll_id autoincrement primary key,
    employee_id int,
    salary currency,
    tax currency,
    net_pay currency,
    payment_date datetime
);

create table inventory (
    inventory_id autoincrement primary key,
    item_name text(100),
    quantity int,
    supplier_id int,
    purchase_date datetime,
    cost currency
);

create table suppliers (
    supplier_id autoincrement primary key,
    supplier_name text(100),
    contact_info text(100),
    address text(200)
);

create table purchase_orders (
    order_id autoincrement primary key,
    inventory_id int,
    supplier_id int,
    order_date datetime,
    quantity int,
    total_cost currency
);

create table customers (
    customer_id autoincrement primary key,
    customer_name text(100),
    contact_info text(100),
    address text(200)
);

create table sales_orders (
    sales_order_id autoincrement primary key,
    customer_id int,
    order_date datetime,
    total_amount currency
);

create table financial_transactions (
    transaction_id autoincrement primary key,
    account_id int,
    transaction_date datetime,
    amount currency,
    transaction_type text(10)
);

create table accounts (
    account_id autoincrement primary key,
    account_name text(100),
    balance currency
);

--- relationships will be setup in access using the database tools
--- issues running multiple queries at once, had to do each individually
--- Added Roles table to separate powers
--- Added sales_order_id to financial_transactions to trace each sales order to its corresponding transaction