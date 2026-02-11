function is_alphanumeric(char) {
	var valid_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    // Check if the character's position is found within the valid_chars string
    // string_pos returns a value greater than 0 if found, and 0 if not found.
    if (string_pos(char, valid_chars) > 0) {
        return true;
    } else {
        return false;
    }
}