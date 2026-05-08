-- ============================
-- BANK BRANCH MANAGEMENT SYSTEM
-- ============================

CREATE DATABASE bank_branch_system;
USE bank_branch_system;

-- ----------------------------
-- BRANCHES TABLE
-- ----------------------------
CREATE TABLE branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- ----------------------------
-- CUSTOMERS TABLE
-- ----------------------------
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- ----------------------------
-- ACCOUNTS TABLE
-- ----------------------------
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    balance DECIMAL(12,2) DEFAULT 0.00,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ----------------------------
-- TRANSACTIONS TABLE
-- ----------------------------
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(12,2),
    type ENUM('deposit','withdrawal'),
    transaction_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- ============================
-- SAMPLE DATA (IMPORTANT FOR DEMO)
-- ============================

INSERT INTO branches (branch_name, location)
VALUES 
('Kampala Main', 'Kampala'),
('Entebbe Branch', 'Entebbe');

INSERT INTO customers (name, branch_id)
VALUES 
('John Doe', 1),
('Sarah Namusoke', 2),
('Michael Ouma', 1);

INSERT INTO accounts (customer_id, balance)
VALUES 
(1, 1000.00),
(2, 500.00),
(3, 2000.00);

INSERT INTO transactions (account_id, amount, type)
VALUES 
(1, 300.00, 'deposit'),
(2, 100.00, 'withdrawal'),
(3, 700.00, 'deposit');

-- ============================
-- TEST QUERY (JOIN REPORT)
-- ============================

SELECT 
    c.name AS customer,
    b.branch_name,
    a.account_id,
    a.balance,
    t.amount,
    t.type,
    t.transaction_time
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN branches b ON c.branch_id = b.branch_id;
