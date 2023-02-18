INSERT INTO studentsubjectinformation 
(SubjectOpted,StudentRollNo,SubjectTotalMarks, SubjectObtainedMarks) 
VALUES 
('Biology', 11, 50, 43);
INSERT INTO studentsubjectinformation (SubjectOpted,StudentRollNo,SubjectTotalMarks, SubjectObtainedMarks) 
VALUES ('Biology', 10, 50, 44);

INSERT INTO studentbasicinformation (StudentName, StudentRollNo) 
VALUES
('Rino', 15);

/*Inner Join: Here Inner join is used to retrive the data of students whose grades are assigned.*/
SELECT 
studentbasicinformation.StudentName,
studentbasicinformation.StudentSurname,
studentbasicinformation.StudentRollNo,
studentsubjectinformation.StudentGrade
FROM 
studentbasicinformation
INNER JOIN 
studentsubjectinformation
ON 
studentbasicinformation.StudentRollNo =studentsubjectinformation.StudentRollNo;


/*Left Join: Here Left Join is used to retrive the data of all the students in Studentbasicinformation Table and Matched fields from
Studentsubjectinformation Table*/

SELECT
studentbasicinformation.StudentName,
studentbasicinformation.StudentSurname,
studentbasicinformation.StudentRollNo,
studentsubjectinformation.StudentGrade
FROM 
studentbasicinformation
LEFT JOIN
studentsubjectinformation
ON 
studentbasicinformation.StudentRollNo =studentsubjectinformation.StudentRollNo;


/*Right Join: Here Right Join is used to retrive the data of all grades in Studentsubjectinformation table and matched details of students in
Studentbasicinformation table.*/

SELECT studentbasicinformation.StudentName,
studentbasicinformation.StudentSurname,
studentbasicinformation.StudentRollNo,
studentsubjectinformation.StudentGrade
FROM 
studentbasicinformation
RIGHT JOIN 
studentsubjectinformation
ON 
studentbasicinformation.StudentRollNo =studentsubjectinformation.StudentRollNo;



