# Bank Loan Analysis

**Introduction:**

This Bank Loan Report, derived from an extensive SQL-based exploratory data analysis (EDA) and data visualization project using Power BI, offers a comprehensive overview of the bank's loan portfolio. Through complex queries and data manipulations, the report provides detailed insights into application volumes, funding activities, and repayment performance. It highlights the overall health of the bank’s lending operations and reveals critical patterns and trends across various dimensions, offering an in-depth examination of the portfolio.

**Skills Demonstrated:**

SQL, specifically SQL Management Studio, serves as the relational database tool for tasks including data cleansing, manipulation, and analysis. 
Power BI is utilized for data visualization.

**Overview:**

The report begins with a summary of key metrics, showcasing the total number of loan applications, the total funded amount, and the total amount received from loan repayments. It also tracks the average interest rate and the average debt-to-income (DTI) ratio, offering a snapshot of the bank’s financial metrics.

**Problem Statement:**

1.	What is the monthly count of loan applications? 
2.	What is the primary purpose for which loans are collected?
3.	Does homeownership influence the loan approval process for applicants?
4.	What is the level of employment stability among borrowers?
5.	What proportion of loans are categorized as good versus bad?

**Exploratory Data Analysis**

**What is the monthly count of loan applications?**

![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/373fa5fd-b98d-4d17-8c6b-7cf1a3cbc46b)

 
The data shows an increase in the number of loan applications, funded amounts, and received amounts towards the end of the year. This could indicate seasonal trends or growing demand over the months.

**What is the primary purpose for which loans are collected?**

 ![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/462b1fcc-2302-4a60-b404-fb8ca744c6a7)


One of the main purposes of borrowers collecting the loan is because of debt consolidations. According to research Debt consolidation refers to taking out a new loan or credit card to pay off other existing loans or credit cards. By combining multiple debts into a single, larger loan, you may also be able to obtain more favourable payoff terms, such as a lower interest rate, lower monthly payments, or both.

**Does homeownership influence the loan approval process for applicants?**

 ![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/4647a6de-15a4-46b6-b8be-a070a613dd3f)


Based on our analysis, we’ve observed that applicants with mortgages tend to secure larger loan amounts compared to those who rent, despite there being a higher number of rental applications. This trend could be attributed to several factors, including the likelihood of homeowners having lower default rates on loans and the availability of collateral, such as the property itself, which provides added security for lenders.


**What is the level of employment stability among borrowers?**

 ![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/f8b531fb-97de-451a-b9c8-1cda7e07cb3d)


Based on our analysis, we’ve found that the highest number of loan applicants typically have over 10 years of work experience. Furthermore, a significant proportion of these applicants are approved for loans. This observation can be attributed to the fact that stable employment, particularly with over a decade of experience, is often associated with a lower risk of default. Lenders frequently consider stable employment as a key factor when evaluating a borrower’s capacity to repay loans.


**What proportion of loans are categorized as good versus bad?**

![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/e0453a50-a343-4ac2-b5e4-f4b762a2234b)

 
Based on our analysis, we define good loans as those that are either fully paid or currently being paid off. Our findings indicate that approximately 86% of the loans fall into this category. Conversely, bad loans are characterized as charge-offs, where the lender or creditor has deemed the account as a loss and closed it to future charges. According to our analysis, charge-offs account for approximately 14% of the total loans. This suggests that the majority of our borrowers are effectively managing their debts and making payments on time.

**Power BI Visualization**

**Overview:**

This visualization provides a comprehensive analysis of the bank's loan portfolio, showcasing various key metrics and insights through interactive charts and graphs.

 ![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/8314576e-3a7c-43ad-bbf9-cb349680623e)


The report begins with a summary of key metrics, showcasing the total number of loan applications, the total funded amount, and the total amount received from loan repayments. It also tracks the average interest rate and the average debt-to-income (DTI) ratio, offering a snapshot of the bank’s financial metrics. Each metric is accompanied by month-to-date (MTD) and month-over-month (MoM) changes, giving a clear view of recent performance trends. The left sidebar includes navigation options (Summary, Overview, Details) and filters for measure, purpose, state, and grade, enabling users to customize the view according to specific criteria and focus areas. This interactive capability enhances the utility of the report for various analytical needs

Loan Quality Breakdown:

Loans are categorized into good and bad loans based on their performance. Good loans represent the majority of the applications, indicating strong creditworthiness among borrowers. These loans have a high issuance rate, reflecting the bank's confidence in the applicants. In contrast, bad loans, although fewer in number, highlight the areas of risk within the portfolio and require careful management to mitigate potential losses.

Loan Status:

The loans are further classified by their status:
•	Charged Off: Loans that have been deemed uncollectible and written off as losses. These loans indicate the portion of the portfolio where recovery efforts have failed.
•	Current: Loans that are being repaid as scheduled, indicating a healthy, performing segment of the portfolio. This category reflects the ongoing, positive cash flow from these loans.
•	Fully Paid: Loans that have been completely repaid by the borrowers, showcasing successful loan completions and effective lending practices.



 ![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/960eeb9b-0ea6-453e-a463-82d7e5ea3015)


Detailed Insights:

The detailed section of the report breaks down the loan data by various dimensions:

•	Purpose of the Loan: This categorization shows the different reasons for which loans were taken, such as for cars, home improvements, or other purposes. It helps in understanding the demand trends and areas where the bank’s loan products are most utilized.

•	Home Ownership Status: Loans are also segmented by the borrower’s home ownership status (e.g., mortgage, rent, own). This provides insights into the risk profiles and repayment capabilities of different borrower groups.

•	Geographic Distribution: The report includes a geographic breakdown, showing the distribution of loans across various states. This helps in identifying regional lending patterns and potential areas for expansion or risk management.

•	Employment Duration: Loans are analysed based on the borrower’s employment duration, providing a correlation between job stability and loan performance.

•	Trends Over Time: Charts showing the total amount received by month illustrate the repayment trends and seasonal variations in loan performance.

•	State-wise Distribution: Maps highlight the geographic spread of the loan portfolio, indicating regions with high or low loan activity.

•	Term and Home Ownership Breakdown: Pie charts provide a quick view of loan distribution by repayment term and home ownership status, respectively.


 ![image](https://github.com/Bafnakb/Bank-Loan-Analysis/assets/106813409/8b4910c5-2308-4c75-b52f-11ee46b25ab9)


A detailed table lists individual loan records with columns for loan ID, purpose, home ownership status, grade and sub-grade, issue date, total funded amount, interest rate, instalment sum, and total amount received. This table allows for in-depth analysis of specific loans and their attributes, supporting a granular examination of the loan portfolio's composition and performance.

**Conclusion:**

This Bank Loan Report offers a detailed and comprehensive analysis of the bank’s loan portfolio. By examining various aspects such as loan quality, status, purpose, and borrower characteristics, the report provides valuable insights for managing and optimizing the bank’s lending operations. The visual summaries and detailed breakdowns make it easier to identify trends, assess risks, and make informed decisions.





