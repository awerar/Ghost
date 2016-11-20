switch (state) {
	default:
	
	break;
	
	case player_open_state:
		//Draw the chest
		draw_sprite_ext(spr_GUI_chest, 0, view_wport[0]/2, view_hport[0]/2, scale, scale, 0, c_white, 1);
		
		//Draw the chests inside
		if (array_length_1d(inst.items) > 0) {
			for (i =0; i<array_length_1d(inst.items); i++) {
				switch (inst.items[i]) {
					case "Gold Key":
						obj_to_draw = spr_key_gold;
					break;
					
					case "none":
						continue;
					break;
					
					case "Silver Key":
						obj_to_draw = spr_key_silver;
					break;
					
				}
				//Draw the item
				draw_sprite_ext(obj_to_draw, 0, view_wport[0]/2 + (i-2)*(38*scale), view_hport[0]/2, scale-0.2, scale-0.2, 0, c_white, 1);
			}
		}
	break;
}