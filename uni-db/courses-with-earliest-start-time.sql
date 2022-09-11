select	*
from courses
where start_time =  (select min(start_time)
from courses);