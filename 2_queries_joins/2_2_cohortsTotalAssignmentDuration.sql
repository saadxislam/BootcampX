SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions 
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';


SELECT students.name, count(assignment_submissions.*)
FROM assignment_submissions
JOIN students ON students.id = student_id
HAVING COUNT(assignment_submissions.*) < 100
GROUP BY student.name;