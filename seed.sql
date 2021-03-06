INSERT INTO department (department) VALUES ("Sales");
INSERT INTO department (department) VALUES ("Engineering");
INSERT INTO department (department) VALUES ("Finance");
INSERT INTO department (department) VALUES ("Legal");
INSERT INTO role (title, salary, department_id) VALUES ("Sales Manager", 60000, 4); 
INSERT INTO role (title, salary, department_id) VALUES ("Engineering Manager", 50000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Finance Manager", 30000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Legal Manager", 40000, 1);

INSERT INTO employee (first_name, last_name, role_id) VALUES ("Michael", "Rosa", 4);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Zac", "Jayes", 3);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Sara", "Wilson", 2);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Jenry", "Valdes", 1);

-- SELECT * FROM employee_table;

--Shows all employees
SELECT employee.id, employee.first_name, employee.last_name, role.title, department.department, role.salary 
FROM employee 
INNER JOIN role
ON employee.role_id = role.id INNER JOIN department ON role.department_id = department.id;

--Shows all employees by department
SELECT employee.id, employee.first_name, employee.last_name, role.title, department.department FROM employee INNER JOIN role ON employee.role_id = role.id INNER JOIN department ON role.department_id = department.id WHERE department.department = ?;

--Shows all employees by role
SELECT employee.id, employee.first_name, employee.last_name, role.title, department.department FROM employee INNER JOIN role ON employee.role_id = role.id INNER JOIN department ON role.department_id = department.id WHERE role.title = ?;

--Adds a new department
INSERT INTO department (department) VALUES (?);

--Adds a new role
INSERT INTO role(title, salary, department_id) VALUES ?;

--Adds a new employee
INSERT INTO employee (first_name, last_name, role_id) VALUES ?;

--Updates employee's role 
UPDATE employee SET role_id = ? WHERE id = ?;