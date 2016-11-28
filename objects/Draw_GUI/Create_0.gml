//Assign the scale
scale = 3.5;

//Assign the inventory width and height
inventory_width = 7;
inventory_height = 5;

//Define the hotbar y
hotbar_y =  (view_hport[0]-((sprite_get_height(spr_GUI_hotbar_frame)*scale)/2)) - (4*scale);

//Define the inventory
for (i = 0; i < inventory_width; i++) {
	for (ii = 0; ii < inventory_height; ii++) {
		inventory[i, ii] = "Gold Key";
	}
}

//Define whats in the hand
holding = "none";