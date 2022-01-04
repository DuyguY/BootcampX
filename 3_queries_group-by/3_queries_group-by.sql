-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;

-- SELECT day, COUNT(id) as total_assignments
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;

-- SELECT day, COUNT(id) as total_assignments
-- FROM assignments
-- GROUP BY day
-- HAVING COUNT(id) >= 10
-- ORDER BY day;

-- SELECT cohorts.name as cohort_name, COUNT (students.id) as total_students
-- FROM students 
-- JOIN cohorts
-- ON cohort_id = cohorts.id
-- GROUP BY cohorts.name 
-- HAVING COUNT (students.id) > 17
-- ORDER BY COUNT (students.id);

-- SELECT cohorts.name as cohort, COUNT (assignment_submissions.assignment_id) as total_submissions
-- FROM students 
-- JOIN cohorts
-- ON cohort_id = cohorts.id
-- JOIN assignment_submissions
-- ON students.id = student_id
-- GROUP BY cohorts.name 
-- ORDER BY COUNT (assignment_submissions.assignment_id) DESC;

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration 
FROM assignment_submissions 
JOIN students
ON student_id =students.id
JOIN assignments
ON assignment_id =assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name 
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;