# plsql-window-functions-MICOMYIZA-Ghislaine
## Step 1: Problem Definition
>Business concept:
I will be targeting Kigali Public Library making them a database to monitor the in and out of books.

>Data Challenge:
The library currently struggles to monitor which books are borrowed most frequently, how long they stay checked out, and which users contribute most to circulation. Without structured tracking, it is difficult to identify borrowing patterns, popular categories, or potential issues with overdue books.

>Expected Outcome:
By analyzing circulation transactions with PL/SQL window functions, the library will:

.Identify the top borrowed books and categories per quarter.

.Track borrowing frequency trends over time (running totals, moving averages).

.Measure growth or decline in borrowings month-to-month.

.Segment library members into groups (e.g., heavy users vs casual readers).

.Provide actionable insights to improve book purchasing, stock management, and member engagement.

## Step 2: Success Criteria

1.Top 5 most borrowed books per quarter → RANK()
Identify which titles are most popular in each quarter.

2.Running monthly borrow totals → SUM() OVER()
Track how many books are borrowed each month on a cumulative basis.

3.Month-over-month borrowing growth → LAG() / LEAD()
Compare borrowing activity between months to see increases or drops.

4.Member quartiles based on borrowing frequency → NTILE(4)
Segment members into four groups (heavy borrowers, medium, light, inactive).

5.3month moving average of book borrowings → AVG() OVER()
Smooth out short term fluctuations and highlight long term borrowing trends.


## Step 6: Result Analysis

1. Descriptive Analysis – What happened?

Borrowing Patterns: The quarterly ranking revealed that “Things Fall Apart” and “Harry Potter and the Sorcerer’s Stone” were among the most borrowed books. This highlights consistent demand for both classic literature and children’s fiction.

Trends: The running totals show borrowing activity gradually increasing across 2023, with spikes during academic months (March–April and September).

Growth/Decline: Month over month growth analysis indicates that borrowing dipped slightly in mid year but picked up again toward the start of the school term in September.

Member Behavior: Quartile segmentation revealed a small group of heavy users (Quartile 1) who borrowed multiple times, while most members fell into Quartile 3 and 4, indicating light or inactive borrowing patterns.

Stability: The 3 month moving average smoothed out fluctuations and confirmed a steady upward borrowing trend across the year.

2. Diagnostic Analysis – Why did it happen?

Popular Books/Categories: Fiction and children’s literature tend to dominate because they appeal to both leisure readers and students, while categories like Science and Technology had fewer transactions likely due to being specialized or used for reference rather than borrowing.

Seasonality: Borrowing spikes align with school terms and examination seasons, when students and teachers actively seek reading materials. The mid year dip (June–July) corresponds with holidays, when library visits are less frequent.

User Segmentation: A few highly engaged members drive most of the circulation. This imbalance suggests that casual or first time members either face access challenges, lack awareness of available titles, or simply use the library less regularly.

Overdue/Unreturned Books: Members with unreturned books contribute to gaps in circulation flow e.g., when Grace and Jean borrowed but did not return within the period, this restricted availability for others.

3. Prescriptive Analysis – What next?

Acquisition Strategy: Invest more in expanding Fiction and Children’s categories, while also promoting underutilized categories (Science and Technology) through themed events or study programs.

Engagement Programs: Encourage light and inactive members to borrow more by introducing loyalty rewards (e.g., borrow 5 books, get extended borrowing days free) or personalized reading recommendations.

Overdue Management: Implement automated reminders via SMS/email to reduce late returns and improve book circulation efficiency.

Data-Driven Planning: Use moving averages and growth rates to forecast demand, ensuring enough copies of high demand books are stocked before academic terms begin.

Strategic Segmentation: Develop differentiated engagement:

Quartile 1 (Heavy users): Offer early access to new arrivals.

Quartile 2 (Medium users): Promote trending books to increase engagement.

Quartile 3 & 4 (Light/Inactive): Provide orientation sessions or “Reading Challenges” to motivate participation.

## Step 7: References

Oracle. (2023). Oracle Database SQL Language Reference. Retrieved from https://docs.oracle.com/en/database/

PostgreSQL Global Development Group. (2023). PostgreSQL 15 Documentation – Window Functions. Retrieved from https://www.postgresql.org/docs/current/functions-window.html

Microsoft. (2023). SQL Server: Ranking Functions. Retrieved from https://learn.microsoft.com/en-us/sql/t-sql/functions/ranking-functions-transact-sql

Gupta, A., & Mumick, I. (1995). Maintenance of Materialized Views: Problems, Techniques, and Applications. IEEE Data Engineering Bulletin.

Ramakrishnan, R., & Gehrke, J. (2003). Database Management Systems (3rd ed.). McGraw-Hill.

Redgate. (2023). SQL Window Functions for Data Analysis. Retrieved from https://www.red-gate.com/simple-talk/

Mode Analytics. (2022). Introduction to SQL Window Functions. Retrieved from https://mode.com/sql-tutorial/sql-window-functions/

Khan Academy. (2022). SQL: Window Functions. Retrieved from https://www.khanacademy.org/computing/computer-programming/sql

McKinsey & Company. (2021). Data-Driven Decision Making in Public Institutions. Retrieved from https://www.mckinsey.com/

Statista. (2023). Global Book Market and Reading Trends. Retrieved from https://www.statista.com/

## Integrity Statement

I hereby declare that the work presented in this report is my own and has been prepared in accordance with academic integrity standards. Any external sources of information, data, or code have been properly acknowledged and referenced. This project was completed without unauthorized assistance, plagiarism, or academic misconduct.

I affirm that the analysis, results, and recommendations are based on my understanding and interpretation of the subject matter, supported by credible references.
