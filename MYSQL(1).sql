start transaction;

CREATE TABLE `Student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `birthday` int(11) NOT NULL,
  `addr` varchar(3) NOT NULL,
  `regedt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `gender` tinyint(4) NOT NULL,
  `dept` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dept_student_dept_idx` (`dept`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;


create table Prof(
	id smallint unsigned not null auto_increment primary key,
    name varchar(31) not null,
    likecnt int default 0 null
);


create table Subject(
	id smallint unsigned not null auto_increment primary key,
    name varchar(31) not null,
    prof smallint unsigned,
    constraint foreign key fk_prof(prof) references Prof(id)
    on delete set null
);


create table Enroll(
	id int unsigned not null auto_increment primary key,
    subject smallint unsigned not null,
    student int (11) unsigned not null,
    constraint foreign key fk_subject (subject) references Subject(id) on delete cascade,
    constraint foreign key fk_student (student) references New_Student(id) on delete cascade
);

commit
