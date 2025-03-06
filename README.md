# Super_Store_SQL_DB

# Superstore Sales Data Analysis
This repository contains the analysis of the **Superstore Sales Dataset** as part of an assignment. The goal was to create a MySQL database, perform data cleaning, conduct exploratory data analysis (EDA), and segment customers using RFM analysis.

**Dataset**
The dataset used in this project is **Superstore Sales Data**, which contains information about orders, customers, products, sales, profits, and other related details. The dataset was provided in an Excel file and converted to a CSV file for easier processing.

## **Steps Followed**
1. **Database Creation**:
   - Created a MySQL database named `superstore`.
   - Created a table `Sales` with appropriate columns to match the dataset.

2. **Data Import**:
   - Used the `LOAD DATA INFILE` statement to bulk insert the CSV data into the `Sales` table.
   - Verified the data insertion by running sample queries.

3. **Data Cleaning**:
   - Checked for missing values, duplicates, and inconsistencies.
   - Updated the table schema where necessary (e.g., changing data types).
   - Ensured proper formatting for dates, numeric values, and text fields.

4. **Exploratory Data Analysis (EDA)**:
   - Analyzed total sales, profits, and quantities by region, category, and customer.
   - Identified top-performing products and customers.
   - Visualized trends and patterns in the data.

5. **RFM Segmentation**:
   - Segmented customers based on Recency, Frequency, and Monetary (RFM) metrics.
   - Categorized customers into groups like "Loyal Customers," "At Risk Customers," etc.

6. **Documentation**:
   - Documented the entire process, including SQL queries and findings, in this repository.

---

## **Findings**
### Key Insights from EDA:
- **Total Sales**: The highest sales were recorded in the **West** region.
- **Top Category**: **Technology** products generated the highest revenue.
- **Top Customer**: Customer **Sean Miller** had the highest total profit.

### RFM Segmentation Results:
- **Loyal Customers**: 15% of customers fell into this category.
- **At Risk Customers**: 20% of customers were identified as at risk of churn.
- **Lost Customers**: 10% of customers had not made a purchase in a long time.

---
