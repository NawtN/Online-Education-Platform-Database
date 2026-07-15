use onlineEducation_platform;
create table user(
userID char(8) primary key not null,
email varchar(20) not null,
passwo varchar(15) not null,
picture varchar(200)

);

create table user_background(
userID char(8) not null,
background varchar(100) not null,
constraint bpk primary key(userID,background),
constraint ffk foreign key(userID)references user(userID)
on delete cascade on update  cascade

);

create table course(
courseID char(8) primary key not null,
description varchar(200),
startDate date not null,
endDate date not null

);

create table feedback(
feedbackID char(8) primary key not null,
voting varchar(200),
comments varchar(200),
userID char(8) not null,
courseID char(8) not null,
constraint fedfk foreign key(userID)references user(userID)
on delete cascade on update  cascade,
constraint feedfk foreign key(courseID)references course(courseID)
on delete cascade on update  cascade

);


create table announcement(
announcementID char(8) primary key not null,
ann_timestamp timestamp not null default current_timestamp,
message varchar(200),
courseID char(8) not null,
constraint annfk foreign key(courseID)references course(courseID)
on delete cascade on update cascade

);

create table instructor(
instructorID char(8) primary key not null,
Bio varchar(200)

);

create table certificate(
certificateID char(8) primary key not null,
c_date date not null,
userID char(8) not null,
courseID char(8) not null,
constraint cfk foreign key(userID)references user(userID)
on delete cascade on update cascade,
constraint cerfk foreign key(courseID)references course(courseID)
on delete cascade on update cascade

);

create table study_group(
groupID char(8) primary key not null

);

create table post(
postID char(8) primary key not null,
post_timestamp timestamp not null default current_timestamp,
groupID char(8) not null,
userID char(8) not null,
constraint pfk foreign key(groupID)references study_group(groupID)
on delete cascade on update cascade,
constraint pofk foreign key(userID)references user(userID)
on delete cascade on update cascade

);

create table module(
moduleID char(8) primary key not null,
courseID char(8) not null,
constraint mfk foreign key(courseID)references course(courseID)
on delete cascade on update cascade

);

create table lecture(
lectureID char(8) primary key not null,
duration time not null,
video varchar(255) not null,
summary varchar(200),
moduleID char(8) not null,
constraint lfk foreign key(moduleID)references module(moduleID)
on delete cascade on update cascade

);

create table quiz(
quizID char(8) primary key not null,
q_deadline timestamp not null,
q_totalMark float,
moduleID char(8) not null,
constraint qfk foreign key(moduleID)references module(moduleID)
on delete cascade on update cascade

);

create table assignment(
assignmentID char(8) primary key not null,
a_deadline timestamp not null,
a_totalMark float,
moduleID char(8) not null,
constraint asfk foreign key(moduleID)references module(moduleID)
on delete cascade on update cascade

);

create table attempt(
attemptID char(8) not null,
quizID char(8) not null,
score float not null,
userID char(8) not null,
constraint apk primary key(attemptID,quizID),
constraint afk foreign key(userID)references user(userID)
on delete cascade on update cascade,
constraint atfk foreign key(quizID)references quiz(quizID)
on delete cascade on update cascade

);

create table submission(
submissionID char(8) not null,
assignmentID char(8) not null,
sub_timestamp timestamp not null default current_timestamp,
userID char(8) not null,
constraint spk primary key(submissionID, assignmentID),
constraint sfk foreign key(userID)references user(userID)
on delete cascade on update cascade,
constraint sufk foreign key(assignmentID)references assignment(assignmentID)
on delete cascade on update cascade

);

create table teach(
instructorID char(8) not null,
courseID char(8) not null,
constraint tpk primary key(courseID, instructorID),
constraint tfk foreign key(instructorID)references instructor(instructorID)
on delete cascade on update cascade,
constraint tefk foreign key(courseID)references course(courseID)
on delete cascade on update cascade

);

create table joins(
groupID char(8) not null,
userID char(8) not null,
constraint jpk primary key(groupID,userID),
constraint jfk foreign key(groupID)references study_group(groupID)
on delete cascade on update cascade,
constraint jofk foreign key(userID)references user(userID)
on delete cascade on update cascade

);

create table enroll(
userID char(8) not null,
courseID char(8) not null,
constraint epk primary key(userID,courseID),
constraint efk foreign key(userID) references user(userID)
on delete cascade on update cascade,
constraint enfk foreign key(courseID) references course(courseID)
on delete cascade on update cascade

);
