insert into onlineEducation_platform.user(userID, email, passwo, picture) values
('11112222','aa@gmail.com','qwedfg234','pic1'),
('22221111','bb@gmail.com','peoie234','pic2'),
('33334444','cc@gmail.com','pooop7766','pic3'),
('44443333','dd@gmail.com','hdhdh223!','pic4'),
('55556666','ee@gmail.com','ssddcx123','pic5'),
('66665555','ff@gmail.com','zxcasd456','pic6');

insert into onlineEducation_platform.user_background(userID, background) values
('11112222','diploma'),
('22221111','bachelor'),
('33334444','bachelor'),
('44443333','high school'),
('55556666','diploma'),
('66665555','bachelor');

insert into onlineEducation_platform.course(courseID, description, startDate, endDate) values
('11111111','Introduction to Databases','2024-01-01','2024-06-01'),
('22222222','Introduction to Java','2024-01-01','2024-06-01'),
('33333333','Calculus One','2024-01-01','2024-06-01'),
('44444444','Algebra','2024-01-01','2024-06-01'),
('55555555','Data Structures','2024-01-01','2024-06-01'),
('66666666','Computer Architecture','2024-01-01','2024-06-01');

insert into onlineEducation_platform.feedback(feedbackID, voting, comments, userID, courseID) values
('00000001','excellent','This course is very easy','11112222','11111111'),
('00000002','poor','The course was very challenging and required a lot of hard work','11112222','33333333'),
('00000003','good','Interesting course','33334444','55555555'),
('00000004','average','Isn’t bad','66665555','66666666'),
('00000005','average','very hard','22221111','44444444'),
('00000006','good',null,'22221111','22222222');

insert into onlineEducation_platform.announcement(announcementID, ann_timestamp, message, courseID) values
('10000001', '2024-10-01 20:00:00','There will be a quiz tomorrow.','55555555'),
('20000002', '2024-10-22 10:20:00','Assignment 2 has been posted!','66666666'),
('30000003', '2024-11-03 16:30:00','Tomorrow’s class has been canceled','22222222'),
('40000004', '2024-11-14 10:10:00','There will be an online lecture','22222222'),
('50000005', '2024-12-01 10:45:00','Welcome to this course :)','11111111'),
('60000006', '2024-12-08 10:50:00','If you want to ask me, send me an email','11111111');

insert into onlineEducation_platform.instructor(instructorID, Bio) values
('11110001', null),
('22220002','Dr. Jane Smith a CS professor'),
('33330003','Mrs. Sarah Lee has been teaching mathematics for over 8 years'),
('44440004', null),
('55550005','Dr. Ahmad Ali computer science instructor'),
('66660006', null);

insert into onlineEducation_platform.certificate(certificateID, c_date, userID, courseID) values
('12121212','2024-11-02','11112222','11111111'),
('23232323','2024-05-27','33334444','11111111'),
('34343434','2024-06-15','55556666','33333333'),
('45454545','2024-01-29','66665555','55555555'),
('56565656','2024-01-09','22221111','44444444'),
('67676767','2024-05-31','44443333','22222222');

insert into onlineEducation_platform.study_group(groupID) values
('99991111'),
('99992222'),
('99993333'),
('99994444'),
('99995555'),
('99996666');

insert into onlineEducation_platform.post(postID, post_timestamp, groupID, userID) values
('60011111', default,'99991111','11112222'),
('50022222', default,'99995555','22221111'),
('40003333', default,'99995555','33334444'),
('30004444', default,'99993333','44443333'),
('20005555', default,'99996666','55556666'),
('10006666', default,'99993333','66665555');

insert into onlineEducation_platform.module(moduleID, courseID) values
('98986699','11111111'),
('11224432','22222222'),
('22670000','33333333'),
('73210099','44444444'),
('30987611','55555555'),
('22244449','66666666');

insert into onlineEducation_platform.lecture(lectureID, duration, video, summary, moduleID) values
('12345678', '02:25:00', 'https://Introduction to Databases', 'an introduction to database', '98986699'),
('65432100', '15:00:00', 'https://Introduction to Java', null, '11224432'),
('77777799', '04:15:00', 'https://Calculus one', null, '22670000'),
('43432121', '01:00:00', 'https://Algebra', ' introduction to Algebra and examples', '73210099'),
('00000777', '08:45:00', 'https://Data Structures', null, '30987611'),
('73245688', '10:00:00', 'https://Computer Architecture', 'brief explanation of computer architecture', '22244449');

insert into onlineEducation_platform.quiz(quizID, q_deadline, q_totalMark, moduleID) values
('88888888', '2024-11-19 10:00:00','77.50', '98986699'),
('12121212', '2024-11-23 05:15:00','100', '11224432'),
('67549900', '2024-12-07 05:00:00','60', '22670000'),
('11111888', '2024-11-20 11:10:00','88', '73210099'),
('99977733', '2024-12-08 12:00:00','96.25', '30987611'),
('23450000', '2024-12-06 17:00:00','55.50', '22244449');

insert into onlineEducation_platform.assignment(assignmentID, a_deadline, a_totalMark, moduleID) values
('12322434','2024-09-10 23:59:00','66','98986699'),
('12347892','2024-09-20 23:59:00','100','11224432'),
('12386903','2024-09-29 23:59:00','80','22670000'),
('12457839','2024-10-10 23:59:00','88','73210099'),
('12322564','2024-10-19 23:59:00','45','30987611'),
('19865730','2024-10-27 23:59:00','99','22244449');

insert into onlineEducation_platform.attempt(attemptID, quizID, score, userID) values
('55674890','88888888','77.50','11112222'),
('34556764','12121212','100','22221111'),
('10890109','67549900','60','33334444'),
('86755674','11111888','88','44443333'),
('24561187','99977733','96.25','55556666'),
('21578245','23450000','55.50','66665555');

insert into onlineEducation_platform.submission(submissionID, assignmentID, sub_timestamp, userID) values
('11221122','12322434','2024-09-09 12:10:00','11112222'),
('11222211','12347892','2024-09-18 22:58:00','22221111'),
('22332233','12386903','2024-09-18 23:36:00','33334444'),
('22333322','12457839','2024-09-18 16:20:00','44443333'),
('33443344','12322564','2024-09-18 18:47:00','55556666'),
('33444433','19865730','2024-09-18 20:49:00','66665555');

insert into onlineEducation_platform.teach(instructorID, courseID) values
('11110001','33333333'),
('22220002','44444444'),
('33330003','11111111'),
('44440004','22222222'),
('55550005','66666666'),
('66660006','55555555');

insert into onlineEducation_platform.joins(groupID, userID) values
('99991111','33334444'),
('99992222','22221111'),
('99993333','11112222'),
('99994444','44443333'),
('99995555','55556666'),
('99996666','66665555');

insert into onlineEducation_platform.enroll(userID, courseID) values
('11112222','33333333'),
('22221111','22222222'),
('33334444','11111111'),
('44443333','44444444'),
('55556666','55555555'),
('66665555','66666666');