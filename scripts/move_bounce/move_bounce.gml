//@param collision_object

//Set the varible collision_object to argument 1 (collision_object)
var collision_object = argument0;

//Horizontal collisions
if (place_meeting(x+hspd, y, collision_object)) {
	while (!place_meeting(x + sign(hspd), y, collision_object)) {
		x+= sign(hspd);
	}
	hspd = -(hspd/2);
}
x+=hspd;

//Vertical collisions
if (place_meeting(x, y+vspd, collision_object)) {
	while (!place_meeting(x, y+sign(vspd), collision_object)) {
		y+=sign(vspd);
	}
	if (vspd > 0.1) {
		vspd = -(vspd/2);
	} else {
		vspd = 0;
	}
}
y +=vspd;