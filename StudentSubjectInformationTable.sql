CREATE TABLE StudentSubjectInformation(
SubjectOpted VARCHAR(20),
StudentRollNo INT,
SubjectTotalMarks INT,
SubjectObtainedMarks INT,
StudentMarksPercentage FLOAT,
StudentGrade VARCHAR(2),
FOREIGN KEY(StudentRollNo) REFERENCES
StudentBasicInformation(StudentRollNo)
);
