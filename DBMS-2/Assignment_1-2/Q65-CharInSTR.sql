DECLARE
    input_str VARCHAR2(100) := '&input_str';  -- Accept input string from user
    temp_str VARCHAR2(100);  -- Temporary string to track character removal
    original_length NUMBER;  -- Original length of temp_str before removing characters
    new_length NUMBER;  -- Length after removing characters
    char_diff NUMBER;  -- Difference in length (indicates occurrences of character)
    current_char CHAR;  -- Current character being processed
    total_chars NUMBER(5) := 0;  -- Counter for total characters processed
BEGIN
    -- Store the input string in temp_str for manipulation
    temp_str := input_str;

    -- Loop until the string becomes empty
    WHILE LENGTH(temp_str) > 0 LOOP
        -- Get the first character from the string
        current_char := SUBSTR(temp_str, 1, 1);
        
        -- Get the original length of the string
        original_length := LENGTH(temp_str);
        
        -- Remove all occurrences of the current character from temp_str
        temp_str := REPLACE(temp_str, current_char);
        
        -- Get the new length of the string after removal
        new_length := NVL(LENGTH(temp_str), 0);
        
        -- Calculate the number of times the character appeared
        char_diff := original_length - new_length;

        -- Check if the character is a space (ASCII value 32)
        IF ASCII(current_char) = 32 THEN
            DBMS_OUTPUT.PUT_LINE('SPACE EXISTS ' || char_diff || ' TIMES');
        ELSE
            DBMS_OUTPUT.PUT_LINE(current_char || ' EXISTS ' || char_diff || ' TIMES');
        END IF;

        -- Keep track of the total number of characters processed
        total_chars := total_chars + char_diff;
    END LOOP;

    -- Display the total length of the input string
    DBMS_OUTPUT.PUT_LINE('TOTAL LENGTH OF THE GIVEN STRING "' || input_str || '" = ' || total_chars);
END;
/
