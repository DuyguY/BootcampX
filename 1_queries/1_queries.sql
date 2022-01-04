-- SELECT id, name 
-- FROM students 
-- WHERE cohort_id = 1
-- ORDER BY name;

-- SELECT COUNT(id) FROM students 
-- WHERE cohort_id IN (1,2,3); 

-- SELECT name, id, cohort_id FROM students 
-- WHERE phone IS NULL OR email IS NULL; 

-- SELECT name, id, email, cohort_id
-- FROM students
-- WHERE email NOT LIKE '%gmail.com'
-- AND phone IS NULL;

-- SELECT name, id, cohort_id FROM students 
-- WHERE end_date IS null
-- ORDER BY cohort_id; 

-- SELECT name, email, phone
-- FROM students 
-- WHERE github IS NULL AND end_date IS NOT NULL;

-- SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as studenq_start_date
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.start_date != students.start_date
-- ORDER BY cohort_start_date;
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students  LEFT 
JOIN cohorts ON cohorts.id = cohort_id;