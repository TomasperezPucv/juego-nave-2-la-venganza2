function rectangle_colissions(x1, y1, w1, h1, other_obj){
	with(other_obj){
		var x2 = x;
        var y2 = y;
        var w2 = width;
        var h2 = height;
		
		if (x1 < x2 + w2 && x1 + w1 > x2 && y1 < y2 + h2 && y1 + h1 > y2) {
            return true;
        }
	
	}
	return false;
}