
-- first method
select	count(distinct student_id)
from enrolled
where course_crn = (select crn
from courses
where name = 'CSC275')
and 
student_id in (select student_id
from majorsln
where dept_id = (select id
from departments
where name = 'CS'));


-- second method
select	count(distinct s.student_id)
from    enrolled s
		right join courses f on f.crn = s.course_crn and name = 'CSC275'
        right join majorsln k on k.student_id = s.student_id
		right join departments j on   j.id = k.dept_id  and  j.name = 'CS';