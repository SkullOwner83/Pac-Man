//Input Control
scr_input();
scr_collision(obj_block);

//Pause Control
if obj_control.Pause = true
{
	image_speed = 0;
	Hsp = 0;
	Vsp = 0;
	exit;
}

//Death Control
if Action = "Dead"
{
    sprite_index = spr_pacman_dead;
	Direction = 0;
	DeadTime += 1;
	depth = -3;
    Hsp = 0;
	Vsp = 0;
    
    if DeadTime < 29
    {
        image_index = 0;
        image_speed = 0;
    }
    
	switch(DeadTime)
	{
		case 30:
			scr_play_sound(snd_pacman_dead,10,false,obj_control.VolMusic);
			image_speed = 0.3;
		break;
		case 58:
			image_speed = 0;
		break;
		
		case 90:
			obj_control.LifesP[Player] -= 1;
			room_restart();	
		break;
    }
    
    exit;
}
else
{
	image_speed = ImgSpd;
	
	if Hsp = 0 and Vsp = 0
	{
		image_speed = 0;	
	}
}

//Move Control
if HorizontalMovement = -1 and not place_meeting(x-1,y,obj_block)
{
	if not place_meeting(x-1,y,obj_backstop)
	{
		Direction = 180;
	}
}

if HorizontalMovement = 1 and not place_meeting(x+1,y,obj_block)
{
	if not place_meeting(x+1,y,obj_backstop)
	{
		Direction = 0;
	}
}

if VerticalMovement = -1 and not place_meeting(x,y-1,obj_block)
{
	if not place_meeting(x,y-1,obj_backstop)
	{
		Direction = 90;
	}
}

if VerticalMovement = 1 and not place_meeting(x,y+1,obj_block)
{
	if not place_meeting(x,y+1,obj_backstop)
	{
		Direction = 270;
	}
}

switch(Direction)
{
	case 0:
		Hsp = Speed;
		Vsp = 0;
	break;
	
	case 90:
		Vsp = -Speed;
		Hsp = 0;
	break;
	
	case 180:
		Hsp = -Speed;
		Vsp = 0;
	break;
	
	case 270:
		Vsp = Speed;
		Hsp = 0;
	break;
}