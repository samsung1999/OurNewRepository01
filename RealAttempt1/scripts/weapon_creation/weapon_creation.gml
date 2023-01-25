//constructor template for weapons
function create_weapon(_sprite, _weaponLength, _bulletObj, _cooldown, _bulletNum = 1, _spread =0) constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
}


//players weapon inventory
global.PlayerWeapons = array_create(0);



//weapons

global.WeaponList = {

	gun : new create_weapon(
	sGun,
	sprite_get_bbox_right(sGun) - sprite_get_xoffset(sGun),
	oBullet,
	9,
	1,
	0,
	),
	
	gun2 : new create_weapon(
	sGun2,
	sprite_get_bbox_right(sGun2) - sprite_get_xoffset(sGun2),
	oBullet2,
	4,
	1,
	0,
	),
	
	gun3 : new create_weapon(
	sGun3,
	sprite_get_bbox_right(sGun3) - sprite_get_xoffset(sGun3),
	oBullet3,
	13,
	10,
	90
	)
	
	}











//gun = new create_weapon(
//	sGun,
//	sprite_get_bbox_right(sGun) - sprite_get_xoffset(sGun),
//	oBullet,
//	9
//	)
	
//gun2 = new create_weapon(
//	sGun2,
//	sprite_get_bbox_right(sGun2) - sprite_get_xoffset(sGun2),
//	oBullet2,
//	4
//	)
