draw_set_alpha(a);
//black background to text
//draw_set_color(c_black);
//draw_roundrect_ext(612,40,670,140,100,100,0);
//draw_set_alpha(c_aqua);
//draw_roundrect_ext(10,40,590,140,30,30,1);


//set the font color and alignment
draw_set_font(f_scroll);
draw_set_color(c_green);
//draw_set_halign(fa_center);
//draw_set_halign(fa_middle);







//draw text
draw_text_transformed(x,y,"Movement: W,A,S,D",scale,scale,0);
draw_text_transformed(x,y+40,"Shoot: Left Click",scale,scale,0);
draw_text_transformed(x,y+80,"Q: Weapon swap",scale,scale,0);
draw_text_transformed(x,y+120,"ESC: Pause",scale,scale,0);

draw_set_alpha(1);


draw_set_font(f_normal);
draw_set_color(c_white);



