if (currentText != text) {
	obj_PlayerController.canmove = false;
	//obj_PlayerController.canselect = false;
	obj_PlayerController.caninventory = false;
	
	var actualLength = string_length(currentText);
	var actualText = currentText;
	var nextChar = string_char_at(text, actualLength+1);
	var delay = rate;
	
	if (nextChar == "^") {
		delay+=real(string_char_at(text, actualLength+2));
		nextChar += string_char_at(text, actualLength+2);
		nextChar += string_char_at(text, actualLength+3);
	}
	
	alarm[0] = delay;

	currentText+=nextChar;
	audio_play_sound(voice, 50, false);
}
