draw_set_font(f_scroll);
draw_set_color(c_red);

highscores_load();

draw_text(x,y,"Our Champion Survived "+string(global.high_mins)+" mins "+string(global.high_seconds)+" seconds"); 



draw_text(37,796,"ESC: Go Back");


draw_set_font(f_normal);
draw_set_color(c_white);




