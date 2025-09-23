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
