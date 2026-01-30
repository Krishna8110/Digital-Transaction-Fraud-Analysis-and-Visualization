CREATE TABLE users (
    user_id VARCHAR(10) PRIMARY KEY,
    age INT,
    gender VARCHAR(1),
    city VARCHAR(50),
    state VARCHAR(10),
    signup_date DATE,
    kyc_status VARCHAR(20),
    customer_segment VARCHAR(20)
);

--

CREATE TABLE transactions (
    transaction_id VARCHAR(15) PRIMARY KEY,
    user_id VARCHAR(10),
    transaction_datetime TIMESTAMP,
    amount NUMERIC(12,2),
    currency VARCHAR(5),
    payment_method VARCHAR(20),
    transaction_status VARCHAR(20),
    merchant_id VARCHAR(10),
    merchant_category VARCHAR(30),
    device_type VARCHAR(20),
    app_version VARCHAR(10),
    bank_name VARCHAR(20),
    city VARCHAR(50),
    state VARCHAR(10),
    is_international INT,
    failure_reason VARCHAR(50)
);


--

CREATE TABLE fraud_flags (
    transaction_id VARCHAR(15),
    is_fraud INT,
    fraud_reason VARCHAR(100),
    fraud_risk_score NUMERIC(3,2)
);

--

SELECT COUNT(*) FROM users;

--
SELECT COUNT(*) FROM transactions;

--

SELECT COUNT(*) FROM fraud_flags;

--Total transactions & success rate

SELECT
    COUNT(*) AS total_transactions,
    COUNT(*) FILTER (WHERE transaction_status = 'Success') AS successful_transactions,
    ROUND(
        COUNT(*) FILTER (WHERE transaction_status = 'Success') * 100.0 / COUNT(*), 2
    ) AS success_rate_percent
FROM transactions;

--Payment method wise failure rate

SELECT
    payment_method,
    COUNT(*) FILTER (WHERE transaction_status = 'Failed') AS failed_txns,
    COUNT(*) AS total_txns,
    ROUND(
        COUNT(*) FILTER (WHERE transaction_status = 'Failed') * 100.0 / COUNT(*), 2
    ) AS failure_rate_percent
FROM transactions
GROUP BY payment_method
ORDER BY failure_rate_percent DESC;

--Top 10 highest spending customers

SELECT
    user_id,
    SUM(amount) AS total_spent
FROM transactions
WHERE transaction_status = 'Success'
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;

--Fraud rate by payment method

SELECT
    t.payment_method,
    COUNT(*) AS total_txns,
    SUM(f.is_fraud) AS fraud_txns,
    ROUND(SUM(f.is_fraud) * 100.0 / COUNT(*), 2) AS fraud_rate_percent
FROM transactions t
JOIN fraud_flags f
ON t.transaction_id = f.transaction_id
GROUP BY t.payment_method
ORDER BY fraud_rate_percent DESC;

--Fraud by customer segment

SELECT
    u.customer_segment,
    COUNT(*) AS total_txns,
    SUM(f.is_fraud) AS fraud_txns
FROM users u
JOIN transactions t ON u.user_id = t.user_id
JOIN fraud_flags f ON t.transaction_id = f.transaction_id
GROUP BY u.customer_segment;

--Rank transactions per user by amount

SELECT
    user_id,
    transaction_id,
    amount,
    RANK() OVER (PARTITION BY user_id ORDER BY amount DESC) AS txn_rank
FROM transactions;











