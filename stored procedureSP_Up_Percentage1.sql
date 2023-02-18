DELIMITER //
CREATE
 PROCEDURE `student`.`SP_Up_Percentage1`()

	BEGIN
		UPDATE studentsubjectinformation 
        SET StudentMarksPercentage =(SubjectObtainedMarks/SubjectTotalMarks)*100;
	END//
DELIMITER ;




