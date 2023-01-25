//move
	xspd = lengthdir_x(spd,dir);
	yspd = lengthdir_y(spd,dir);
	
	x += xspd;
	y += yspd;
	
	//collision
		//destroy
			if destroy == true
				{
					instance_destroy();	
				}
	
	if place_meeting(x, y, oSolidWall)
	{
		instance_destroy();
	}
	
	//bullet out of range
	if point_distance(xstart,ystart,x,y) > maxDist
	{
		destroy = true;	
	}
	
	
