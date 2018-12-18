DELIMITER //
CREATE Function f_stu_avr(_id int(11))
 RETURNS smallint(6)
BEGIN
	RETURN (select round((avg(g.midterm) + avg(g.final)) / 2) 평균  
		from Enroll en inner join Student s on en.student = s.id
                       inner join Subject sub on en.subject = sub.id
                       inner join Grade g on g.enroll = en. id 
                       where s.id = _id   
                       group by en.student);
END //
DELIMITER ;



select f_stu_avr (6);

select s. name , round((avg(g.midterm) + avg(g.final)) / 2) 평균  
		from Enroll en inner join Student s on en.student = s.id
                       inner join Subject sub on en.subject = sub.id
                       inner join Grade g on g.enroll = en. id where s.id = 6 group by en.student;
