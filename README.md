# 🛒 E-commerce Sales Analysis
## 👋 Introduction
In this project, I explore an **e-commerce dataset** containing real-life transactional data, making it both an excellent learning opportunity and an engaging analysis. The dataset consists of 500,000 rows with key details about transactions made between **December 1, 2010, and December 9, 2011**. Dataset: https://www.kaggle.com/datasets/carrie1/ecommerce-data

The online store is UK-based, primarily selling unique all-occasion gifts. For data exploration, transformations, and analysis, I used **SQL** (PostgreSQL), while **Power BI** was utilized for visualization and dashboard creation.

## 📝 Project Plan
### 1. Environment Setup
I began by setting up a **PostgreSQL** database and configuring my local environment. This involved connecting essential tools to enable seamless data sharing between different platforms.

### 2. Exploratory Data Analysis (EDA)
Understanding the dataset is crucial before performing any transformations or analysis. I initially explored the data in **Excel** for a visual overview and then conducted an in-depth analysis using **SQL in Visual Studio**.  
👉 More details: sql/EDA.sql

### 3. Data Transformations
To prepare the dataset for analysis, I applied several transformations:  
✅ Created **month** and **day** columns for time-based analysis  
✅ Added an **IsReturn** column to identify potential product returns  
✅ Filled missing values in the **Description** column  

### 4. SQL-Based Data Analysis
This step involved writing complex **SQL queries** to extract meaningful insights. Key queries were saved as **views** to enhance efficiency and reusability.
Some key questions explored:

📊 What is the total income?  
💰 What is the average order value?  
📦 Which products are most frequently ordered and returned?  
🏆 Which customers generated the highest revenue?  
📅 How did revenue change across different time periods (weekly, monthly, etc.)?  

### 5. Data Visualization in Power BI
Using Power BI, I designed an interactive dashboard to visualize key findings. The dashboard was styled with a modern, dark theme for a **professional** and **elegant look**.  
👉 Final Dashboard:  

![image](https://github.com/user-attachments/assets/6f2d7d58-a3da-4397-a8bf-680e03e92bc9)  

### 6. Final Review & Insights
After completing the dashboard, I re-examined all queries, notes, and insights to ensure accuracy and extract key business takeaways.

## 💡 Key Conclusions
1️⃣ Sales Trends:

* Sales peaked during winter, especially around Christmas and New Year.
* A smaller spike occurred during Easter.
* Summer also saw an increase, but not as high as winter.
* The most significant sales growth happened from September to December.
  
2️⃣ Revenue & Returns:  
* The total revenue (excluding returns) was approximately **£11 million**.  
* Around **11,000 transactions** were identified as potential **returns**, indicating a notable refund rate.
  
3️⃣ Geographical Impact:  
* Closer countries (to the UK) contributed significantly more to total sales.
  
This project provided valuable insights into customer behavior and sales trends, demonstrating the power of **SQL** and **Power BI** in e-commerce analytics.
