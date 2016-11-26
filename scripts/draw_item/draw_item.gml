///@param name
///@param x
///@param y

//Make the arguments varibles
var name = argument0;
var xpos = argument1;
var ypos = argument2;

//Switch on the name
switch (obj) {
			case "Gold Key":
				obj_to_draw = spr_key_gold;
			break;
					
			case "":
				
			break;
					
			case "Silver Key":
				obj_to_draw = spr_key_silver;
			break;
					
		}
		//Draw the item
		draw_sprite_ext(obj_to_draw, 0, xpos, view_hport[0]/2, scale-0.2, scale-0.2, 0, c_white, 1);
		