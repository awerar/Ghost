//Get input
var escape_released = keyboard_check_released(vk_escape);

//Check if move to the next state
if (escape_released) {
	state = player_move_state;
}