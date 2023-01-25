
//receive damage
if place_meeting(x, y, oDamageEnemy)
{
	var _inst = instance_place(x, y, oDamageEnemy);		
	
	//take damage from specific instance
	hp -= _inst.damage;
	
	//tell the damage instance to destroy itself
	_inst.destroy = true;
}

if hp <= 0 
{
	instance_destroy();
	global.EnemiesKCount += 1;
	with(mygun) instance_destroy();
}

//chase the hero if it exist, it not dead
if(instance_exists(oHero))
{
	x = x + lengthdir_x(1.5, point_direction(x,y,oHero.x,oHero.y));
	y = y + lengthdir_y(1.5, point_direction(x,y,oHero.x,oHero.y));
}

if(place_meeting(x,y,oSolidWall)){
	x = xprevious;
	y = yprevious;	
}


