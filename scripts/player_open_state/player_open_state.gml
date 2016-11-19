//Get input
var escape_released = keyboard_check_released(vk_escape);

//Get the id of GUI layer
var GUI = layer_get_id("GUI")

//Draw the chest GUI
layer_sprite_create(GUI, x, y, spr_GUI_chest);

//Display the contents of the chest
if (array_length_1d(inst.items) > 0) {
	for (var i = 0; i < array_length_1d(inst.items); i++) {
		show_debug_message(inst.items[i]);
	}
}

//Check if move to the next state
if (escape_released) {
	state = player_move_state;
}