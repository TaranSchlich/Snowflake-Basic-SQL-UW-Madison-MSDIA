/* Creating a departments table. Including columns for department id as an integer and department name as an integer and primary key */
CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID INT PRIMARY KEY NOT NULL,
    DEPARTMENT_NAME VARCHAR(255)
);

/* Inserting two departments into table. 'Marketing' with department id =1 and 'Finance' with department id = 2 */
INSERT INTO DEPARTMENTS
VALUES(1, 'Marketing'), (2, 'Finance');

/* Updating the name of the marketing department in the table */
UPDATE DEPARTMENTS
SET DEPARTMENT_NAME = 'Marketing & Communications'
WHERE DEPARTMENT_ID = 1;

/* Query the entire departments table */
SELECT *
FROM DEPARTMENTS;

