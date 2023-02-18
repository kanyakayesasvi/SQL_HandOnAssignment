DELIMITER $$
CREATE
 PROCEDURE `student`.`SP_BalanceAmount`(IN id INT)
BEGIN
SELECT 
studentbasicinformation.StudentName,
studentbasicinformation.StudentSurname,
studentbasicinformation.StudentRollNo, 
studentbasicinformation.StudentAddress,
studentbasicinformation.StudentGender, 
studentbasicinformation.StudentAge,
studentbasicinformation.StudentCity,
studentadmissionpaymentdetails.AmountBalance
FROM 
studentbasicinformation
INNER JOIN 
studentadmissionpaymentdetails 
ON
studentbasicinformation.StudentRollNo=id 
AND
studentbasicinformation.StudentRollNo = studentadmissionpaymentdetails.StudentRollNo;
END$$
DELIMITER ;