//Pause Control
if obj_control.Pause = true
{
	image_speed = 0;
	Hsp = 0;
	Vsp = 0;
	exit;
}

//Animation Of Direction Control
event_inherited();

if Action != "Dead"
{
	switch(Direction)
	{
		case 0:
			image_angle = 0;
			image_xscale = 1;
			Hsp = Speed;
			Vsp = 0;
		break;
	
		case 90:
			image_angle = 90*image_xscale;
			Vsp = -Speed;
			Hsp = 0;
		break;
	
		case 180:
			image_angle = 0;
			image_xscale = -1;
			Hsp = -Speed;
			Vsp = 0;
		break;
	
		case 270:
			image_angle = -90*image_xscale;
			Vsp = Speed;
			Hsp = 0;
		break;
	}
}