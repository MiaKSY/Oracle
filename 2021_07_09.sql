-- <문제> 현재 입사자들중에서 직업별로 평균Salary 이상 받는 사람들을 조사하려 하는 쿼리문을 작성하시오.

SELECT * FROM employees;

SELECT DISTINCT job_id
FROM employees;

SELECT job_id
FROM employees
WHERE salary >= (SELECT avg(salary) FROM employees)
GROUP BY job_id;

SELECT job_id, SUM(salary)
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees) 
GROUP BY job_id;

-- <문제>현재 dno가 10이 아닌 사원들 중에 평균 급여 이상으로 받고있는 사원들을 나타내시오.(사원번호,이름,월급);

SELECT employee_id, first_name, salary
FROM employees
WHERE salary >= (SELECT avg(salary) FROM employees)
AND department_id != 10;



