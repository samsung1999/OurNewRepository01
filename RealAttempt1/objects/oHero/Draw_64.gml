/// @description Insert description here
// You can write your code in this editor
draw_sprite(sHeroHealthBarBorderBr,0,hHealthBar_x,hHealthBar_y);
draw_sprite_stretched(sHeroHealthBar,0,hHealthBar_x,hHealthBar_y,(hp/h_hp_max) * hHealthBar_width,hHealthBar_height);
draw_sprite(sHeroHealthBarBorder,0,hHealthBar_x,hHealthBar_y);
