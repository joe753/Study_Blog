
DELIMITER //
Create Trigger tr_club_insert_leader
	before insert on Club for each row
Begin
	IF NEW.leader  is null then
       set New.leader = (select id from Clubmember
        where level = 0 order by rand() limit 1);

    End IF; 
End //
DELIMITER ;

insert into Club set name = ('마술부');
select * from Clubmember;
select * from Club;


select * from Clubmember where club = (select max(id) from Club);
