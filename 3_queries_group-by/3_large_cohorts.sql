SELECT cohort_id as cohort_name, count(cohort_id) as student_count
FROM students
JOIN cohorts ON cohort_id = cohorts.name
GROUP BY cohorts.name
HAVING count(cohort_id) >= 18
ORDER BY cohort_id;