//Check if in player_open_state
if (Player_ghost.state == player_open_state) {
	//Assign some varibles
	inst = Player_ghost.inst
	obj = Player_ghost.obj;
	
	//Check what to draw
	switch (obj) {
		default:
	
		break;
	
		case "Chest":
			state = draw_GUI_chest;
		break;
	}
}