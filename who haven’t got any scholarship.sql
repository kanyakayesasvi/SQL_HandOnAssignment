SELECT studentbasicinformation.StudentName,
studentbasicinformation.StudentSurname,
studentbasicinformation.StudentRollNo,
studentbasicinformation.StudentAddress,
studentbasicinformation.StudentGender,
studentbasicinformation.StudentAge,
studentbasicinformation.StudentCity
FROM 
studentbasicinformation
INNER JOIN 
subjectscholarshipinformation 
ON
studentbasicinformation.StudentRollNo =subjectscholarshipinformation.StudentRollNo 
AND
subjectscholarshipinformation.ScholarshipStatus='Inactive';