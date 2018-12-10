start transaction;

CREATE TABLE `dooodb`.`Classroom` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `classroom` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`));

insert into Classroom(classroom) values ('110');

  
ALTER TABLE `dooodb`.`Subject` 
ADD COLUMN `classroom` INT UNSIGNED NOT NULL AFTER `prof`,
ADD INDEX `fk_classroom_subject_idx` (`classroom` ASC);
;
ALTER TABLE `dooodb`.`Subject` 
ADD CONSTRAINT `fk_classroom_subject`
  FOREIGN KEY (`classroom`)
  REFERENCES `dooodb`.`Classroom` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

insert into Classroom(classroom) values ('101');
insert into Classroom(classroom) values ('102');
insert into Classroom(classroom) values ('103');
insert into Classroom(classroom) values ('104');
insert into Classroom(classroom) values ('105');
insert into Classroom(classroom) values ('106');
insert into Classroom(classroom) values ('107');
insert into Classroom(classroom) values ('108');
insert into Classroom(classroom) values ('109');
insert into Classroom(classroom) values ('110'); 
update Subject set classroom = id;

alter table Subject add constraint foreign key (classroom) references Classroom(id);



 
 commit;
