SELECT userID 
FROM onlineEducation_platform.user_background 
WHERE background = 'bachelor';

SELECT T.instructorID
FROM onlineEducation_platform.instructor I,
onlineEducation_platform.course C, 
onlineEducation_platform.teach T
WHERE T.instructorID = I.instructorID 
AND T.courseID = C.courseID
AND C.description = 'Introduction to Databases';

SELECT S.userID, C.certificateID
FROM onlineEducation_platform.user S,
onlineEducation_platform.certificate C,
onlineEducation_platform.course I
WHERE S.userID= C.userID
AND C.courseID= I.courseID
AND I.description='Introduction to Databases';

SELECT course.courseID, feedback.comments
FROM course
LEFT JOIN feedback ON course.courseID = feedback.courseID;

SELECT AVG(quiz.q_totalMark)
FROM quiz;

SELECT user.userID, course.description
FROM user
JOIN enroll ON user.userID = enroll.userID
JOIN course ON enroll.courseID = course.courseID
ORDER BY course.description ASC;

SELECT module.moduleID, COUNT(lecture.lectureID)
FROM module
LEFT JOIN lecture ON module.moduleID = lecture.moduleID
GROUP BY module.moduleID;

SELECT assignmentID, COUNT(*)
FROM Submission 
GROUP BY assignmentID;

create view bachelor_usersID AS
SELECT userID 
FROM onlineEducation_platform.user_background 
WHERE background = 'bachelor';

create view Users_courses_enrolledIn AS 
SELECT user.userID, course.description
FROM user
JOIN enroll ON user.userID = enroll.userID
JOIN course ON enroll.courseID = course.courseID
ORDER BY course.description ASC;