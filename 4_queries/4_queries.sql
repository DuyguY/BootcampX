-- SELECT COUNT(*) as total_assistance, teachers.name as name 
-- FROM assistance_requests
-- JOIN teachers
-- ON teacher_id = teachers.id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

-- SELECT COUNT(*) as total_assistance, students.name as name 
-- FROM assistance_requests
-- JOIN students
-- ON student_id = students.id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;

-- SELECT teachers .name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) as duration 
-- FROM assistance_requests
-- JOIN teachers ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN assignments ON assignment_id = assignments.id
-- ORDER BY duration;

-- SELECT AVG(completed_at - started_at) AS average_assistance_request_duration
-- FROM assistance_requests;

-- SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time 
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;

-- SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time 
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time DESC
-- LIMIT 1;


-- SELECT AVG(started_at - created_at) AS average_wait_time
-- FROM assistance_requests;

-- SELECT cohorts.name AS name,SUM(completed_at - started_at) AS total_duration 
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;

-- SELECT avg(total_duration) as average_total_duration
-- FROM (SELECT cohorts.name AS name,SUM(completed_at - started_at) AS total_duration 
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- ORDER BY total_duration) as total_duration;

--  SELECT assignments.id, assignments.name, day, chapter, COUNT(assignment_id) as total_requests 
--  FROM assignments
--  JOIN assistance_requests
--  ON assignments.id = assignment_id
--  GROUP BY assignments.id
--  ORDER BY total_requests DESC;

-- SELECT day, COUNT(name) as number_of_assignments, SUM(duration) as duration
-- FROM assignments 
-- GROUP BY day
-- ORDER BY day;

-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- FROM assistance_requests
-- JOIN teachers ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teachers.name;

SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;




