switch (state) {
	default:
	
	break;
	
	case player_open_state:
		//Draw the chest
		draw_sprite_ext(spr_GUI_chest, 0, view_wport[0]/2, view_hport[0]/2, 3.5, 3.5, 0, c_white, 1);
	break;
}