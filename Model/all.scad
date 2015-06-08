include <parameters.scad>;
use <arm.scad>;
use <link_gear.scad>;
use <book1.scad>;

paddle_gear_span = link_gear_r+(link_gear_r+paddle_gear_r)*cos(paddle_gear_elivation);
paddle_gear_height = (link_gear_r+paddle_gear_r)*sin(paddle_gear_elivation);

jack_up = forearm_l*3 - (link_gear_r+paddle_gear_r);

module all(){
	$fn = 20;
	translate([0,-link_gear_r,0])
		rotate([0,90,0])
			link_gear();
	translate([0,link_gear_r,0])
		rotate([0,90,0])
			link_gear();

	translate([0,paddle_gear_span,paddle_gear_height])
		arm(false);
	translate([0,-paddle_gear_span,paddle_gear_height])
		arm(true);

	translate([paddle_shaft_h/2,0,-link_gear_r-jack_up])
		book();
}

all();