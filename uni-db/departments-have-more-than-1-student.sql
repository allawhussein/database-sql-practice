select s.name , count(s.name)
from departments s
right join majorsln j on j.dept_id = s.id
group by j.dept_id having count(distinct j.student_id)>1;