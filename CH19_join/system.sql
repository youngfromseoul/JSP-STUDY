create table membership (
    id      varchar(20),
    pw      varchar(20),
    name    varchar(20),
    phone   varchar(20)
);

insert into membership (id, pw, name, phone)
    values ('freey93','1234','hyoyoung','01029096175');
insert into membership (id, pw, name, phone)
    values ('sy2344','2453452','songyi','01029443423');
    
select * from membership;

commit;

create table membership2 (
    id      varchar(20),
    pw      varchar(20),
    name    varchar(20),
    phone1   varchar(20),
    phone2   varchar(20),
    phone3   varchar(20),
    gender  VARCHAR(20)
    
);