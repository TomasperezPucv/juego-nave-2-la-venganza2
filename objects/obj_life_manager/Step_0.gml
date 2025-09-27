for(var i=0; i<3-global.salud; i++){
	var inst = corazones[i];
    
    if (instance_exists(inst)) {
        inst.defeated = true 
    }
}