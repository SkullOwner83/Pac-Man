function scr_input()
{
	//Input Buttons Control
	if gamepad_is_connected(0)
	{
	    gamepad_set_axis_deadzone(0,0.5);
	    LeftBtn = gamepad_axis_value(0,gp_axislh) < 0;
	    RightBtn = gamepad_axis_value(0,gp_axislh) > 0;
	    UpBtn = gamepad_axis_value(0,gp_axislv) < 0;
	    DownBtn = gamepad_axis_value(0,gp_axislv) > 0;
	}
	else
	{
	    LeftBtn = keyboard_check(ord("A"));
	    RightBtn = keyboard_check(ord("D"));
	    UpBtn = keyboard_check(ord("W"));
	    DownBtn = keyboard_check(ord("S"));
	}
    
	HorizontalMovement = RightBtn - LeftBtn;
	VerticalMovement = DownBtn - UpBtn;
}
