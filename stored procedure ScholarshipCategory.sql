DELIMITER $$
CREATE
 PROCEDURE `student`.`SP_ScholarshipCategory`()

BEGIN
UPDATE subjectscholarshipinformation 
INNER JOIN 
studentsubjectinformation
ON 
subjectscholarshipinformation.StudentRollNo =studentsubjectinformation.StudentRollNo
SET 
subjectscholarshipinformation.ScholarshipCategory = 'Merit'
WHERE 
studentsubjectinformation.StudentMarksPercentage
BETWEEN 90 AND 100;

UPDATE subjectscholarshipinformation
INNER JOIN 
studentsubjectinformation
ON 
subjectscholarshipinformation.StudentRollNo =studentsubjectinformation.StudentRollNo
SET 
subjectscholarshipinformation.ScholarshipCategory = 'NonMerit'
WHERE 
studentsubjectinformation.StudentMarksPercentage < 90;
END$$
DELIMITER ;
CALL SP_ScholarshipCategory;