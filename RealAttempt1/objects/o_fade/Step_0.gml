if(fadeout)//do a fade out and chane room
{
	if(a<1)
	{
	 a+=0.01;
	}
	else
	{
	a=1	;
	room_goto(target_room);
	}
}
else // do a fade in
{
	if(a>0)
	{
		a-=0.05;
	}
	else
	{
		a=0;
		instance_destroy();
	}
}



