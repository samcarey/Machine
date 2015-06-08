include <parameters.scad>;

module paddle_gear(){
	cylinder(r = paddle_gear_r, h = paddle_gear_h, center = true);
}

paddle_gear();