
insert into Enroll(student, subject)
 select id, (select id from Subject order by rand() limit 1) sub_id from Student order by id ;


-- 두번 입력해주세요
insert into Enroll(student, subject)
 select id, (select id from Subject order by rand() limit 1) sub_id from Student order by rand() limit 500
 on duplicate key update student = student;
 
 
 -- 만약 학생이름과 과목을 같이 보고싶을 시 입력해주세요.
select en.*, s.name as 'student name', sub.name as 'subject name' 
from Enroll as en inner join Student as s on en.student = s.id 
				  inner join Subject as sub on en.subject = sub.id order by s.name;
