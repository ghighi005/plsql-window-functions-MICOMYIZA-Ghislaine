
-- Ranking members by total books borrowed
SELECT 
    m.member_id,
    m.first_name || ' ' || m.last_name AS member_name,
    COUNT(t.transaction_id) AS total_borrowed,
    ROW_NUMBER() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS row_num,
    RANK() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS rank_num,
    DENSE_RANK() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS dense_rank_num,
    PERCENT_RANK() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS percent_rank_num
FROM Members m
LEFT JOIN Transactions t ON m.member_id = t.member_id
GROUP BY m.member_id, m.first_name, m.last_name;

-- Running totals of transactions per member over time
SELECT 
    t.member_id,
    m.first_name || ' ' || m.last_name AS member_name,
    t.borrow_date,
    COUNT(*) OVER (PARTITION BY t.member_id ORDER BY t.borrow_date 
                   ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total_books,
    AVG(COUNT(*)) OVER (PARTITION BY t.member_id) AS avg_books_borrowed
FROM Transactions t
JOIN Members m ON t.member_id = m.member_id
GROUP BY t.member_id, m.first_name, m.last_name, t.borrow_date
ORDER BY t.member_id, t.borrow_date;

-- Borrowing trends: Compare current borrow date to previous
SELECT 
    t.member_id,
    m.first_name || ' ' || m.last_name AS member_name,
    t.borrow_date,
    LAG(t.borrow_date) OVER (PARTITION BY t.member_id ORDER BY t.borrow_date) AS prev_borrow,
    LEAD(t.borrow_date) OVER (PARTITION BY t.member_id ORDER BY t.borrow_date) AS next_borrow,
    EXTRACT(DAY FROM (t.borrow_date - 
        LAG(t.borrow_date) OVER (PARTITION BY t.member_id ORDER BY t.borrow_date))) AS days_since_last
FROM Transactions t
JOIN Members m ON t.member_id = m.member_id
ORDER BY t.member_id, t.borrow_date;

-- Customer segmentation into quartiles
SELECT 
    m.member_id,
    m.first_name || ' ' || m.last_name AS member_name,
    COUNT(t.transaction_id) AS total_borrowed,
    NTILE(4) OVER (ORDER BY COUNT(t.transaction_id) DESC) AS quartile,
    CUME_DIST() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS cumulative_distribution
FROM Members m
LEFT JOIN Transactions t ON m.member_id = t.member_id
GROUP BY m.member_id, m.first_name, m.last_name
ORDER BY total_borrowed DESC;
