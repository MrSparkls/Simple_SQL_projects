/*
professor_tbl
*/

drop table professor_tbl;

create table professor_tbl (professor_id    number not null,
                            first_name      varchar2 (64),
                            last_name       varchar2 (64),
                            decree          varchar2 (64),
                            salary          number);

alter table professor_tbl add constraint professor_id_pk primary key (professor_id);
                            
comment on table professor_tbl is 'Table containing data about university professor. Strong entity.';

comment on column professor_tbl.professor_id    is 'Unique within university professor id. Number, not null.'; 
comment on column professor_tbl.first_name      is 'First name of the professor. varchar2(64).';
comment on column professor_tbl.last_name       is 'Last name of the professor. varchar2(64).';
comment on column professor_tbl.decree          is 'Academic Rank of the professor. varchar2(64).';
comment on column professor_tbl.salary          is 'Salary of the professor. Number.';

-- data insertion

insert into professor_tbl (professor_id, first_name, last_name, decree, salary)
                           values (10, 'Adam', 'Smith', 'Dean', 30000);

insert into professor_tbl (professor_id, first_name, last_name, decree, salary)
                           values (20, 'Karl', 'Marx', 'Professor', 30000);
                           
commit;
