# GB882 — Assignment 2: SQL Basics (Snowflake / TPCH)
**By: Taran Schlichtmann**

**Date: 10/14/2025**

## Business Context
Execute SQL queries in Snowflake against **TPCH_SF1** and **HUMAN_RESOURCES** databases to answer business questions on orders, parts, suppliers, and account balances. Create and modify tables, insert records, and export query results to Excel with separate tabs for documentation.

---

## Repository Structure
```
.
├── sql/
│   └── Assignment 2 - SQL Basics.sql
├── outputs/
│   └── GB882_Assignment 2_SQL Basics_Schlichtmann_T.xlsx
└── README.md
```

---

## How to Reproduce
1. Create a Snowflake worksheet and select the `CLASSWORK` warehouse and `TPCH_SF1` database.
2. Run queries from `sql/Assignment 2 - SQL Basics.sql`.
3. Export results to Excel, one sheet per query, as shown in `outputs/GB882_Assignment 2_SQL Basics_Schlichtmann_T.xlsx`.

---

## Queries Summary
```sql
/* Query 1: List all fields and records in the nation table */
SELECT * FROM NATION;

/* Query 2: Orders with total > $500,000 */
SELECT O_ORDERKEY, O_CUSTKEY, O_TOTALPRICE FROM ORDERS WHERE O_TOTALPRICE > 500000;

/* Query 3: Parts with size > 45 and type = 'LARGE BRUSHED BRASS' */
SELECT * FROM PART WHERE P_SIZE > 45 AND P_TYPE = 'LARGE BRUSHED BRASS';

/* Query 4: Count suppliers */
SELECT COUNT(*) FROM SUPPLIER;

/* Query 5: Average order total */
SELECT AVG(O_TOTALPRICE) FROM ORDERS;

/* Query 6: Avg account balance by market segment */
SELECT C_MKTSEGMENT, AVG(C_ACCTBAL) FROM CUSTOMER GROUP BY C_MKTSEGMENT;

/* Query 7: Segments with avg account balance > 4500 */
SELECT C_MKTSEGMENT, AVG(C_ACCTBAL) FROM CUSTOMER GROUP BY C_MKTSEGMENT HAVING AVG(C_ACCTBAL) > 4500;

/* Query 8: Max retail price for parts by manufacturer */
SELECT P_MFGR, MAX(P_RETAILPRICE) FROM PART GROUP BY P_MFGR;

/* Query 9-12: Create, insert, update, and select from departments table */
CREATE TABLE departments (department_id INT PRIMARY KEY NOT NULL, department_name VARCHAR(255));
INSERT INTO departments VALUES (1, 'Marketing'), (2, 'Finance');
UPDATE departments SET department_name = 'Marketing & Communications' WHERE department_id = 1;
SELECT * FROM departments;
```

---

## Key Results
- Nation key 7 corresponds to **GERMANY**.
- Orders > $500,000: **16 orders**.
- First part container for P_PARTKEY 120541: **WRAP CAN**.
- Total suppliers: **10,000**.
- Avg order revenue: **151,219.54**.
- Avg account balance for Machinery: **4,488.93**.
- Segments with avg balance > 4,500: **2 segments**.
- Max retail price for Manufacturer #3: **2,097.99**.
- Departments table updated successfully with Marketing & Communications and Finance.

---

## 📄 License
MIT — Educational use only.
