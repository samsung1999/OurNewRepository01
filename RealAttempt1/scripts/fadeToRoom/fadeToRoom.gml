var _room= argument[0];
var _dur = argument[1];
var _color = argument[2];


//create
var _inst = instance_create_depth(0,0,0,o_fade2)

//set properties
with (_inst){
	target_room = _room;
	duration=_dur;
	color = _color;
}