
book_l = 8.5*25.4;
book_w = 5*25.4;
book_t = 1.5*25.4;

module book(){

	module half(){
		rotate([40,0,0])
			translate([0,book_w/2,0])
				cube([book_l,book_w,book_t/2],center = true);
	}

	half();
	mirror([0,1,0])
		half();
}

//book();