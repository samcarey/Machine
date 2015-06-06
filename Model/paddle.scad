include <side.scad>;

paddle_bar_h = 100;
paddle_bar_r = 10;
module paddle(){
	translate([-paddle_bar_h/2,paddle_upper_l/2,0])
		side();
	translate([paddle_bar_h/2,paddle_upper_l/2,0])
		mirror([1,0,0])
			side();
}

//paddle();