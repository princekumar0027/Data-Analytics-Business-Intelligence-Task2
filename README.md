# 📊 Data Analytics & Business Intelligence — Task 2
### Superstore Sales, Profitability & Discount Analysis

`SQL: MySQL (Joins & Aggregation)` &nbsp;•&nbsp; `Excel: Pivot Analysis` &nbsp;•&nbsp; `Power BI: Interactive Dashboard`

This repository contains an end-to-end analysis of the Superstore dataset — covering relational data modeling, SQL joins, profitability and discount-impact analysis, an interactive Power BI dashboard, and a written business performance report.

---

## 🏢 Internship Details

| | |
|---|---|
| **Company** | Maincrafts Technology ([www.maincrafts.com](https://www.maincrafts.com)) |
| **Program** | Data Analytics & Business Intelligence Internship |
| **Task** | Task 2 — Relational Data Modeling, SQL Joins, Profitability & Discount Analysis |
| **Intern** | Prince Kumar — MBA (Business Analytics), Delhi School of Management, DTU |
| **Contact (Company)** | hr@maincrafts.com |

This task was completed as part of the Data Analytics & Business Intelligence internship at **Maincrafts Technology**, building on Task 1 by introducing relational data modeling (Orders, Customers, Products), SQL joins, and profit/discount analysis.

---

## 📁 Repository Structure

| File | Description |
|---|---|
| `Superstore_Cleaned_Excel_With_Pivot_Analysis.xlsx` | Cleaned, relational dataset (Order, Customer, Product tables) with pivot-table analysis — Sales by Region, Profit by Category, Segment, Top 5 Customers |
| `SQL_Queries_Task2.sql` | MySQL script — schema creation for Orders/Customers/Products, joins, sales-by-region, profit-margin-by-category, monthly trend, and top-customer queries |
| `Superstore_Power_BI_Dashboard.pbix` | Interactive Power BI dashboard with KPI cards (Sales, Profit, Orders), Region/Category/Segment/Year filters, and trend visuals |
| `Business_Performance_Report_Task2.pdf` | Final business performance report with data-backed findings and recommendations |

---

## 🎯 Objective

Build on Task 1's foundation by:
- Designing a normalized, relational data model (Orders / Customers / Products)
- Writing SQL join queries to reconstruct a unified sales view
- Analyzing profitability by category and the impact of discounting on margin
- Visualizing performance in an interactive Power BI dashboard
- Delivering a data-backed business performance report with recommendations

---

## 🛠️ Tools Used

- **MySQL** — relational schema design, joins, aggregation queries
- **Microsoft Excel** — pivot-table analysis across Region, Category, Segment, Customers
- **Power BI** — interactive dashboard with KPIs, trend charts, and filters

---

## 📈 Key Metrics

| Metric | Value |
|---|---|
| Total Sales | **$2,297,200.86** |
| Total Profit | **$286,397.02** |
| Overall Profit Margin | 12.47% |
| Distinct Orders | 5,009 |
| Order Line Items | 9,994 |
| Units Sold | 37,873 |
| Analysis Period | 2014 – 2017 |

---

## 🔍 Key Insights

- **Discounting is the #1 driver of profit erosion.** Every order discounted at 30% or higher operated at a *loss* — margin falls from +29.5% (no discount) to as low as **-180%** at 80% discount. Discounts ≥30% destroyed **$135,376** in profit on just $362,770 of sales.
- **Category profitability:** Technology (17.4% margin) and Office Supplies (17.0%) are the profit engines; Furniture sells almost as much as Technology but returns only **2.5% margin** — a clear red flag tied to discounting.
- **Region:** West ($725K, 31.6%) and East ($679K, 29.5%) lead sales; South trails at 17.1%.
- **Segment:** Consumer drives 50.6% of sales, ahead of Corporate (30.7%) and Home Office (18.7%).
- **Growth:** Sales grew at a 14.8% CAGR (2014→2017); profit grew even faster at 23.5% CAGR.
- **Seasonality:** November is consistently the strongest month; February is consistently the weakest.

Full breakdown, tables, and management recommendations are in [`Business_Performance_Report_Task2.pdf`](./Business_Performance_Report_Task2.pdf).

---

## 🗄️ How to Reproduce

1. Open `Superstore_Cleaned_Excel_With_Pivot_Analysis.xlsx` to review the Order/Customer/Product tables and pivot analysis.
2. Run `SQL_Queries_Task2.sql` in MySQL to recreate the schema, joins, and aggregation queries.
3. Open `Superstore_Power_BI_Dashboard.pbix` in Power BI Desktop to explore the interactive dashboard.
4. Refer to `Business_Performance_Report_Task2.pdf` for the written summary and recommendations.

---

## ⚠️ Data Quality Note

The `Customer_Table` does not map `Customer_ID` uniquely to a single `Region` — 766 of 793 customer IDs appear against more than one region/segment combination. A direct SQL join of `Orders` to `Customers` therefore fans out and inflates row counts, which would distort region- or segment-level **profit** figures if computed via that join. Region and Segment figures in this analysis are reported as **sales only** (reconciled against the Power BI dashboard), while Category, Discount, and Year-wise profit are computed directly from the `Orders` table, where no join is required. This is flagged as a modeling improvement for future iterations — Region is better treated as an order-level attribute than a customer-level one.

---

## 👤 Author

**Prince Kumar**
MBA (Business Analytics), Delhi School of Management, DTU
Data Analytics & BI Intern, Maincrafts Technology

---

## 🙏 Acknowledgment

Thanks to **Maincrafts Technology** for the opportunity and structured task guidelines that shaped this project.
