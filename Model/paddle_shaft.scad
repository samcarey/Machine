include <parameters.scad>;

module paddle_shaft(){
	cylinder(r = paddle_shaft_r, h = paddle_shaft_h, center = true);
}

paddle_shaft();