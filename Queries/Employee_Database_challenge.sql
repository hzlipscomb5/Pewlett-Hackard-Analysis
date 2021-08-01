--- DELIVERABLE 1

--Create Retirement Titles Table
SELECT e.emp_no, e.first_name, e.last_name, 
t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--Number of Employees by their most recent job title
--Create Retiring Titles
SELECT COUNT (emp_no),title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY count DESC;


---DELIVERABLE 2
-- Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, 
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_employees as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE de.to_date = ('9999-01-01') 
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no


-- DELIVERABLE 3 TABLES

-- Extended Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, de.dept_no,
t.title
INTO extended_mentorship_eligibilty
FROM employees as e
INNER JOIN dept_employees as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE de.to_date = ('9999-01-01') 
    AND (e.birth_date BETWEEN '1964-01-01' AND '1970-12-31')
ORDER BY e.emp_no;


--Create Extended Mentorship by Department
SELECT COUNT (emp_no), em.dept_no, d.dept_name
extended_mentorship_titles
INTO extended_mentorship_departments
FROM extended_mentorship_eligibilty as em
JOIN departments as d
ON em.dept_no = d.dept_no
GROUP BY em.dept_no , d.dept_name
ORDER BY count DESC;



--Create Extended Mentorship by Titles
SELECT COUNT (emp_no),title
INTO extended_mentorship_titles
FROM extended_mentorship_eligibilty as em
GROUP BY em.title
ORDER BY count DESC;
