draw_set_font(f_normal);
draw_set_color(c_white);

if (global.seconds<10) && (global.mins <10){
	draw_text(x,y,"0"+string(global.mins)+":0"+string(global.seconds));
}
else if (global.seconds>=10) && (global.mins >=10){
	draw_text(x,y,string(global.mins+":"+global.seconds));
}else if (global.seconds<10) && (global.mins >=10){
	draw_text(x,yprevious,string(global.mins)+":0"+string(global.seconds));
}else if (global.seconds>=10) && (global.mins <10){
	draw_text(x,y,"0"+string(global.mins)+":"+string(global.seconds));
}









