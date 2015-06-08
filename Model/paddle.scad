include <parameters.scad>;
use <side.scad>;

module paddle(narrow){
	separation1 = paddle_bar_h-paddle_upper_t-slide_gap*40;
	separation2 = paddle_bar_h+paddle_upper_t+slide_gap*40;
	if (narrow){
		translate([separation1/2,paddle_upper_l/2,0])
			side();
		translate([-separation1/2,paddle_upper_l/2,0])
			mirror([1,0,0])
				side();
	}else{
		translate([-separation2/2,paddle_upper_l/2,0])
			side();
		translate([separation2/2,paddle_upper_l/2,0])
			mirror([1,0,0])
				side();
	}
}

paddle(true);
paddle(false);
