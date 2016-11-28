//Draw the solid hotbar frame
draw_sprite_ext(spr_GUI_hotbar_frame, 0, view_wport[0]/2, hotbar_y, scale, scale, 0, c_white, 1);

//Draw the transparent inside
for (i = -3; i < 4; i++) {
	draw_sprite_ext(spr_GUI_hotbar_center, 0, view_wport[0]/2 + (i*35*scale) , hotbar_y, scale, scale, 0 ,c_white, 0.5)
	
	//Draw the item
	draw_item(inventory[i+3, inventory_height-1], view_wport[0]/2 + (i*35*scale), hotbar_y, scale -0.2, scale-0.2);
}