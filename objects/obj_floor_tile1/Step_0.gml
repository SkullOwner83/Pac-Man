//Maker Control
if global.Maker = true
{
    scr_maker();
}

//Change Sprite Control
if not place_meeting(x-1,y,obj_floor_tile1) and not place_meeting(x,y-1,obj_floor_tile1) and place_meeting(x+1,y,obj_floor_tile1) and place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 0;
}

if place_meeting(x-1,y,obj_floor_tile1) and not place_meeting(x,y-1,obj_floor_tile1) and place_meeting(x+1,y,obj_floor_tile1) and place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 1;
}

if place_meeting(x-1,y,obj_floor_tile1) and not place_meeting(x,y-1,obj_floor_tile1) and not place_meeting(x+1,y,obj_floor_tile1) and place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 2;
}

if not place_meeting(x-1,y,obj_floor_tile1) and place_meeting(x,y-1,obj_floor_tile1) and place_meeting(x+1,y,obj_floor_tile1) and place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 3;
}

if place_meeting(x-1,y,obj_floor_tile1) and place_meeting(x,y-1,obj_floor_tile1) and place_meeting(x+1,y,obj_floor_tile1) and place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 4;
}

if place_meeting(x-1,y,obj_floor_tile1) and place_meeting(x,y-1,obj_floor_tile1) and not place_meeting(x+1,y,obj_floor_tile1) and place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 5;
}

if not place_meeting(x-1,y,obj_floor_tile1) and place_meeting(x,y-1,obj_floor_tile1) and place_meeting(x+1,y,obj_floor_tile1) and not place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 6;
}

if place_meeting(x-1,y,obj_floor_tile1) and place_meeting(x,y-1,obj_floor_tile1) and place_meeting(x+1,y,obj_floor_tile1) and not place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 7;
}

if place_meeting(x-1,y,obj_floor_tile1) and place_meeting(x,y-1,obj_floor_tile1) and not place_meeting(x+1,y,obj_floor_tile1) and not place_meeting(x,y+1,obj_floor_tile1)
{
    image_index = 8;
}

