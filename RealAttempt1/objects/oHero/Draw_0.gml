//draw the weapon behind the player
	if aimDir >= 0 && aimDir < 180
	{
		draw_my_weapon();
	}

//draw the player
draw_self();

//draw the damage
draw_text(hHealthBar_x+17, hHealthBar_y + 50, "Enemies Killed")
draw_text(hHealthBar_x-5, hHealthBar_y + 50, string(global.EnemiesKCount));


//draw the weapon
	if aimDir >= 180 && aimDir < 360
	{
		draw_my_weapon();
	}

//draw the enemies killed
/*
EnemiesKilledBar_width = 125;
EnemiesKilledBar_x = (2200/2) - (EnemiesKilledBar_width/2);
EnemiesKilledBar_y = ystart - 350;
draw_text(EnemiesKilledBar_x, EnemiesKilledBar_y, string(global.enemies_killed));
*/
