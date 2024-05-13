//Collision Control
move_contact_solid(direction,12);

if not place_free(x,y-1) and not place_free(x,y+1)
{
    hspeed = -hspeed;
}

if not place_free(x-1,y) and not place_free(x+1,y)
{
    vspeed = -vspeed;
}

//Aleatory Move Control
if place_snapped(16,16)
{
    randomize();
    
    if hspeed = 0
    {
        if irandom(3) < 1 and place_free(x-1,y)
        {
            direction = 180;
        }
        
        if irandom(3) < 1 and place_free(x+1,y)
        {
            direction = 0;
        }
    }
    else
    {
        if irandom(3) < 1 and place_free(x,y-1)
        {
            direction = 90;
        }
        
        if irandom(3) < 1 and place_free(x,y+1)
        {
            if not place_meeting(x,y+8,obj_backstop)
            {
                direction = 270;
            }
        }
    }
}