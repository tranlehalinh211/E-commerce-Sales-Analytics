# E-commerce Sales & Customer Analytics

## Project Overview

This project analyzes simulated e-commerce transaction data to understand sales performance, customer behavior, product performance, and profitability.

The project uses SQL, Excel, and Power BI to transform raw transaction data into business insights and interactive dashboards.

## Business Context

This project simulates an e-commerce company selling products across multiple categories in Vietnam.

The company wants to understand:
- Overall sales performance
- Monthly sales trends
- Product performance
- Customer revenue contribution
- Category performance
- Average order value
- Profitability

## Analysis Period

January 2025 – December 2025

## Market

Vietnam

## Currency

Vietnamese Dong (VND)
## Business Questions

This project aims to answer the following business questions:

1. What is the total revenue?
2. What are the monthly sales trends?
3. What are the top-performing products?
4. Which products generate the most revenue?
5. Which customers generate the most revenue?
6. Which categories perform best?
7. What is the average order value?
8. What is the total profit?
## Dataset

The dataset contains simulated e-commerce transaction data for 2025.

It includes four main tables:

- **Customers** — Customer information
- **Products** — Product information, selling price, and cost
- **Orders** — Order information, dates, payment methods, and order status
- **Order_Details** — Products, quantities, and prices included in each order

### Dataset Size

- 10 customers
- 10 products
- 15 orders
- 30 order detail records

Cancelled orders are retained in the dataset but excluded from revenue and profit analysis.
## Tools & Technologies

- **MySQL** — Database management and SQL analysis
- **MySQL Workbench** — SQL development and database management
- **Microsoft Excel** — Data preparation, pivot tables, and dashboard
- **Power BI** — Interactive data visualization and dashboard
- **GitHub** — Project documentation and version control
## SQL Analysis

SQL was used to analyze sales performance, product performance, customer revenue, category performance, average order value, and profitability.

The analysis includes:

- Total Revenue
- Monthly Sales Trends
- Top Products by Units Sold
- Top Products by Revenue
- Top Customers by Revenue
- Revenue by Category
- Average Order Value
- Total Profit

All revenue and profit calculations exclude cancelled orders.
## Excel Dashboard

Excel was used for data preparation, pivot table analysis, KPI calculation, and dashboard creation.

The Excel dashboard presents:

- Total Revenue
- Total Profit
- Average Order Value
- Top Product
- Monthly Sales Trend
- Top Products by Units Sold
- Revenue by Category
- Revenue by Product
## Power BI Dashboard

Power BI was used to create an interactive dashboard for visualizing sales performance and business metrics.

The dashboard includes:

- Total Revenue
- Total Profit
- Average Order Value
- Top Product
- Monthly Sales Trend
- Top Products by Units Sold
- Revenue by Category
- Revenue by Product

The dashboard helps provide a clear overview of sales performance and product contribution.
## Key Insights

Based on the analysis:

- Total revenue was **59,750,000 VND**.
- Total profit was **17,500,000 VND**.
- The average order value was approximately **4,596,154 VND**.
- **Wireless Mouse** was the top product by units sold.
- **Laptop Basic** generated the highest product revenue.
- **Electronics** was the highest-revenue category.
- Customer **Nguyen An** generated the highest revenue among customers.
## Business Recommendations

Based on the analysis, the following actions could help improve business performance:

- Focus on high-revenue products such as Laptop Basic.
- Maintain sufficient inventory for high-volume products such as Wireless Mouse.
- Continue developing the Electronics category due to its strong revenue contribution.
- Identify opportunities to increase customer repeat purchases.
- Monitor cancelled orders to reduce potential revenue loss.
- Use sales and profit trends to support future product and inventory decisions.
## Project Structure


E-commerce-Sales-Analytics
│
├── 01_Data
│   ├── customers.xlsx
│   ├── products.xlsx
│   ├── orders.xlsx
│   └── order_details.xlsx
│
├── 02_SQL
│   └── sales_analysis.sql
│
├── 03_Excel
│   └── Ecommerce_Sales_Analysis.xlsx
│
├── 04_PowerBI
│   └── Ecommerce_Sales_Dashboard.pbix
│
├── 05_Documentation
│   ├── Data_Dictionary.xlsx
│   ├── Business_Questions.xlsx
│   └── Project_Notes.docx
│
├── 06_Screenshots
│   ├── Excel_Dashboard.png
│   └── PowerBI_Dashboard.png
│
└── README.md
