//Teletransport Player Conotrol
with(obj_pacman)
{
	if Direction = other.Entry
	{
		if x = other.x and y = other.y
		{
			x = other.xTelePort;
			y = other.yTelePort;
		}
	}
}

with(obj_phantom)
{
	if direction = other.Entry
	{
		if x = other.x and y = other.y
		{
			x = other.xTelePort;
			y = other.yTelePort;
		}
	}
}