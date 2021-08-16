/// @description Insert description here

//Movement (with a bunch of math)
hInput = keyboard_check(ord("D")) -  keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) -  keyboard_check(ord("W"));

if(hInput != 0 || vInput !=0){
	dir = point_direction(0,0,hInput,vInput);
	 
	MoveX = lengthdir_x(spd, dir);
	MoveY = lengthdir_y(spd, dir);

	x += MoveX;
	y += MoveY;


	//Set sprite
	/*switch(dir){
		case 0: sprite_index = Protagonist_right; break;
		case 45: sprite_index = Protagonist_right; break;
		case 90: sprite_index = Protagonist_back; break;
		case 135: sprite_index = Protagonist_left; break;
		case 180: sprite_index = Protagonist_left; break;
		case 225: sprite_index = Protagonist_left; break;
		case 270: sprite_index = Protagonist_front; break;
		case 315: sprite_index = Protagonist_right; break;
	}*/
}else{
	image_index = 0;
}