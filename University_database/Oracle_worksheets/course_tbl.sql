/*
course_tbl
*/

drop table course_tbl;

create table course_tbl (course_id              number not null,
                         course_name            varchar2 (64),
                         course_professor_id    number,
                         foreign key (course_professor_id) references professor_tbl (professor_id));

alter table course_tbl add constraint course_id_pk primary key (course_id);
                         
comment on table course_tbl is 'Table containing data about university course. Strong entity.';

comment on column course_tbl.course_id              is 'Unique within university course id. number, not null.';
comment on column course_tbl.course_name            is 'Course name. varchar2 (64).';
comment on column course_tbl.course_professor_id    is 'Id of the professor that is teaching this course. Number, FK';

-- data insertion

insert into course_tbl (course_id, course_name, course_professor_id)
                        values (110, 'Political Economy', 20);
                        
insert into course_tbl (course_id, course_name, course_professor_id)
                        values (120, 'Dialectical Materialism', 20);

insert into course_tbl (course_id, course_name, course_professor_id)
                        values (130, 'Economics', 10);

insert into course_tbl (course_id, course_name, course_professor_id)
                        values (140, 'Banking', 10);

commit;