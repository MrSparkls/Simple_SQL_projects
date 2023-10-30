/*
student_attendance_tbl
*/

drop table attendance_tbl;

create table attendance_tbl (attendance_id            number not null,
                             student_id               number not null,
                             course_id                number not null,
                             avg_score                number,
                             attendance_percentage    number,
                             constraint attendance_id_pk primary key (attendance_id),
                             foreign key (student_id) references student_tbl (student_id),
                             foreign key (course_id) references course_tbl (course_id));
                                    
comment on table attendance_tbl is 'Table containing data about which student attending wich course. Weak entity.';

comment on column attendance_tbl.attendance_id          is 'Unique within university attendance id. Number, not null, PK.'; 
comment on column attendance_tbl.student_id             is 'Unique within university student_id. Number, not null, FK.'; 
comment on column attendance_tbl.course_id              is 'Ubique within university course_id. Number, not null, FK.'; 
comment on column attendance_tbl.avg_score              is 'Average mark of the student attending course. Number.'; 
comment on column attendance_tbl.attendance_percentage  is 'Average attending of the course by student. Number.'; 

insert into atendance_tbl (atendance_id, student_id, course_id, avg_score, atenda)