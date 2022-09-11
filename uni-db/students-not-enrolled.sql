select * 
from students
where id not in (select student_id
from enrolled);