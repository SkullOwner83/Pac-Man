//Draw Game Information Control
if instance_exists(obj_player)
{
	var xCenter = room_width/2;
	draw_set_color(c_white);
	draw_set_font(fnt_level);
	draw_set_halign(fa_right);
	
	//Draw Score
	var Scr0P1Cut = string_copy(Scr0P1,0,string_length(Scr0P1)-string_length(ScoreP[1]));
	draw_text(xCenter-140,4,string(Scr0P1Cut)+string(ScoreP[1])+" P1");
	
	if GameMode = "OnePlayer"
	{
		draw_set_halign(fa_left);
		var HScrCut = string_copy(HScr,0,string_length(HScr)-string_length(HighScore));
		draw_text(xCenter+152,4,"HS "+string(HScrCut));
	}
	
	if GameMode = "TwoPlayers"
	{
		draw_set_halign(fa_left);
		var Scr0P2Cut = string_copy(Scr0P2,0,string_length(Scr0P2)-string_length(ScoreP[2]));
		draw_text(xCenter-140,4,"P2 "+string(Scr0P2Cut)+string(ScoreP[2]));
	}

	draw_set_halign(fa_center);
	draw_text(xCenter,4,"Level "+string(Level));
}