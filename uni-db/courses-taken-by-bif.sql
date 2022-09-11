
-- first method
select * 
from courses
where crn in (select course_crn 
from enrolled
where student_id in (select student_id
from majorsln
where dept_id in (select id
from departments
where name = 'BIF')));


-- second method
select distinct s.*
from courses s
	left join enrolled f on f.course_crn = s.crn
    right join majorsln k on k.student_id = f.student_id
	right join departments j on  j.id = k.dept_id  and  j.name = 'BIF';
       