draw_set_font(self.font);

var lines = string_hash_to_newline(writer.currentText);
var drawableText = lines;
for (var i = 0; i <= 9; i++) {
	drawableText = string_replace_all(drawableText, "^"+string(i), "");
}
drawableText = string_replace_all(drawableText, "^", "");
drawableText = string_replace_all(drawableText, "#", "");

var yOffset = position == POSITION.BOTTOM ? 543 : 15;

draw_set_color(c_white);
draw_rectangle(15, yOffset, 1009, yOffset+210, false);
draw_set_color(c_black);
draw_rectangle(15+8, yOffset+8, 1009-8, yOffset+210-8, false);

draw_set_color(c_white);
if (talking != noone) draw_sprite(talking, 0, 15+8+105, yOffset+8+105)
draw_text(talking == noone ? 15+8+20 : 15+8+20+210, yOffset+8+20, drawableText);

