enum heart_states{
	HAPPY,
	DEFEATED,
	DEAD,
	REFUSED,
}

sprites[heart_states.HAPPY] = spr_happy_heart;
sprites[heart_states.REFUSED] = spr_refused_heart;
sprites[heart_states.DEFEATED] = spr_defeated_heart;
sprites[heart_states.DEAD] = spr_dead_heart;
defeated= false;

state_index =heart_states.HAPPY;

get_defeated = function() {
	sprite_index = sprites[heart_states.DEFEATED];
	state_index = heart_states.DEAD;
}

get_revived = function() {
	sprite_index = sprites[heart_states.REFUSED];
	state_index = heart_states.HAPPY;
    
}