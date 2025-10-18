y +=2;

if(place_meeting(x,y,obj_player)&&done ==false){
	done = true;
	create_textbox(text_id);
}

if(y>room_height){instance_destroy();}