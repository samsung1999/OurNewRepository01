draw_set_font(f_scroll);
draw_set_color(c_red);

draw_text(x,y,"You Survived "+string(global.mins)+" mins "+string(global.seconds)+" seconds"); 

if(newWinner ==1){

//draw a new highscore message
		draw_set_font(f_scroll);
        draw_set_color(c_red);
    draw_text(x,y+60,"Congrats !! You are our new Champion!!!");
	
}
draw_set_font(f_scroll);
draw_set_color(c_red);	
draw_text(74,623,"Enter: Return Menu");

draw_set_font(f_normal);
draw_set_color(c_white);

