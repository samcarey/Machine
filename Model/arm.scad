
include <paddle_gear.scad>
include <paddle_shaft.scad>
include <paddle.scad>

paddle_upper_declination = 45;

module arm(reverse){
	rotate([0,90,0])
		paddle_gear();
	translate([paddle_shaft_h/2,0,0])
		rotate([0,90,0])
			paddle_shaft();
	translate([paddle_shaft_h/2,0,0]){
		if(reverse){
			mirror([0,1,0])
				rotate([-paddle_upper_declination,0,0])
					paddle();
		}else{
			rotate([-paddle_upper_declination,0,0])
				paddle();
		}
	}
}