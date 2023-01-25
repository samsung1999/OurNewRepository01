
//return to game

if keyboard_check_pressed(vk_escape){
	room_goto(global.roomfrom);
}

var up, down,accept,back;

up     	= keyboard_check_pressed(vk_up) ;
down	 =keyboard_check_pressed(vk_down) 
accept	 =keyboard_check_pressed(vk_enter)
//back	 =keyboard_check_pressed(ord("esc")) 


if up and image_index > 0 {
	image_index--;
}

if down and image_index < image_number-1 {
	image_index++;
}
if image_index = 3 and accept{
	game_end();
}

if image_index = 2 and accept{
	instance_create_layer(x,y,"instances",o_PauseReturnMainMenu);
	room_goto(r_menu);
}

if image_index = 0 and accept{
	room_goto(global.roomfrom);
}