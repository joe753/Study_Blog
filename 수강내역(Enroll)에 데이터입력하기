-- 원하는 limit값을 설정해주세요. (1000명이 넘을경우. 제 기본 설정값은 50000으로 되어있어서 limit을 걸었습니다.)

insert into Enroll(student, subject)
 select id, (select id from Subject order by rand() limit 1) sub_id from New_Student order by id limit 1000 ;


insert into Enroll(student, subject)
 select id, (select id from Subject order by rand() limit 1) sub_id from New_Student order by rand() limit 500
 on duplicate key update student = student;
 
 
 -- 만약 학생이름과 과목을 같이 보고싶을 시 입력해주세요.
select en.*, s.name as 'student name', sub.name as 'subject name' from Enroll as en inner join New_Student as s on en.student = s.id inner join Subject as sub on en.subject = sub.id order by s.name
 
