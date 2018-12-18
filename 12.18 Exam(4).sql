-- 학생수점수
  DELIMITER //
	CREATE Function f_stu_count_point(_stu_count smallint(5))
	RETURNS smallint(6)
	BEGIN
	RETURN (case when _stu_count >= 210 then 20 
      when _stu_count >= 200 then 15
      when _stu_count >= 190 then 10
      else 5 end) ;
	END //
	DELIMITER ;
select f_stu_count_point

 
 -- 학점인기도
 DELIMITER //
	CREATE Function f_grade__count_point(_count_point smallint(5))
	RETURNS smallint(6)
	BEGIN
	RETURN (case when cast((_count_point / 2) as signed integer) >= 90 then 30
         when cast((_count_point / 2) as signed integer) >= 80 then 30
         when cast((_count_point / 2) as signed integer) >= 70 then 20
        when cast((_count_point / 2) as signed integer) >= 60 then 20
        else 10 end) ;
	END //
	DELIMITER ;
select f_stu_count_point


-- 교수평가점수 
 DELIMITER //
	CREATE Function f_prof_like_point(_likecnt smallint(5))
	RETURNS smallint(6)
	BEGIN
	RETURN (case when _likecnt >= 90 then 50
				 when _likecnt >= 80 then 40
				 when _likecnt >= 70 then 30
				 when _likecnt >= 60 then 20
				 when _likecnt >= 50 then 10
			     else 0 end) ;
	END //
	DELIMITER ;
select f_stu_count_point



DELIMITER $$
CREATE Procedure sp_count_point() 
BEGIN
    
    select max(sub.name) 과목명, max(pf.name) 교수이름, max(f_stu_count_point(sub.students)) 학생수 , max(f_grade_count_point ((g.midterm + g.final))) 학점점수,
			max(f_prof_like_point (pf.likecnt)) 인기도, 
            max(concat(f_stu_count_point(sub.students) + f_grade_count_point ((g.midterm + g.final)) + f_prof_like_point (pf.likecnt))) 총점
		from Enroll en inner join Subject sub on en.subject = sub.id
						inner join Prof pf on sub.prof = pf.id 
                        inner join Grade g on g.enroll = en.id
                        group by sub.prof order by 총점 desc limit 3;
                        
END $$
DELIMITER ;


call sp_count_point();
