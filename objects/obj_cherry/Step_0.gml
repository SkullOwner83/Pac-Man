//Destroy Control
if TimeLeft > 0
{
	TimeLeft -= 1;
}
else
{
	instance_destroy();	
}

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
				var ScoreText = instance_create_depth(other.x,other.y,-250,obj_score_text);
				ScoreText.Points = other.Points;
				instance_destroy(other);
			}
		}
	}
}