
# 📊 Telecom Customer Churn: End-to-End Business Analytics Project

Cracking the code behind customer loyalty. An end-to-end Telecom Churn analysis project using SQL to uncover hidden patterns and Power BI to build interactive, business-ready dashboards. Driven by data, solved with a human perspective.

<!-- PROJECT BANNER -->
<p align="center">
<img src="Telecom_customer_churn_Banner.png.png" alt="Telecom Churn Project Banner" width="100%">
</p>

<p align="center">
    <a href="https://www.linkedin.com/in/nitu-kumari-data" target="_blank">
        <img src="https://img.shields.io/badge/LinkedIn-Connect%20With%20Me-blue?style=for-the-badge&logo=linkedin" alt="LinkedIn">
    </a>
</p>

---

## 🌟 The Business Problem: Beyond the Statistics

In the telecom sector, a customer isn't just a row in a SQL database; they represent a relationship, a story, and a vital source of recurring revenue. When a customer leaves ("churns"), it’s not just a drop in numerical metrics—it’s a direct financial leak and a sign of underlying friction in user experience.

**The Core Challenge:** The company noticed an increasing trend of subscribers walking away but lacked clarity on **WHY** this was happening. Was it a pricing issue? Poor service? Or operational roadblocks? 

**My Mission:** As a Data Analyst, my goal was to look past the surface level, dissect the raw transactional data, find the exact friction points causing this customer drop, and convert those cold insights into an actionable strategy to save revenue.

---

<!-- DASHBOARD IMAGE PLACEHOLDER -->
## 🖥️ Executive Interactive Dashboard
*Below is the complete dynamic dashboard built in Power BI to monitor and analyze churn drivers at a glance:*

<p align="center">
 <img src="Aapki_Dashboard_File_Ka_Poora_Naam.png.png" alt="Power BI Customer Churn Dashboard Overview" width="100%">
</p>

---

## 🗄️ Backend Deep-Dive: Data Cleaning & Exploratory Data Analysis (EDA) using SQL

Before creating beautiful charts, a great analyst ensures the foundations are unbreakable. I used **MySQL** to load, clean, and run comprehensive Exploratory Data Analysis on **7,043 customer records**.

### 🛠️ Data Cleaning Steps Performed in SQL:
*   **Handling Nulls & Missing Values:** Discovered hidden blank spaces in the `TotalCharges` column. Instead of blindly deleting records, I investigated and safely aligned them into appropriate decimal types.
*   **Duplicate Auditing:** Verified data integrity by ensuring `customerID` functioned as a strict unique Primary Key with zero duplicate anomalies.
*   **Data Type Standardizations:** Converted mixed textual categorical fields into structured formats so columns like `MonthlyCharges` and `TotalCharges` could be mathematically aggregated.

### 🔍 Advanced EDA Operations (SQL Queries):
*   **Aggregate Groupings:** Ran multiple `GROUP BY` and `COUNT` functions to segment the churned base across demographics (`gender`, `SeniorCitizen`), account types, and service sign-ups.
*   **Conditional Grouping (CASE Statements):** Since the database contained exact tenure months, I engineered logic to bucket customers into logical lifecycle phases (e.g., `0-1 Year`, `1-2 Years`, `2-4 Years`, `Over 4 Years`) to observe loyalty trends over time.

---

## 📊 Frontend Transformation: Power BI & Power Query Architecture

Once the data was structured via SQL, I pulled it into **Power BI** to execute the final analytics workflow:

1.  **Power Query Pipeline:** Re-verified that the `TotalCharges` column was perfectly treated as a active Decimal Number. Built out a robust **Conditional Column** for `Tenure_Group` to feed clean data into the visual layer.
2.  **DAX Calculations:** Rather than relying on simple row counts, I engineered explicit DAX measures (like `Total_Churn`) utilizing `CALCULATE` and dynamic filtering to isolate and track exactly who left and why.
3.  **UI/UX Design Strategy:** Formatted KPI cards to deliver immediate top-line clarity, configured interactive **Slicers (Contract Filters)**, and leveraged **Matrix Visuals** to cross-examine complex intersecting categories.

---

## 🔍 Key Insights & Actionable Business Solutions

Through this end-to-end analytical journey, I unearned **three heavy churn drivers** and formulated concrete business recommendations for the management team:

### 🚨 1. The Tech Support & Fiber Optic Crisis
*   **The Problem:** High-speed Fiber Optic internet had the highest volume of subscribers, but a massive **1,101 customers churned** simply because they had **No Tech Support** attached to their plans. Customers were loving the speed but leaving out of frustration when encountering unassisted tech issues.
*   **The Business Solution:** Management should automatically bundle 3-6 months of complimentary Tech Support with every new Fiber Optic installation, transforming a high-risk tier into a high-loyalty tier.

### 💳 2. Electronic Check Friction
*   **The Problem:** Customers paying via **Electronic Check** represented the absolute largest share of churn (**45.29%**). This highlights clear transaction friction, manual payment exhaustion, or failed recurring billings.
*   **The Business Solution:** Introduce a small monthly incentive (e.g., a \$2 discount) for users who transition to automated digital payments like **Auto-Pay** or **Credit Cards**, cutting transactional drop-offs significantly.

### 📜 3. The First-Year Short-Term Trap
*   **The Problem:** Over **1,000+ subscribers** left within their first **0-12 months**. Furthermore, **Month-to-month contracts** carried the maximum churn risk, whereas 2-year contract signees showed elite retention.
*   **The Business Solution:** Create a high-value milestone reward program at the 6th and 11th months for short-term contract holders, or offer a discounted migration path to lock them into stable 1-year commitments.

---

## 📂 Repository Blueprint
*   `Telecom-Customer-Churn-Dashboard.pbix` — The master interactive Power BI workbook.
*   `churn_analysis_queries.sql` — Optimized MySQL script containing data prep and EDA architecture.
*   `Telco-Customer-Churn.csv` — The foundational dataset containing multi-feature customer logs.
*   `Telecom_customer_churn_Banner.png` — Visual presentation asset designed for this interface.

---

## 🤝 Let's Connect and Build Together!
I thrive at the intersection of complex coding and real-world business strategy. If you are looking for a dedicated Data Analyst who can translate messy backend rows into powerful executive-ready insights, let's talk!

*   **LinkedIn Profile:** [Nitu Kumari - Connect on LinkedIn](https://www.linkedin.com/in/nitu-kumari-data)
*   **Project Portfolio:** Check out my other repositories for more deep-dives!
