/// @description Insert description here
draw_sprite(sEnemyHealthBarBorderBr,0,x,y-5);
draw_sprite_stretched(sEnemyHealthBar,0,x,y-5,(hp/e_hp_max) * eHealthBar_width,eHealthBar_height);
draw_sprite(sEnemyHealthBarBorder,0,x,y-5);


