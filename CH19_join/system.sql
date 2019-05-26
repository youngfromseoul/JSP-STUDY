create table membership (
    id      varchar(20),
    pw      varchar(20),
    name    varchar(20),
    phone1   varchar(20),
    phone2   varchar(20),
    phone3   varchar(20)
);

insert into membership2 (id, pw, name, phone1, phone2, phone3, gender)
    values ('freey93','1234','hyoyoung','010','2909','6175','남성');
insert into membership (id, pw, name, phone)
    values ('sy2344','2453452','songyi','01029443423');
    
select * from membership;

commit;

drop table memebership;


create table membership2 (
    id      varchar(20) primary key,
    pw      varchar(20),
    name    varchar(20),
    phone1   varchar(20),
    phone2   varchar(20),
    phone3   varchar(20),
    gender   VARCHAR(20)
);


select * from membership2;

drop table membership2;

commit
