
start transaction;

CREATE TABLE `Clubmember` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `club` smallint(5) unsigned NOT NULL,
  `student` int(11) unsigned NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_club_clubmember_idx` (`club`),
  KEY `fk_student_student_idx` (`student`),
  CONSTRAINT `fk_club_clubmember` FOREIGN KEY (`club`) REFERENCES `Club` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_student` FOREIGN KEY (`student`) REFERENCES `Student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


select * from Clubmember order by student;

-- 클럽별 학생추가
insert into Clubmember(club, student)
 select  1 , s.id from Student s where s.id > 0  and s.id < 51 ;

insert into Clubmember(club, student)
 select  2 , s.id from Student s where s.id > 51  and s.id < 101 ;
 
insert into Clubmember(club, student)
 select  3 , s.id from Student s where s.id > 101  and s.id < 151 ;

-- 리더 만들기 (default 0)
update Clubmember set level = 2  where club = 1 order by rand() limit 1 ;
update Clubmember set level = 2  where club = 2 order by rand() limit 1 ;
update Clubmember set level = 2  where club = 3 order by rand() limit 1 ;

-- 회원 등급 지정 (default 0)
update Clubmember set level = 1  where club = 1 order by rand() limit 20 ;
update Clubmember set level = 1  where club = 2 order by rand() limit 20 ;
update Clubmember set level = 1  where club = 3 order by rand() limit 20 ;

-- 회원 정보 보기
select cm.id ,c.name 클럽명, s.name 학생 , 
Case
when cm.level = 0 then '평회원'
when cm.level = 1 then '간부'
when cm.level = 2 then '*클럽장'
End as 등급
from Clubmember cm inner join Student s on cm.student = s.id 
				   inner join Club c on cm.club = c.id ;

commit;
