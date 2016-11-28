//If the player is opening something, Do some code
if (Player_ghost.state = player_open_state) {
	script_execute(state);
	
	//Draw the inventory
	draw_GUI_inventory();
}

//Draw the hotbar
draw_GUI_hotbar();
