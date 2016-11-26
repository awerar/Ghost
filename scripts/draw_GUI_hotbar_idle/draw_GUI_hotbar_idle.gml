//Draw the solid hotbar frame
draw_sprite_ext(spr_GUI_hotbar_frame, 0, view_wport[0]/2, (view_hport[0]-((sprite_get_height(spr_GUI_hotbar_frame)*scale)/2)) - (4*scale), scale, scale, 0, c_white, 1);

//Draw the transparent inside
for (i = -3; i < 4; i++) {
	draw_sprite_ext(spr_GUI_hotbar_center, 0, view_wport[0]/2 + (i*35*scale) , (view_hport[0]-((sprite_get_height(spr_GUI_hotbar_frame)*scale)/2)) - (4*scale), scale, scale, 0 ,c_white, 0.5)
}