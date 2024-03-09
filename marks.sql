SELECT * FROM school.marks;

SELECT student_id, COUNT(subject_id)
FROM marks
GROUP BY student_id
HAVING COUNT(subject_id) > 10;

DELETE t1 FROM marks t1
INNER JOIN marks t2 
WHERE 
    t1.mark__id > t2.mark__id AND 
    t1.subject_id = t2.subject_id AND
    t1.student_id = t2.student_id;
    


SELECT *
FROM marks
CROSS JOIN new_marks
order by new_mark_id;

select sum(mark_obtained) from marks where student_id = 1;



