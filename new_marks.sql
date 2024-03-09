SELECT * FROM school.new_marks;

drop procedure if exists insertMarks;
DELIMITER //
CREATE PROCEDURE insertMarks()
BEGIN
	Declare i int default 1 ;
    WHILE (i <= 200) DO
        Insert into new_marks (new_mark_id) VALUES (i);
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

call insertMarks() ;

Insert into new_marks (new_mark_id) VALUES (1);
delete from new_marks where new_mark_id=1 limit 1;

