event_inherited();

hp = 10;


// Slimes health bar

	e_hp_max = hp;
	//Declaring Health Bar variables
	eHealthBar_width = 32;
	eHealthBar_height = 5;
	// End of Health Bar variables declaration
	

if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oGun18)
	with(mygun)
	{
		owner = other.id	
	}
	
}
else mygun = noone;