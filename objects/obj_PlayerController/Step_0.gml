if (canMove) {
	//1 SI LA TOUCHE EST ENFONCEE, SINON 0
	var left = keyboard_check(vk_left);
	var right = keyboard_check(vk_right);
	var up = keyboard_check(vk_up);
	var down = keyboard_check(vk_down);
	
	//RIGHT : 1
	//LEFT : -1
	//UP : -1
	//DOWN : 1
	var xDir = right - left;
	var yDir = down - up;
	
	//ON APPLIQUE LA VITESSE EN FONCTION DES INPUTS
	var xSpd = xDir*baseSpd;
	var ySpd = yDir*baseSpd;
	
	with (target) {
		//COLLISION HORIZONTALE
		if ((sign(xSpd) == 1 && !place_meeting(x+xSpd, y, obj_Solid)) || (sign(xSpd) == -1 && !place_meeting(x+xSpd, y, obj_Solid))) {
			x+=xSpd;
		}
	
		//COLLISION VERTICALE
		if ((sign(ySpd) == 1 && !place_meeting(x, ySpd+y, obj_Solid)) || (sign(ySpd) == -1 && !place_meeting(x, y+ySpd, obj_Solid))) {
			y+=ySpd;
		}
	}
}
