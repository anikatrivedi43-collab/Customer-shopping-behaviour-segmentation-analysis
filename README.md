# Customer-shopping-behaviour-segmentation-analysis
SQL project analyzing customer shopping behavior, revenue trends, and customer segmentation using manually created data.

# Customer Shopping Behavior & Segmentation Analysis (SQL)

## Project Overview
This project focuses on analyzing customer shopping behavior using SQL.
The goal is to understand customer spending patterns, identify high-value
customers, and extract meaningful business insights from transaction data.

## Tools Used
- MySQL Workbench

## Database Structure
The project uses two tables:

### 1. customers
Stores customer demographic information.
- customer_id
- gender
- age
- city

### 2. orders
Stores order and transaction details.
- order_id
- customer_id
- order_date
- amount

A one-to-many relationship exists between customers and orders.

## Data Source
The data used in this project is manually created and inserted to simulate
real-world customer transactions for SQL practice and analysis.

## Business Questions Addressed
- How many unique customers does the business have?
- What is the total revenue generated?
- Who are the top 5 highest-spending customers?
- What is the average spending per customer?
- Which customers are repeat buyers?
- Which cities generate the highest revenue?
- How are customers distributed across age groups?
- What are the monthly sales trends?
- Which customers spend more than a defined threshold?
- What is the highest single order value?
- How many orders are placed per city?
- What is the average order value?
- Which customers spend more than the overall average?
- Which month records the highest sales?
- How many customers belong to each gender?
- How can customers be segmented into high, medium, and low spenders?

## Key Insights
- A small group of customers contributes significantly to total revenue.
- Customers aged 26–35 show higher spending behavior.
- Metro cities generate more revenue compared to other locations.
- Repeat customers tend to have higher average spending.
- Sales vary across months, indicating possible seasonal trends.

## Conclusion
This project demonstrates the use of SQL for real-world business analysis.
It highlights the ability to transform raw data into meaningful insights
that can support data-driven decision-making.

---
