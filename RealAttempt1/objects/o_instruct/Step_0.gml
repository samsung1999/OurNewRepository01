if(showtext=false)
{
	if(a>0)
	{
		a-=0.02;
	}else
	{
		instance_destroy();
	}
}

//pluse text
if(grow)
{
	if(scale<1.08) scale+=0.002 else grow=false;
}
else
{
	if(scale>0.9) scale-=0.002 else grow=true;
}



