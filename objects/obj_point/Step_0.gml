//Pacman Collision
with(obj_player)
{
	if collision_rectangle(x-8,y-8,x+8,y+8,other,false,false)
	{
		if object_index != obj_player.object_index
		{
			if Action != "Dead"
			{		
				if EateSound = 1 and not audio_is_playing(snd_pacman_eat2)
				{
					scr_play_sound(snd_pacman_eat1,10,false,obj_control.VolSfx);
				}
		
				if EateSound = 2 and not audio_is_playing(snd_pacman_eat1)
				{
					scr_play_sound(snd_pacman_eat2,10,false,obj_control.VolSfx);
				}
				
				if not instance_exists(obj_control.LevelBonus)
				{
					obj_control.BonusAppear -= other.Points;	
				}
			
				obj_control.ScoreP[Player] += other.Points;
				instance_destroy(other);
			}
		}
	}
}