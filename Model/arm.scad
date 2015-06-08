include <parameters.scad>;
use <paddle_gear.scad>;
use <paddle_shaft.scad>;
use <paddle.scad>;

module arm(reverse){
	rotate([0,90,0])
		paddle_gear();
	translate([paddle_shaft_h/2,0,0])
		rotate([0,90,0])
			paddle_shaft();

	translate([paddle_shaft_h/2,0,0]){
		if(reverse){
			mirror([0,1,0])
				rotate([-paddle_upper_declination-declination_offset,0,0])
					paddle(true);
		}else{
			rotate([-paddle_upper_declination+declination_offset,0,0])
				paddle(false);
		}
	}

}

arm();