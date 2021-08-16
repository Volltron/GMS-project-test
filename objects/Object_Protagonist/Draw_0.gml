/// @description Insert description here
// You can write your code in this editor
if(hInput != 0 || vInput !=0){
	//INCREMENT FRAME FOR ANIMATION
	y_frame += ani_speed/room_speed;

	if(y_frame >= ani_lenght) y_frame = 0;
	
}else{
	y_frame = 0;
}

var x_default = x - x_offset;
var y_default = y - y_offset;

x_frame = dir/90 - 1;
if(x_frame < 0) x_frame = 3;
yhead_frame = x_frame;

//INCREMENT FRAME FOR ANIMATION
y_frame += ani_speed/room_speed;

if(y_frame >= ani_lenght) y_frame = 0;

//DRAW BODY SPRITE 
draw_sprite_part(
	Protagonist_body,
	0,
	floor(x_frame)*Xframe_size,
	floor(y_frame)*Yframe_size,
	Xframe_size,
	Yframe_size,
	x_default,
	y_default);

//DRAW HEAD SPRITE
draw_sprite_part(
	Protagonist_head_2,
	0,
	xhead_frame,
	floor(yhead_frame)*Yframe_size,
	Xframe_size,
	Yframe_size,
	x_default,
	y_default - 15);