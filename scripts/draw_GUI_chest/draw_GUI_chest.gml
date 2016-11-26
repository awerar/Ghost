//Draw the chest
draw_sprite_ext(spr_GUI_chest, 0, view_wport[0]/2, view_hport[0]/2, scale, scale, 0, c_white, 1);
		
//Draw the chests inside
if (array_length_1d(inst.items) > 0) {
	for (i =0; i<array_length_1d(inst.items); i++) {
		draw_item( , view_wport[0]/2 + (i-2)*(38*scale));
	}
}