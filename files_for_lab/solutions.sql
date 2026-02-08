USE bank;

/*QUERY 1*/
SELECT DISTINCT client_id, district_id
FROM bank.client
ORDER BY district_id
LIMIT 5;


/*QUERY 2*/
SELECT DISTINCT client_id, district_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;


/*QUERY 3*/
SELECT DISTINCT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;


/*QUERY 4*/
SELECT DISTINCT status
FROM bank.loan
ORDER BY status ASC;


/*QUERY 5*/
SELECT DISTINCT loan_id, payments
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;


/*QUERY 6*/
SELECT DISTINCT account_id, amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;


/*QUERY 7*/
SELECT DISTINCT account_id, amount, duration
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;


/*QUERY 8*/
SELECT DISTINCT k_symbol
FROM bank.order
ORDER BY k_symbol ASC;


/*QUERY 9*/
SELECT DISTINCT order_id, account_id
FROM bank.order
WHERE account_id = 34;


/*QUERY 10*/
SELECT DISTINCT account_id
FROM bank.order
WHERE order_id > 29539 AND order_id < 29561;


/*QUERY 11*/
SELECT DISTINCT account_to, amount
FROM bank.order
WHERE account_to = 30067122;


/*QUERY 12*/
SELECT DISTINCT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;


/*QUERY 13*/
SELECT district_id, COUNT(*) AS 'total clients'
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;


/*QUERY 14*/
SELECT type, COUNT(*) AS 'total cards'
FROM bank.card
GROUP BY type;

/*QUERY 15*/
SELECT account_id, amount
FROM bank.loan
ORDER BY amount DESC
LIMIT 10;


/*QUERY 16*/
SELECT date, COUNT(*) AS loans_issued
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;


/*QUERY 17*/
SELECT loan_id, date, duration
FROM bank.loan
WHERE date > 971199 AND date < 980000
ORDER BY date ASC;

/*QUERY 18*/
SELECT account_id, Type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, Type
