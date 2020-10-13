SELECT cohorts.name AS cohorts_name, COUNT(assignment_submissions.*)
FROM assignment_submissions 
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts_name
ORDER BY COUNT(assignment_submissions.*) DESC;