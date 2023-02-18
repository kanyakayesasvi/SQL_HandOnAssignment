-- Count of All Categories.
SELECT ScholarshipCategory, 
COUNT(*) 
AS 
COUNT
FROM 
subjectscholarshipinformation
WHERE 
ScholarshipCategory 
IS NOT NULL
GROUP BY 
ScholarshipCategory;