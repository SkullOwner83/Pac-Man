//Variables Control
VolGeneral = 30;
VolMusic = 100;
VolSfx = 100;
depth = -250;
i = 0;

//Game Variables
GameMode = "OnePlayer";
PlayerNumber = 1;
Level = 1;
Pause = false;
PowerUp = false;
PowerUpTime = room_speed*10;
LevelBonus = obj_cherry;
BonusAppear = 1000;
Scr0P1 = "00000000";
Scr0P2 = "00000000";
HScr = "00000000";
HighScore = "0";

//Players Variables
for(i = 1; i < 2; i++)
{
	ScoreP[i] = 0;
	LifesP[i] = 3;
	EnemiesBonus[i] = 0;
}

ChrP[1] = obj_pacman;
ChrP[2] = noone;