CREATE TABLE SubjectScholarshipInformation(
StudentRollNo INT,
ScholarshipName VARCHAR(20),
ScholarshipDescription VARCHAR(20),
ScholarshipAmount INT,
ScholarshipCategory VARCHAR(20),
ScholarshipOpted VARCHAR(20),
ScholarshipStatus VARCHAR(20),
FOREIGN KEY(StudentRollNo) REFERENCES
StudentBasicInformation(StudentRollNo)
);
