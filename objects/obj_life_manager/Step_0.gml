for(var i=0; i<array_length(corazones); i++){
	var inst = corazones[i];
    
    if (instance_exists(inst)) {
        inst.defeated = ( i>=global.salud);
    }
}