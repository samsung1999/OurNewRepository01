/// @description Pause Function
//Disable alpha blending
gpu_set_blendenable(false);

if(pause)
{
	surface_set_target(application_surface);
		if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
		else
		{
			pauseSurf = surface_create(resW, resH);
			buffer_set_surface(pauseSurfBuffer,pauseSurf,0)
		}
	surface_reset_target();
}

if(keyboard_check_pressed(ord("P")))
{
	if(!pause)//pause now
	{
		pause = true;
		
		//deactivate all instances
		instance_deactivate_all(true);
		
		//Capture the game moment
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		//Back up the surface to a buffer
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer,pauseSurf, 0);
		
	}
	//unpause now
	else
	{
		pause = false;
		instance_activate_all();
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		
	}
}

//Enable alpha blending
gpu_set_blendenable(true);

