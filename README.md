# 🛒E-commerce Sales Analysis

## 👋Introduction
In this projcet I am diving into interesting e-commerce dataset. I found it greate for learning and enterteining, becouse there are few dataset that have real life data from e-commerce store. The dataset is 500k rows long and has columns that provide key informations about transactions that have been made between 01/12/2010 and 09/12/2011. The store is UK-based and mainly sells unique all-occasion gifts. For searching, exploring and performing basic transformations, I used SQL (PostgresSQL). Visualization, dashboard been created in PowerBI.

## 📝Plan

### 1. Prepare Environment
  I've started with preparing github and local environment. For this purpose I had to run prepare postgres database and connect necessery programs so I can share my data between them.

### 2. EDA
  I belive that you can't move any further without getting known with data. For this I started with excel where I explored data visualy. Then I moved to Visual Studio, where I used SQL to dive deeper into data. For more detailed infomrations go to **sql->EDA.sql** 

### 3. Transformations
  After getting familiar with dataset I've made some transformations that helped me In furhter analysis.  
  * Created new columns month, day.
  * Created IsReturn column that highlighted transactions that possibly could be returns.
  * Filled missing values in description column

### 4. Analysis in SQL
  This was probably the most important part of this project. Here I was looking for tips that would help me later on drawing key conclusions. Most important and complex queriesgot saved as views for easier use and saving time. Some of the answered questions:  
  - What is total income?
  - What is the average order value?
  - What are the most often ordered/returned products?
  - Which clients brought the most profit?
  - How profit has changed over different time ranges (week, month etc.).

### 5. Data Visualization in PowerBI
  In this section I visualized and underlined key informations that I have found earlier. Dashboard was created in simple, elegant dark vibes with interactive options.Here is the final result of my dashboard
![image](https://github.com/user-attachments/assets/6f2d7d58-a3da-4397-a8bf-680e03e92bc9)


### 6. Conclusions
  Last but not least, I went through all my notes, dashboard, queries and other things to find most important informations and double check my work ;)

## 💡Conclusions
Throughout the entire sales period included in the data we can observe some patterns. First of all there were 3 time ranges that in which sales went up:
* Winter time just like at the very beggining of sales we could observe that sales are the highest around winter (christmas and new year) time.
* Sales did increase in easter time
* Also we could notice higher sales in summer.

The biggest jump in sales occured since septemper up to the end of the year.  
Total revenue (excluding returns) was around **11 milions**.  
Worth taking a looking into are returns. Number of returns was around 11000.  
What is worth mentioning is the fact that the closer the country is the more income it generates.


