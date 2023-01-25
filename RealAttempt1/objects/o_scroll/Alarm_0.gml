if(!instance_exists(o_fade)){
		var fade=instance_create_layer(x,y,"fade",o_fade);
		with(fade)
		{
			//instruction for a fade out
			fadeout = true;
			a=0;
			target_room=r_menu;
		}
	}




