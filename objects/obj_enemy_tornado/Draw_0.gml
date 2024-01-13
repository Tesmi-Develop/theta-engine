/// @desc Animation update
var wave_y = sin((current_time + 10) * 0.001) * 12;

draw_sprite_pos(
	image_body.sprite, 
	image_body.subming,
	image_body.x,
	image_body.y + wave_y,
	image_body.x + image_body.width,
	image_body.y + wave_y,
	image_body.x + image_body.width,
	image_body.y + image_body.height,
	image_body.x,
	image_body.y + image_body.height,
	1
);

image_head.x = image_body.x + 64;
image_head.y = image_body.y + 16 + wave_y;
draw_sprite_ext(
	image_head.sprite,
	image_head.subming,
	image_head.x,
	image_head.y,
	image_head.scale_x,
	image_head.scale_y,
	0,
	c_white,
	1
);
