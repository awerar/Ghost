//Get the input
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var space_pressed = keyboard_check_pressed(vk_space);
var e_pressed = keyboard_check_pressed(ord("E"));

//Make up negative if true
left *=-1;

//Calculate the output
hspd = (left + right) * move_spd;

//If the player is in the air
if (!place_meeting(x, y+1, Solid)) {
	//Apply gravity
	vspd += global.grav;
} else {
	//Check for up key pressed
	if (up) {
		//Jump+
		vspd = -16;
	}	
}

//Check if the player is opening something
if (space_pressed and place_meeting(x,y, Openable)) {
	//Get the id of the opened object 
	inst = instance_place(x, y, Openable);
	
	//Get the object name of the opened object
	obj = inst.type;
	
	//Go to the open state
	state = player_open_state;
}

//Check if the player is opening inventory
if (e_pressed) {
	//Make the "object" opening inventory
	obj = "Inventory";
	
	//Set the state to player_open_state
	state = player_open_state;
}

//Move
move(Solid)