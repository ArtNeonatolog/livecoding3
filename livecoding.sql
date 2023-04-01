\\Есть таблица employee с колонками name, department, salary.
Вывести максимальную и среднюю зарплату (salary) по каждому отделу, имеющему больше одного сотрудника.\\

CREATE TABLE employee2(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
department VARCHAR(50) NOT NULL,
salary INT NULL);

INSERT INTO employee2(
name, department, salary)
VALUES('Artem', 'IT', 80000), ('Denis', 'IT', 85000), ('Anna', 'administration', 50000),
('Olga', 'administration', 55000), ('Ivan', 'finance', 90000), ('Petr', 'finance', 95000);

SELECT department AS отдел, MAX(salary) AS максимальная_зарплата, AVG(salary) AS средняя_зарплата
FROM employee2
GROUP BY department
HAVING COUNT(*) > 1;