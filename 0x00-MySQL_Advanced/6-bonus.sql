-- procedur
-- SET UP THE DELIMETER
-- crete the procedure structure
-- 
DELIMITER #
CREATE PROCEDURE AddBonus( IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
	SET @project_id = ( SELECT id FROM projects WHERE name = project_name);
	IF @projct_id IS NULL THEN
		INSERT INTO projects(name) VALUES(project_name);
		SET @project_id = LAST_INSERT_ID();
	END IF;
	INSERT INTO corrections VALUES(user_id, @project_id, score);
END#
DELIMITER ;

