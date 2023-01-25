x = owner.x;
y = owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oHero))
{
	if(oHero.x < x) image_yscale = -image_yscale;
	if(point_distance(oHero.x,oHero.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oHero.x,oHero.y);
		countdown--;
		if(countdown < 0)
		{
			countdown = countdownrate;	
			
			with(instance_create_layer(x,y,"Gun",oEnemyBullet))
			{
				speed = 5;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction;
				
			}
			
		}
		
	}
}