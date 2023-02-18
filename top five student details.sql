SELECT
* 
FROM 
studentsubjectinformation 
ORDER BY 
StudentMarksPercentage
DESC LIMIT 0,5;


SELECT DISTINCT *
FROM 
studentsubjectinformation a
WHERE 
5 >= (SELECT COUNT(StudentMarksPercentage)
FROM 
studentsubjectinformation b
WHERE 
b.StudentMarksPercentage >= a.StudentMarksPercentage)
ORDER BY 
a.StudentMarksPercentage 
DESC;