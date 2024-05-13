//Sprite Control
sprite_index = spr_wall;
image_speed = 0;
depth = -1;

//Draw Wall Control
if not place_meeting(x-1,y-1,obj_block) and not place_meeting(x,y-1,obj_block) and not place_meeting(x+1,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and not place_meeting(x-1,y+1,obj_block) and not place_meeting(x,y+1,obj_block) and not place_meeting(x+1,y+1,obj_block)
{
	image_index = 0;
}

if place_meeting(x-1,y-1,obj_block) and place_meeting(x,y-1,obj_block) and place_meeting(x+1,y-1,obj_block) and place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and place_meeting(x-1,y+1,obj_block) and place_meeting(x,y+1,obj_block) and place_meeting(x+1,y+1,obj_block)
{
	image_index = 1;
}

if not place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 2;	
}

if not place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 3;	
}

if not place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 4;	
}

if not place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 5;	
}

if place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 6;	
}

if place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 7;	
}

if not place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 8;
}

if not place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 9;
}

if place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 10;
}

if place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 11;
}

if place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{
	image_index = 12;
}

if not place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 13;
}

if place_meeting(x,y-1,obj_block) and place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 14;
}

if place_meeting(x,y-1,obj_block) and not place_meeting(x-1,y,obj_block) and place_meeting(x+1,y,obj_block) and place_meeting(x,y+1,obj_block)
{
	image_index = 15;
}

if place_meeting(x-1,y,obj_teleport) or place_meeting(x,y-1,obj_teleport) or place_meeting(x+1,y,obj_teleport) or place_meeting(x,y+1,obj_teleport)
{
	sprite_index = spr_solid_block;
	image_alpha = 0;
}