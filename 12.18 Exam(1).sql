
select s.id , s.name , s.subjects, round((avg(g.midterm) + avg(g.final)) / 2) 평균 
		from Enroll en inner join Student s on en.student = s.id
                       inner join Subject sub on en.subject = sub.id
                       inner join Grade g on g.enroll = en. id group by en.student;


select * from Enroll en inner join Student s on en.student = s.id
                    inner join Subject sub on en.subject = sub.id
                   inner join Grade g on g.enroll = en. id order by en.student;

create view v_stu_sub_grade_avr as
    select s.id , s.name , s.subjects, round((avg(g.midterm) + avg(g.final)) / 2) 평균 
		from Enroll en inner join Student s on en.student = s.id
                       inner join Subject sub on en.subject = sub.id
                       inner join Grade g on g.enroll = en. id group by en.student;


select * from v_stu_sub_grade_avr;
