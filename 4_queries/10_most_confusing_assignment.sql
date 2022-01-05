SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assignment_id) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;