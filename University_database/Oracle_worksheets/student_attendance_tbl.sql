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

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11110, 1110, 110, 80, 100); 

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11111, 1110, 120, 20, 60);
                           
insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11112, 1120, 110, 20, 40);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11113, 1120, 120, 70, 100);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11114, 1130, 110, 50, 70);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11115, 1130, 120, 50, 80);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11116, 1140, 130, 80, 100);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11117, 1140, 140, 90, 75);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11118, 1150, 130, 70, 65);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11119, 1150, 140, 60, 70);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11120, 1160, 130, 40, 90);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11121, 1160, 140, 30, 60);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11122, 1170, 110, 90, 85);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11123, 1170, 120, 85, 70);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11124, 1170, 130, 80, 80);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11125, 1170, 140, 75, 70);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11126, 1180, 110, 70, 90);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11127, 1180, 120, 60, 80);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11128, 1180, 130, 80, 100);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11129, 1180, 140, 75, 90);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11130, 1190, 110, 70, 100);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11131, 1190, 120, 90, 100);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11132, 1190, 130, 20, 40);

insert into attendance_tbl (attendance_id, student_id, course_id, avg_score, attendance_percentage)
                           values (11133, 1190, 140, 10, 30);
                      
commit;
