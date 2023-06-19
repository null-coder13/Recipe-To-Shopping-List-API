DELIMITER //

CREATE PROCEDURE ChangeUserPassword(
  IN p_username VARCHAR(255),
  IN p_new_password VARCHAR(255)
)
BEGIN
  DECLARE v_user_count INT;

  -- Check if the user exists
  SELECT COUNT(*) INTO v_user_count
  FROM Users
  WHERE username = p_username;

  IF v_user_count > 0 THEN
    -- User exists, update the password
    UPDATE Users
    SET password = p_new_password
    WHERE username = p_username;
    
    SELECT 'Password changed successfully.' AS Message;
  ELSE
    SELECT 'User not found.' AS Message;
  END IF;
END //


CREATE PROCEDURE UpdateUserEmail(
  IN p_username VARCHAR(255),
  IN p_new_email VARCHAR(255)
)
BEGIN
  DECLARE v_user_count INT;

  -- Check if the user exists
  SELECT COUNT(*) INTO v_user_count
  FROM Users
  WHERE username = p_username;

  IF v_user_count > 0 THEN
    -- User exists, update the email
    UPDATE Users
    SET email = p_new_email
    WHERE username = p_username;

    SELECT 'Email address updated successfully.' AS Message;
  ELSE
    SELECT 'User not found.' AS Message;
  END IF;
END //

DELIMITER ;

