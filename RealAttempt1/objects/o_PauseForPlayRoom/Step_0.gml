// goto pause screen
if keyboard_check_pressed(vk_escape){

	global.roomfrom = room;	
	room_persistent=true;
	room_goto(r_pause);
}


