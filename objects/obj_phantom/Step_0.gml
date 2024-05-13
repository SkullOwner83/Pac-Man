//Move Control
switch(direction)
{
	case 0:
		image_angle = 0;
		image_xscale = 1;
		hspeed = Speed;
		vspeed = 0;
	break;
	
	case 90:
		image_angle = 90*image_xscale;
		vspeed = -Speed;
		hspeed = 0;
	break;
	
	case 180:
		image_angle = 0;
		image_xscale = -1;
		hspeed = -Speed;
		vspeed = 0;
	break;
	
	case 270:
		image_angle = -90*image_xscale;
		vspeed = Speed;
		hspeed = 0;
	break;
}

//Aleatory Move Control
if place_snapped(16,16)
{
    randomize();
    
    if hspeed = 0
    {
        if irandom(3) < 1 and not place_meeting(x-1,y,obj_block)
        {
            direction = 180;
        }
        
        if irandom(3) < 1 and not place_meeting(x+1,y,obj_block)
        {
            direction = 0;
        }
    }
    else
    {
        if irandom(3) < 1 and not place_meeting(x,y-1,obj_block)
        {
            direction = 90;
        }
        
        if irandom(3) < 1 and not place_meeting(x,y+1,obj_block)
        {
            if not place_meeting(x,y+8,obj_backstop)
            {
                direction = 270;
            }
        }
    }
}

//Pacman Collision Control
with(obj_player)
{
	if collision_rectangle(x-4,y-4,x+4,y+4,other,false,false)
	{
		if object_index != obj_player.object_index
		{
			if obj_control.PowerUp = true
		    {
				//Score Multiplier
				if obj_control.EnemiesBonus[Player] < other.Points
				{
					obj_control.EnemiesBonus[Player] = other.Points;
				}
				else
				{
					obj_control.EnemiesBonus[Player] = obj_control.EnemiesBonus[Player]*2;
				}
		
				obj_control.ScoreP[Player] += obj_control.EnemiesBonus[Player];
				var ScoreText = instance_create_depth(other.x,other.y,-250,obj_score_text);
				ScoreText.Points = obj_control.EnemiesBonus[Player];
				instance_destroy(other);
				//other.x = obj_spawner.x;
				//other.y = obj_spawner.y;
				//other.Helpless = false;
		    }
		    else
		    {
				//Player Dead
				if Action != "Dead"
				{
					Action = "Dead";
				}
		    }  
		}
	}
}

//Helpless Control
if Helpless = false
{
	sprite_index = spr_phantom;
}
else
{
	sprite_index = spr_phantom_helpless;
}