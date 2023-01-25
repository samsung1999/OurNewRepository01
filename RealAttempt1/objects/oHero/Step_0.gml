//receive damage
	if place_meeting(x+5, y-5, oDamageHero)
	{
		var _inst = instance_place(x+5, y-5, oDamageHero);		
	
		//take damage from specific instance
		hp -= _inst.damage;
	
		//tell the damage instance to destroy itself
		//_inst.destroy = true;
	}

	if hp <= 0 {instance_destroy()};


// get inputs
rightKey = keyboard_check( ord("D"));
leftKey = keyboard_check( ord("A"));
upKey = keyboard_check( ord("W"));
downKey = keyboard_check( ord("S"));
shootKey = mouse_check_button(mb_left);
swapKeyPressed = keyboard_check_pressed( ord("Q"));


// player movement
#region
	//get the direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction (0,0,_horizKey,_vertKey);
	
	//get the x and y speeds
	var _spd = 0;
	var _inputlevel = point_distance(0,0,_horizKey,_vertKey);
	_inputlevel = clamp(_inputlevel,0,1);
	_spd = moveSpd * _inputlevel;
	
	xspd = lengthdir_x(_spd,moveDir);
	yspd = lengthdir_y(_spd,moveDir);
	
	
	//collision
	if place_meeting(x + xspd, y, oSolidWall)
	{
		xspd = 0;
	}
	if place_meeting(x, y+yspd, oSolidWall)
	{
		yspd = 0;
	}
	
	
	
	//move the player
	x += xspd;
	y += yspd;
	
	//depth
	depth = -bbox_bottom;
	#endregion

// player aiming
	centerY = y + centerYOffset;
	
	//aim
	aimDir = point_direction(x, centerY,mouse_x,mouse_y);



//sprite control


	//make sure the player is facing the correct direction
	face = round (aimDir/90);
	if face == 4 { face = 0; };
	
	//animate
	if xspd == 0 && yspd == 0
	{
		image_index = 0;	
	}
	
	//set the player sprite
	mask_index = sprite[3];
	sprite_index = sprite[face];
	
	
//weapon swapping
var _playerWeapons = global.PlayerWeapons;

	//cycle through weapons
	if swapKeyPressed
	{
		//change the selection and wrap around
		selectedWeapon++;
		if selectedWeapon >= array_length(_playerWeapons)
		{
			selectedWeapon = 0;
		}
		
		//set the new weapon
		weapon = _playerWeapons[selectedWeapon];
	}
	
	
	
	
	
//shoot the weapon
	if shootTimer > 0 {shootTimer --;};
	
	if shootKey && shootTimer <= 0
	{
		//reset the timer
		shootTimer = weapon.cooldown;
		//create the bullet
		var _xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
		var _yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir);
		
		var _spread = weapon.spread;
		var _spreadDiv = _spread / max(weapon.bulletNum-1, 1) ;
		
		//create the correct number of bullets
		for(var i = 0; i < weapon.bulletNum; i++ )
		{
			var _bulletInst = instance_create_depth(x + _xOffset, centerY + _yOffset,depth-100,weapon.bulletObj);
		
			//change the bullet's direction
			with(_bulletInst)
			{
				dir = other.aimDir - _spread/2 + _spreadDiv*i;	
			}
		}	
	}
	//restart the game if the player dies
	if(hp <= 0){
		global.countup=false;
		room_goto_next(); 
		
		}
	
	if place_meeting(x, y, oEnemyBullet)
{
	var _inst = instance_place(x, y, oEnemyBullet);		
	
	//take damage from specific instance
	hp -= 10;

	
}