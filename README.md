# Pewlett-Hackard-Analysis
## Overview of Analysis
Pewlett Hackard has a large cohort of employees that are nearing retirement age. We were tasked with gathering information about this group of aging employees. We made a table that held the likely retirees and their titles, so Pewlett Hackard could see what roles will need to be filled in the near futute. Using this we also, broke the retiring group up to get a count for each department. We also made a mentorship eligibility table. For this, we took the aging employees and paired them with their current titles, to make a list of potential mentors for younger employees following similar career paths.
## Results
- The retirement_titles table gave us the list of employees born bettween "1952 & 1955" and paired them with their job titles.
- The unique_titles table refined the retirement_titles by cleaning out duplicate employee entries and kept their most recent job title.
- The retiring_titles table gave us the number of employess nearing retirement for each job title. Senior Engineer and Senior Staff stand out as the two largest roles that will need replacing.
- The mentorship_eligibilty table gives us a list of current employees who are nearing retirement, but still have enough time left in their career to mentor younger employees.
## Summary
### How many roles will need to be filled after the silver tsunami?
- 90,398 roles will need to be filled as the "silver tsunami" takes effect. This group accounts employees born from 1952-1955.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Hewlett Packard employees?
- Within current parameters, only 1,549 mentors are available. This isn't nearly enough potential mentors to help train mentees to fill the future job openings. Currently, only employees born in 1965 are considered eligble to become mentors, we could grow the pool of candidates by increasing the range of years for the eligibility.

- By extending the eligibility birth dates from 1964-1970, it increased the pool of potential mentors to 19,905. This would alow for each potential mentor to have an average of 4.54 mentees. This is much more managble than the 58.35 to 1 mentee to mentor ratio from the orginal set of mentors. 
- Note: extended_mentorship_eligibilty table is available as "extended_mentorship_eligibility.csv" in the Data folder

- To find out the available mentors for each department from our exended_mentorship_eligibility table, using this table we modified a previous query to fit our needs. This will allow us to create a ratio of mentor to mentees by department, which will be different than the broader overall ratio.
- Note: This table is saved in the Data folder as "extended_mentorship_departments.csv

There is also a table available that breaks down the extended mentorship candidates by job titles
- Note: This table is saved in the Data folder as "extended_mentorship_titles.csv"






