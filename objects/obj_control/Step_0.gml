//Input Control
scr_input();

//Game Control
if instance_exists(obj_player)
{
	//Create Player Control
	if PlayerNumber = 1
	{
		if not instance_exists(ChrP[1])
		{
			var P1 = instance_create_depth(obj_player.x,obj_player.y,-5,ChrP[1]);
			P1.Direction = 180;
			P1.Player = 1;
		}
	}
	
	//Pause Control
	if instance_exists(obj_pacman)
	{
		if keyboard_check_pressed(vk_escape)
		{
			if Pause = false
			{
				Pause = true;
			}
			else
			{
				Pause = false;
			}
		}
	}
	
	if Pause = false
	{
		//Power Up Control
		if PowerUp = true
		{
		    i -= 1; 
    
		    if i <= 1
		    {
				for(j = 1; j < 2; j++)
				{
					EnemiesBonus[j]	= 0;
				}
			
				obj_phantom.Helpless = false;
		        PowerUp = false;
		        i = 0;
		    }
		}
	
		//Bonus Control
		if BonusAppear <= 0
		{
			BonusAppear = 1000;
			instance_create_depth(obj_bonus.x,obj_bonus.y,-3,LevelBonus);	
		}
	}
}

//Level Change Control
if keyboard_check_pressed(vk_left) and room_exists(room_previous(room))
{
    room_goto_previous();
}

if keyboard_check_pressed(vk_right) and room_exists(room_next(room))
{
    room_goto_next();
}

if keyboard_check_pressed(vk_enter)
{
	if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}