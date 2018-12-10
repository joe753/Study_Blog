start transaction;

CREATE TABLE `Dept` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `prof` smallint(5) unsigned DEFAULT NULL,
  `student` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_student_idx` (`student`),
  KEY `fk_prof_dept_prof_idx` (`prof`),
  CONSTRAINT `fk_prof_dept_prof` FOREIGN KEY (`prof`) REFERENCES `Prof` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_dept_student` FOREIGN KEY (`student`) REFERENCES `Student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 학과 , 교수, 과대표 지정
insert into Dept(name, prof, student)
  select '경영학과', (select id from Prof order by rand() limit 1)  , (select id from Student order by rand() limit 1); 
insert into Dept(name, prof, student)
  select '수학과', (select id from Prof order by rand() limit 1)  , (select id from Student order by rand() limit 1); 
insert into Dept(name, prof, student)
  select '법학과', (select id from Prof order by rand() limit 1) , (select id from Student order by rand() limit 1); 
insert into Dept(name, prof, student)
  select '무용과', (select id from Prof order by rand() limit 1) , (select id from Student order by rand() limit 1); 
insert into Dept(name, prof, student)
  select '경영학과', (select id from Prof order by rand() limit 1), (select id from Student order by rand() limit 1); 

-- Student테이블에 'dept' 칼럼 추가

ALTER TABLE `dooodb`.`Student` 
ADD COLUMN `dept` INT UNSIGNED NOT NULL AFTER `gender`,
ADD INDEX `fk_dept_student_dept_idx` (`dept` ASC);
;
ALTER TABLE `dooodb`.`Student` 
ADD CONSTRAINT `fk_dept_student_dept`
  FOREIGN KEY (`dept`)
  REFERENCES `dooodb`.`Dept` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
-- 모든 학생에 대해 랜덤하게 학과 배정
update Student set dept = ceil((rand()/2) * 10) where id > 0;




-- 입력이 잘 되었는지 확인
select s.id, s.name ,d.name from Student s
	inner join Dept d on s.dept = d.id order by id;
    
-- 4번 문항 보기
select d.id, d.name as 학과, s.name 교수이름 , p.name 과대표 
from Dept d inner join Prof p on d.prof = p.id
			inner join Student s on d.student = s.id; 
 
 commit; 




