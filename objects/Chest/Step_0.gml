//Apply gravity
if (!place_meeting(x, y+1, Solid)) {
	vspd += global.grav;
} else {
	vspd = 0;
}

move_bounce(Solid);