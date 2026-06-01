# Introduction
I am Odusanya Oluwatobi, a Pharmacy graduate with a strong interest in data analysis. This project demonstrates my ability to analyze complex sales data using SQL and generate actionable recommendations to improve revenue, customer engagement, and operational efficiency.

# Kultra Mega Stores SQL Case Study

SQL-based analysis of inventory, customer, and shipping data for Kultra Mega Stores (2009–2012) to uncover insights on sales, profitability, and delivery efficiency.

## Kultra Mega Stores SQL Case Study | DSA Capstone Project

This project is part of the Data Analysis Capstone from the **DSA Program**, involving the use of SQL to analyze historical order and shipping data from **Kultra Mega Stores (KMS)**. The objective is to uncover patterns in sales performance, customer value, shipping efficiency, and regional trends to support business decisions for one of KMS's division.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Comapany Background](#company-background)
3. [Dataset and Tools](#dataset-and-tools)
4. [Key Insights and Analysis](#key-insights-and-analysis)
5. [Visual Evidence](#visual-evidence)
6. [Limitations and Recommendations](#limitations-and-recommendations)

--- 

## Project Overview

This project analyzes a retail dataset (2009-2012) to extract actionable insights on sales performance, customer value, and shipping efficiency using SQL.

---

## Company Background

Kultra Mega Stores is a fictional retail company used for this DSA capstone case study. 
The dataset (2009–2012) uses dataset-defined region names (e.g., Atlantic, Quebec, Prairie, Ontario, Yukon).
All geographic names are representative and do not correspond to real branch locations.

---

## Dataset and Tools

**Dataset**
- **Source**: Excel file provided via DSA Capstone Project Files
- **Time Frame**: 2009–2012  
- **Data Categories**: Orders, Products, Customers, Shipping Details  

**Tools Used**
- **SQL Server** [Download Here](https://learn.microsoft.com/en-us/ssms/install/install)
  – For data querying and insight extraction
    
- **Microsoft Excel** [Download Here](https://microsoft.com)
  – For preliminary data inspection, exports and visualization.
    
- **GitHub** [Download Here](https://github.com)
  – For documentation and portfolio hosting

---

## key Insights and Analysis
---
### Q1. Which product category had the highest sales?

**SQL File:** [View SQL Script](sql/01_sales_by_category.sql)

**Insight:** The Technology category emerged as the top-performing product category, generating total sales of $5,984,248.50 and serving as a major driver of overall revenue.

---
### Q2. What are the Top 3 and Bottom 3 regions by sales?

**SQL File:** [View SQL Script](sql/02_region_rankings.sql)

**Insight:** Sales performance varied significantly across regions, with West ($3,597,549.41), Ontario ($3,063,212.60), and Prairie ($2,837,304.60) emerging as the top-performing regions. Conversely, Nunavut ($116,376.47), Northwest Territories ($800,847.35), and Yukon ($975,867.39) recorded the lowest sales, indicating potential areas for growth and market expansion.

---

### Q3. What were the total sales of appliances in Ontario?

**SQL File:**[View SQL Script](sql/03_appliances_ontario.sql)

**Insight:** Appliance sales in Ontario totaled $202,346.84, highlighting the region’s contribution to overall revenue within this product category.

---

### Q4. How can revenue from the bottom 10 customers be improved?

**SQL File:** [View SQL Script](sql/04_bottom10_customers.sql) 

**Insight:** Our analysis of the bottom 10 customers, including individuals like Eric Murdock and Nicole Fjeld, shows that these accounts are not only low-revenue but often unprofitable. This is largely due to the high shipping costs of small, low-value orders (e.g., paper, pens, and rubber bands), which frequently exceed the profit from the sale.

1. **Implement a Minimum Order Value (MOV)**: Shipping costs for small orders reduce or eliminate profit, so requiring a minimum spend (e.g., $150) to qualify for free shipping encourages customers to consolidate orders. Fewer shipments mean lower shipping costs and healthier profit margins per transaction.

2. **Drive Category Migration (Upselling)**: Many of these customers primarily purchase from low-value categories like Consumables. Targeted marketing can introduce higher-value categories such as Technology or Office Furniture, shifting purchases from small items to higher-value products. This increases the customer’s contribution to revenue and helps move them from “convenience shoppers” to strategic buyers.

3. **Review Tiered Discounting**: Some low-revenue customers may currently receive the same discounts as high-volume, high-value clients. Restructuring loyalty programs so deeper discounts are available only after customers reach a specified annual spending threshold protects margins on smaller accounts while continuing to reward loyal, high-value customers.

---

### Q5. Which shipping method incurred the highest cost?

**SQL File:** [View SQL Script](sql/05_shipping_cost_analysis.sql)

**Insight:** Delivery Truck was the most expensive shipping method, accounting for a total cost of $51,971.94, indicating it may be a key driver of overall logistics expenses.

---

### Q6. Who are the most valuable customers and what do they buy?

**SQL File:** [View SQL Script](sql/06_most_valuable_customers.sql)

**Insight:** The most valuable customers like Emily Phan are high-frequency, high-spending buyers who contribute significantly to overall revenue. Analysis shows that these customers predominantly purchase from the Technology and Office Supplies categories, highlighting these product lines as major drivers of profitability and customer retention.

---

### Q7. Which small business customer had the highest sales?

**SQL File:** [View SQL Script](sql/07_top_small_business.sql)

**Insight:** Among small business customers, Dennis Kane generated the highest sales, contributing a total of $75,967.59, making him a key revenue contributor within that segment.

---

### Q8. Which corporate customer placed the most orders?

**SQL File:** [View SQL Script](sql/08_top_corporate_orders.sql)

**Insight:** Roy Skaria stands out as the most loyal corporate customer, having placed a total of 773 orders, indicating a high level of engagement and repeat business.

---

### Q9. Which consumer customer was the most profitable?

**SQL File:** [View SQL Script](sql/09_most_profitable_consumer.sql)

**Insight:** Emily Phan was the most profitable customer, contributing a total profit of $37,005.04, making her the highest-value customer in the dataset.

---

### Q10. Which customers returned items?

**SQL File:** [View SQL Script](sql/10_returns_analysis.sql)

**Insight:** Out of 573 total customer returns, the Corporate segment accounted for the highest share (215), while the Consumer segment had the lowest (98). Returns from the Home Office and Small Business segments stood at 139 and 121 respectively, indicating that returns were more concentrated among business-oriented customers.

---

### Q11. Was shipping cost aligned with order priority?

**SQL File:** [View SQL Script](sql/11_shipping_priority_analysis.sql)

**Insight:** There is a clear mismatch in shipping priorities: low-priority orders are often sent by Express Air, while high-priority orders are frequently delivered by truck. This suggests that our logistics decisions are not fully aligned with customer needs and may not be optimized for shipping costs.

---

### Visual Evidence

Dashboard 1 
<img width="3296" height="1981" alt="dashboard_01" src="https://github.com/user-attachments/assets/f37fc0d1-f23e-4202-880e-999af8793de8" />


Dashboard 2 <img width="3812" height="2637" alt="dashboard_02" src="https://github.com/user-attachments/assets/ab3cb132-8c9a-427b-a981-5ea103a070d0" />

---
## Limitations and Recommendations
### Limitations
- A key limitation of this analysis is data inconsistency in the order records, where two customers (Julia Barnett and Julia West) were assigned the same order ID (23488) despite having different purchase details and shipping dates. This made it difficult to accurately track returned items, as it was unclear whether one or both customers associated with the duplicated order ID made a return. As a result, the total number of returned items differed slightly from the original dataset.
- The dataset spans only from 2009 to 2012, which limits the analysis to historical trends and may not fully reflect current sales, customer behavior, or shipping patterns. Decisions based solely on this data may not be representative of current market conditions.
- The data did not include customer satisfaction ratings or reviews, which could have enriched customer segmentation and value analysis.
- The shipping method efficiency was analyzed based on order priority and cost, but without actual delivery time or customer satisfaction data.

### Recommendations
- Align shipping methods with order priority to reduce costs and improve customer satisfaction. For example, use faster methods only for high-priority orders and standard delivery for lower-priority orders.
- Focus marketing and retention efforts on the most profitable and loyal customers, like Emily Phan and Roy Skaria, through personalized offers or loyalty programs.
- Invest more resources in top-performing regions like West, Ontario, and Prairie, while exploring strategies to grow sales in lower-performing regions like Nunavut, Northwest Territories, and Yukon.
- Investigate products with high return rates, especially across specific customer segments, and implement measures such as better product descriptions, packaging, or quality checks to reduce returns.
- Given that Technology drives the highest sales, prioritize inventory management, marketing, and promotions in this category to maximize revenue, while also monitoring emerging categories for growth potential.
- Re-engage low-spending customers through personalized offers, bundling, and feedback collection.
- Ensure unique order IDs for each transaction and clean customer records to prevent discrepancies, which will improve the accuracy of future analyses.
- Investigate negative profit customers, to address possible returns, excessive discounts, or data errors.
