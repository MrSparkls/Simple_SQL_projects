/*
student_tbl
*/

create table student_tbl (student_id        number not null,
                          first_name        varchar2 (64),
                          last_name         varchar2 (64),
                          group_id          varchar2 (16),
                          constraint student_id_pk primary key (student_id));
                          
comment on table student_tbl is 'Table containing individual student data. Strong Entity.';

comment on column student_tbl.student_id is 'Unique within university student id. Number, not null, PK.';
comment on column student_tbl.first_name is 'Students name. varchar2 (64).';
comment on column student_tbl.last_name is 'Students last name. varchar2 (64).';
comment on column student_tbl.group_id is 'Students group. varchar (16).';

insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1110, 'Bill', 'Horn', 'PE-01');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1120, 'Eric', 'Folkman', 'PE-01');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1130, 'Amanda', 'bell', 'PE-01');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1140, 'Linda', 'Fisher', 'PE-02');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1150, 'Adam', 'Driver', 'PE-02');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1160, 'Melissa', 'Still', 'PE-02');

insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1170, 'Sebastian', 'Veil', 'PE-03');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1180, 'Merril', 'Hawke', 'PE-03');
                         
insert into student_tbl (student_id, first_name, last_name, group_id)
                         values (1190, 'Patrick', 'McTetras', 'PE-03');
                         
commit;    
