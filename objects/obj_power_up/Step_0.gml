//Animation Control
image_speed = 0.5;

//Pacman Collision
with(obj_player)
{
	if collision_rectangle(x-8,y-8,x+8,y+8,other,false,false)
	{
		if object_index != obj_player.object_index
		{
			if Action != "Dead"
			{
				if not instance_exists(obj_control.LevelBonus)
				{
					obj_control.BonusAppear -= other.Points;	
				}
				
				obj_control.ScoreP[Player] += other.Points;
			    obj_control.PowerUp = true;
			    obj_control.i = obj_control.PowerUpTime;
				obj_phantom.Helpless = true;
			    instance_destroy(other);
			}
		}
	}
}