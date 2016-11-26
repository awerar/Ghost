//Assign the scale
scale = 3.5;

//Assign the object to draw
obj_to_draw = "";

//Assign the inventory width and height
inventory_width = 7;
inventory_height = 5;

//Define the inventory
for (i = 0; i < inventory_width; i++) {
	for (ii = 0; ii < inventory_height; ii++) {
		inventory[i, ii] = "none";
	}
}

//Define whats in the hand
holding = "none";