///@param name
///@param x
///@param y
///@param scalex
///@param scaley

//Make the arguments varibles
var name = argument0;
var xpos = argument1;
var ypos = argument2;
var scalex = argument3;
var scaley = argument4;


//Switch on the name
switch (name) {
			case "Gold Key":
				obj_to_draw = spr_key_gold;
			break;
					
			case "":
				exit;
			break;
			
			case "none":
				exit;
			break;
			
			default:
				obj_to_draw = spr_missing_texture;
			break;
					
			case "Silver Key":
				obj_to_draw = spr_key_silver;
			break;
					
		}
//Draw the item
draw_sprite_ext(obj_to_draw, 0, xpos, ypos, scalex, scaley, 0, c_white, 1);
		