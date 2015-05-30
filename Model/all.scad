include <link_gear.scad>;
include <arm.scad>;

module all(){
	translate([0,-link_gear_r,0])
		rotate([0,90,0])
			link_gear();
	translate([0,link_gear_r,0])
		rotate([0,90,0])
			link_gear();

	translate([0,paddle_gear_span,-paddle_gear_depth])
		arm(false);
	translate([0,-paddle_gear_span,-paddle_gear_depth])
		arm(true);
}