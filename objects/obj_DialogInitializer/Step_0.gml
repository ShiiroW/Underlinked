if (start) {
	var dialogWriter = instance_create_layer(x, y, "Instances", obj_DialogWriter);
	dialogWriter.text     = text;
	dialogWriter.rate     = rate;
	dialogWriter.skipable = skipable;
	dialogWriter.voice = voice;
	dialogWriter.text     = text;
	
	if (type == TYPE.BOX) {
		var dialogBox = instance_create_layer(x, y, "Instances", obj_DialogBox);
		dialogBox.shaking = shaking;
		dialogBox.font = font;
		dialogBox.writer = dialogWriter;
	}
	instance_destroy();
}