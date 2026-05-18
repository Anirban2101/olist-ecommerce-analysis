# 🛒 Olist E-Commerce Performance AnalysisBusiness Problem
Olist, Brazil's largest e-commerce marketplace, connects thousands of sellers to millions of customers across 27 states. This project analyzes 100,000+ real orders to answer critical business questions: Where is revenue coming from? Are deliveries happening on time? What drives customer satisfaction? How are customers paying?

Dataset:-
Source: Olist Public Dataset (Kaggle)
Size: 99,441 orders | 8 relational tables | 2016–2018
Tables: Orders, Customers, Products, Sellers, Payments, Reviews, Order Items, Category Translation

Tools Used:- 
MySQLData (for storage and business query analysis), Python (like Pandas, SQLAlchemy - for Data loading and preprocessing), PowerBI (for Interactive dashboard and visualization) 

Key Business Insights:-
💰 R$13.59M total revenue generated across 99,441 orders
🏆 Watches & Gifts is the top revenue-generating category
📍 São Paulo drives 42% of all orders — highest logistics priority
⭐ 57.78% of customers gave 5-star reviews — strong satisfaction base
🚨 7,000+ orders delivered late — SP and RJ need urgent logistics improvement
💳 73.92% of payments via credit card — payment infrastructure must be bulletproof
📦 Zero repeat customers detected — customer retention is Olist's biggest growth opportunity

Dashboard Preview
Sales Overview
<img width="981" height="564" alt="Page 1" src="https://github.com/user-attachments/assets/21b6a1ef-555e-4056-ac1c-63d13fe93307" />

Customer & Delivery
<img width="986" height="560" alt="Page 2" src="https://github.com/user-attachments/assets/ac9384a1-6f36-4d42-9a0c-e2cd9fa11206" />

Payment Analysis
<img width="974" height="561" alt="Page 3" src="https://github.com/user-attachments/assets/646af3cf-21a3-42c6-b8ef-c14bffeeb722" />


SQL Analysis:- 
Seven business queries written covering revenue analysis, delivery performance, customer geography, seller performance, and review scoring. See olist_queries.sql for full code.

End-to-end data analysis of Olist Brazilian e-commerce platform using SQL, Python, and Power BI
