//Get the input
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var space_pressed = keyboard_check_pressed(vk_space);

//Make up negative if true
left *=-1;

//Calculate the output
hspd = (left + right) * move_spd;

//If the player is in the air
if (!place_meeting(x, y+1, Solid)) {
	//Apply gravity
	vspd += grav;
} else {
	//Check for up key pressed
	if (up) {
		//Jump+
		vspd = -16;
	}	
}

//Check if the player is opening something
if (space_pressed and place_meeting(x,y, Openable)) {
	state = player_open_state;
	inst = instance_place(x, y, Chest);
}

//Move
move(Solid)