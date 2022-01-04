SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students
JOIN assignment_submissions ON students.id = student_id
GROUP BY students.end_date, students.name
HAVING end_date IS NULL
ORDER BY average_assignment_duration DESC;

-- COMPASS ANSWER:
-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;