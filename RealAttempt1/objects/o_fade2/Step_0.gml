/// @description Insert description here
// You can write your code in this editor

if(state==0){
	timer++;
	
	//change room
	if(timer >=duration){
		room_goto(target_room);
		
		//SET STATE
		state=1;
	}
}
//exit state
else if(state==1){
	timer--;
	
	//destroy
	if(timer<=0){
		instance_destroy();
	}
}

//set alpha
alpha = timer / duration;
