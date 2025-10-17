function transicionar_a_nivel(_room_id){
	with(instance_create_depth(0,0,-999,obj_warp)){
		target_room = _room_id;
	}
}