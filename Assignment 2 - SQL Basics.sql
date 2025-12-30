/* Listing all fields and records from the nation table */
SELECT *
FROM NATION;

/* Listing all the orders that total more than $500,000. Only including order key, customer key and order total */
SELECT O_ORDERKEY, O_CUSTKEY, O_TOTALPRICE
FROM ORDERS
WHERE O_TOTALPRICE > 500000;

/* Identifying parts that have a size larger than 45 and a product type  of "LARGE BRUSHED BRASS" */
SELECT *
FROM PART
WHERE P_SIZE > 45 
AND P_TYPE = 'LARGE BRUSHED BRASS';

/* Counting the number of suppliers from suppliers table */
SELECT COUNT(*)
FROM SUPPLIER;

/* Average of order totals in orders table */
SELECT AVG(O_TOTALPRICE)
FROM ORDERS;

/* Calculating the average customer account balance by market segment */
SELECT C_MKTSEGMENT, AVG(C_ACCTBAL)
FROM CUSTOMER
GROUP BY C_MKTSEGMENT;

/* Adjusting previous query to only include market segments with an average account balance greater than 4500 */
SELECT C_MKTSEGMENT, AVG(C_ACCTBAL)
FROM CUSTOMER
GROUP BY C_MKTSEGMENT
HAVING AVG(C_ACCTBAL) > 4500;

/* Identifying the maximum retail price for parts by manufacturer with results only containing manufacturer and retail price */
SELECT P_MFGR, MAX(P_RETAILPRICE)
FROM PART
GROUP BY P_MFGR;
