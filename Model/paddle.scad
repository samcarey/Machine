include <paddle_upper.scad>
paddle_upper_l = 75;
paddle_upper_t = 3;
paddle_upper_w = 15;
paddle_bar_h = 100;
paddle_bar_r = 10;
module paddle(){
	translate([-paddle_bar_h/2,paddle_upper_l/2,0])
		paddle_upper();
	translate([paddle_bar_h/2,paddle_upper_l/2,0])
		mirror([1,0,0])
			paddle_upper();
}

//paddle();