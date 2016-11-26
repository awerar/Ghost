//If the player is opening something, Do some code
if (Player_ghost.state = player_open_state) {
	script_execute(state);
	
	//Draw the inventory
	draw_GUI_inventory();
}

//If the player not is opening anything, display hotbar
if (Player_ghost.state != player_open_state) {
	draw_GUI_hotbar();
} else {
	draw_GUI_hotbar_idle();
}