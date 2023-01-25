if(global.countup==true)
{
	global.seconds+=1/30;
	
	
}
if (global.seconds<60)&& (global.seconds>59.9){
	global.seconds =0;
	global.mins+=1;
}



