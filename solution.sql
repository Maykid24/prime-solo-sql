SELECT * FROM syntax_practice;

-- Q1
SELECT * FROM syntax_practice WHERE city='chicago';

--Q2
SELECT * FROM syntax_practice WHERE username LIKE '%a%';

--Q3 The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.

UPDATE syntax_practice set account_balance='10' WHERE account_balance='0';

--Q4 Select all users that have attempted 9 or more transactions.

SELECT * FROM syntax_practice WHERE transactions_attempted>=9;

--Q5 Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT

SELECT username, account_balance FROM syntax_practice ORDER BY account_balance DESC LIMIT 3;

--Q6 Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.

SELECT username, account_balance FROM syntax_practice ORDER BY account_balance ASC LIMIT 3;

--Q7 Get all users with account balances that are more than $100.

SELECT * FROM syntax_practice WHERE account_balance >= 100;

--Q8 Add a new record.

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('patrick', 'stillwater', 0, 0, 0, 9);

--Q9 The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

DELETE from syntax_practice WHERE city='miami' OR city='phoenix' AND transactions_completed < 5;
