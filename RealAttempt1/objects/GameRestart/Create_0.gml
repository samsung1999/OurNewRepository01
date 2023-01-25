newWinner=0;

if(global.mins*60 + global.seconds) > (global.high_mins*60+global.high_seconds){
	
	
	//set new highscore
	global.high_mins=global.mins;
	global.high_seconds=global.seconds;
	
	newWinner=1;
	  
	
	highscore_save();
	
}




