SELECT 
ScholarshipCategory, COUNT(*) 
AS 
'MaxCount'
FROM 
subjectscholarshipinformation
WHERE 
ScholarshipCategory 
IS NOT NULL
GROUP BY 
ScholarshipCategory
ORDER BY 
'MaxCount' 
DESC
LIMIT 1;