--Tables for join ---

CREATE TABLE customer (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    cust_id INT,
    product VARCHAR(50)
);

--Insert queries --
-- Customers
INSERT INTO customer (cust_id, cust_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana');

-- Orders
INSERT INTO orders (order_id, cust_id, product) VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 5, 'Monitor'); -- Order for non-existent customer


--Inner join --
SELECT c.cust_name, o.product
FROM customer c
INNER JOIN orders o ON c.cust_id = o.cust_id;

--left join--

SELECT c.cust_name, o.product
FROM customer c
LEFT JOIN orders o ON c.cust_id = o.cust_id;

--Right Join --
SELECT c.cust_name, o.product
FROM customer c
RIGHT JOIN orders o ON c.cust_id = o.cust_id;


--Full Join --
SELECT c.cust_name, o.product
FROM customer c
FULL OUTER JOIN orders o ON c.cust_id = o.cust_id;

--Cross or cartesian join --

SELECT c.cust_name, o.product
FROM customer c
CROSS JOIN orders o;




------------------------------------
--Tables for self join example 
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    manager_id INT
);


INSERT INTO employee (emp_id, emp_name, dept_id, manager_id) VALUES
(1, 'Alice', 10, NULL),   -- Alice is a manager (no manager_id)
(2, 'Bob', 10, 1),        -- Bob reports to Alice
(3, 'Charlie', 20, NULL), -- Charlie is a manager
(4, 'Diana', 20, 3),      -- Diana reports to Charlie
(5, 'Ethan', 10, 1),      -- Ethan also reports to Alice
(6, 'Frank', 30, NULL);   -- Frank is a manager



--------------
--self join employee and manager 
SELECT e.emp_name AS Employee, m.emp_name AS Manager
FROM employee e
JOIN employee m ON e.manager_id = m.emp_id;



--Employees in same department 
SELECT e1.emp_name AS Employee1, e2.emp_name AS Employee2, e1.dept_id
FROM employee e1
JOIN employee e2 ON e1.dept_id = e2.dept_id
WHERE e1.emp_id < e2.emp_id;







