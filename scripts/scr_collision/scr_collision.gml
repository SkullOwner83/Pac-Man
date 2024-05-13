function scr_collision()
{
	//Collision Control
	for(i = 0; i < argument_count; i++)
	{
	    //Horizontal Collision 
	    if place_meeting(x+Hsp,y,argument[i]) or collision_line(x,y,x+Hsp,y,argument[i],false,false)
	    {
	        while(!place_meeting(x+sign(Hsp),y,argument[i]))
	        {
	            x += sign(Hsp);
	        }
        
	        Hsp = 0;
	    }
    
	    x += Hsp;
    
	    //Vertical Collision 
	    if place_meeting(x,y+Vsp,argument[i]) or collision_line(x,y,x,y+Vsp,argument[i],false,false)
	    {
	        while(!place_meeting(x,y+sign(Vsp),argument[i]))
	        {
	            y += sign(Vsp);
	        }
        
	        Vsp = 0;
	    }
		
	    y += Vsp;
	}
}
