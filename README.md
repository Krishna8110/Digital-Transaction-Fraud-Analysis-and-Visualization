# Digital-Transaction-Fraud-Analysis-and-Visualization

## Project Overview
This project presents an end-to-end analysis of digital transaction data with a strong focus on fraud detection, transaction performance, and customer behavior analysis. The project combines SQL, Python, and Power BI to transform raw transactional data into meaningful business insights.

The objective is to simulate a real-world financial analytics scenario where transaction data is analyzed to monitor fraud, measure success rates, understand customer spending behavior, and visualize key performance indicators for stakeholders.

---

## Business Problem Statement
Digital payment platforms handle millions of transactions daily and are highly vulnerable to fraud. Identifying fraudulent behavior while maintaining a high transaction success rate is critical for financial institutions.

This project aims to:
- Analyze transaction success and failure trends
- Measure fraud rates across payment methods
- Understand customer spending behavior
- Provide decision-ready dashboards for business users

---

## Datasets Used
The analysis is based on the following datasets:

- users.csv  
  Contains user-level information including user identifiers and customer segments.

- transactions.csv  
  Includes transaction details such as transaction amount, date, payment method, transaction status, and revenue.

- fraud_flags.csv  
  Contains fraud indicators used to identify suspicious or fraudulent transactions.

---

## Tools and Technologies
- SQL for structured data querying and validation
- Python (Pandas, NumPy, Matplotlib) for data cleaning and exploratory analysis
- Power BI for interactive dashboards and business visualization
- Jupyter Notebook for Python-based analysis
- GitHub for version control and project documentation

---

## Project Structure

---

## Step-by-Step Implementation

### Step 1: Data Loading and Understanding
The datasets were loaded and reviewed to understand:
- Transaction flow
- User segmentation
- Fraud labeling
- Payment method distribution

Initial data quality checks were performed to ensure consistency across datasets.

---

### Step 2: SQL Analysis
SQL was used to perform structured analysis and validation:
- Joining user, transaction, and fraud datasets
- Aggregating transaction counts and revenue
- Calculating fraud rates
- Analyzing transaction success vs failure
- Preparing analytical views for further analysis

SQL helped ensure data integrity before advanced analysis.

---

### Step 3: Python Data Cleaning and Analysis
Python was used for deeper exploratory data analysis:
- Handling missing values
- Removing inconsistencies
- Generating summary statistics
- Analyzing monthly transaction trends
- Studying fraud distribution across payment methods
- Comparing spending behavior across customer segments

Python enabled flexible and detailed analytical exploration.

---

### Step 4: Fraud Analysis
Fraud indicators were merged with transaction data to:
- Calculate overall fraud rate
- Identify high-risk payment methods
- Compare fraud occurrence across transaction statuses
- Support data-driven fraud monitoring strategies

---

### Step 5: Power BI Dashboard Design
An interactive Power BI dashboard was created to present insights clearly to business stakeholders.

#### Key Metrics (KPIs)
- Total Transactions: 50,000  
- Success Rate: 86.87%  
- Fraud Rate: 5.45%  
- Total Revenue: 73.10 Million  

These KPIs provide a quick snapshot of platform performance.

---

## Dashboard Visual Analysis

### Fraud Rate by Payment Method
This bar chart compares fraud rates across payment methods such as Credit Card, Debit Card, Net Banking, UPI, and Wallets.

Insight:
- Fraud rates are relatively consistent across major payment methods
- Card-based payments show slightly higher fraud exposure
- Helps prioritize fraud prevention efforts

---

### Average Spend by Customer Segment
This visual analyzes average transaction value across:
- Business customers
- Retail customers
- Premium customers

Insight:
- Business and Premium segments show higher average spending
- Useful for targeted risk monitoring and marketing strategies

---

### Transaction Status Distribution
A donut chart represents:
- Successful transactions
- Failed transactions
- Pending transactions

Insight:
- Majority of transactions are successful
- Failed transactions form a smaller but critical portion impacting user experience

---

### Transactions Over Time
A monthly line chart displays transaction volume trends.

Insight:
- Stable transaction volume in the first half of the year
- Significant drop observed in later months
- Indicates possible seasonal impact, policy changes, or fraud control measures

---

## Key Insights Summary
- High overall transaction success rate indicates platform reliability
- Fraud rate remains manageable but requires continuous monitoring
- Certain payment methods require stronger fraud controls
- Customer segments show distinct spending patterns
- Transaction trends highlight periods requiring further investigation

---

## Business Impact
This analysis supports:
- Fraud risk assessment
- Payment method optimization
- Customer behavior understanding
- Executive-level decision making
- Performance monitoring using dashboards

---

## Future Enhancements
- Machine learning models for fraud prediction
- Real-time transaction monitoring
- Anomaly detection using time-series models
- Advanced customer risk scoring
- Integration with live transaction data

---

## Conclusion
This project demonstrates strong data analytics capabilities using SQL, Python, and Power BI. It reflects real-world financial analytics use cases and highlights the ability to convert raw data into meaningful business insights through structured analysis and visualization.

