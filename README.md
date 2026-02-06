# SQL - Sales Analytics


## Overview
Analysis of customer behaviour, retension and live time value for an ecommerce company to improve customer retension and maximize  Revenue. 



## Business Questions
1️⃣ Customer Segmentation: Who are our most valuable customers? 

2️⃣ Cohort-Analysis: How do different customer groups generate long-term revenue? 

3️⃣ Retention Analysis: Which customers haven’t purchased recently?
## Analysis Approach

### 1. Customer Segmentation Analysis
- Categorized customers based on Total live time value LTV
- Assigned customers to High, Mid and Low_value segments
- Calculated key metrics : Total Revenue

🖥️ Query: [1_customer_segmentation.sql](/1_customer_segmentation.sql)

**📈 Visualization:**

![Custome_segmenta](/images/customer%20segments%20LTV.png)

📊 **Key Findings:**
- High-value segment (25% of customers) drives 66% of revenue ( 135.4M)
- 12,372customers(25− 135.4M /  206.4M)totalrevenue=66− 10,946 is the average LTV for the high-value customer - Mid-value segment (50% of customers) generates 32% of revenue ($66.6M)
     - 24,743 customers (50% of 49,487 total customers)
     - 66.6M/ 206.4M total revenue = 32%
     - $2,700 is the average LTV for the mid-value customer
- Low-value segment (25% of customers) accounts for 2% of revenue ($4.3M)
     - 12,372 customers (25% of 49,487 total customers)
     - 4.3M/ 206.4M total revenue = 2%
     - $350 is the average LTV for the low-value customer

💡 **Business Insights**
- High-Value (66% revenue):
    - Offer premium membership program to 12,372 VIP customers
    - Provide early access to new products and dedicated support
    - Focus on retention as losing one customer impacts revenue significantly
- Mid-Value (32% revenue):
    - Create upgrade paths for 24,743 customers through personalized promotions
    - Target with "next best product" recommendations based on high-value patterns
    - Potential $66.6M → $135.4M revenue opportunity if upgraded to high-value
- Low-Value (2% revenue):
    - Design re-engagement campaigns for 12,372 customers to increase purchase frequency
    - Test price-sensitive promotions to encourage more frequent purchases
    - Focus on converting $4.3M segment to mid-value through targeted offers



2. **Cohort_Analysis :** How do different customer groups generate Revenue?
### 2. Cohort Analysis
- Track Revenue and Customer Count per cohorts
- Cohorts were Grouped per year of first purchase
- Analyzed Customer retension at Cohort level

🖥️ Query: [2_cohort_analysis](/2_cohort_Analysis.sql)

**📈 Visualization:**

![2_cohort_Analysis](/images/2_cohort_Analysis.png)

📊 **Key Findings:**
- Revenue per customer is shows an alarming decreasing Trend over Time
 - 2022-2024 cohorts are consistently performing worse than earlier cohorts
 - NOTE : Although net Revenue is increasing,this is likely due to large customer base, which is not reflective of customer value

💡 **Business Insights**
- Value Extracted from customer is decreasing over time and needs forther investigations
- In 2023 we saw a drop in the number of customers acquired, which is concerning
- With both lowering LTV and decreasing customer acquisition , the company is facing a potential Revenue Decline


3. Customer Retention

## Analysis Approach

### 3. Retension Analysis
- Identified Customers at the Risk of Churning
- Analysed last purchase patterns
- Calculated customer specific-metrics

🖥️ Query: [1_Retension_Analysis.sql](/3_retension_analysis.sql)

**📈 Visualization:**

![3_customer_churn_cohort_year](/images/Retension%20Analysis.png)

📊 **Key Findings:**
- Older Cohorts (2015-2023) Have High Churn (85-88%)
     - Long-term retention remains weak, with most cohorts stabilizing below 15% active.
     - Reactivation efforts for high-value churned users may be more effective than broad retention strategies.
- Retention Drops Consistently After 2-3 Years
     - Active rates stabilize between 8-10% for older cohorts, reinforcing the need for stronger early engagement.
     - Without intervention, newer cohorts are likely to follow a similar churn pattern

💡 **Business Insights**
- Strengthen Early engagements strategies to target the first 1-2 years with onboarding incentives,loyalty rewards,and personalised offersto improve long term Retension.
- Re-engage high value churned customers by focussing ontargeted win back campaigns rather than broad retention efforts, as reactivating valuable users may yield higher ROI.
- Predict and preempt churn risk and use customer specific warning indicators to proactively intervene with at risk users before they lapse.

{Repeat for each analysis approach}

## Strategic Recommendations

1. **Customer value optimization** (Customer Segmentation)
   - Launch VIP program for 12372 high value customers (66 % Revenue)
   - Create personalised upgrade path for mid-value segment ($66.6M -$153M) opportunity
   - Design price sensitive promotions for low value segments to increase purchase frequemcy

2. **Cohort Performance Strategy**(Customer Revenue by cohort)
   - Target (2022-2024) cohorts  with personalised re-engagements orders
   - Implement Loyalty/subscriptions programs so stabilize Revenue Fluctuations
   - Apply succesful stragegies from  high spending (2016-2018) cohorts to newer customers

3. **Retension and Churn Prevention** (Customer Retention)
   - Strengthen 1-2 year with onboarding initiatives and loyalty Rewards
   - Focus on Targeted win-back campaigns for high value churned customers
   - Implement proactive intervention system for at risk customersbefore they lapse

## Technical Details
- **Database:** PostgreSQL
- **Analysis Tools:** PostgreSQL
- **Visualization:** ChatGPT
