module all(){

	link_gear_r = 100;
	link_gear_h = 15;
	module link_gear(){
		rotate([0,90,0])
			cylinder(r = link_gear_r, h = link_gear_h, center = true);
	}
	translate([0,-link_gear_r,0])
		link_gear();
	translate([0,link_gear_r,0])
		link_gear();

	paddle_gear_r = 50;
	paddle_gear_h = 15;
	paddle_gear_declination = 45;
	paddle_gear_span = link_gear_r+(link_gear_r+paddle_gear_r)*cos(paddle_gear_declination);
	paddle_gear_depth = (link_gear_r+paddle_gear_r)*sin(paddle_gear_declination);
	module paddle_gear(){
		rotate([0,90,0])
			cylinder(r = paddle_gear_r, h = paddle_gear_h, center = true);
	}

	paddle_shaft_r = 10;
	paddle_shaft_h = 400;
	module paddle_shaft(){
		rotate([0,90,0])
			cylinder(r = paddle_shaft_r, h = paddle_shaft_h, center = true);
	}

	paddle_upper_l = 75;
	paddle_upper_t = 3;
	paddle_upper_w = 15;
	paddle_upper_declination = 45;
	paddle_bar_h = 100;
	paddle_bar_r = 10;

	module paddle(){
		rotate([-paddle_upper_declination,0,0]){
			translate([-paddle_bar_h/2,paddle_upper_l/2,0])
				cube([paddle_upper_t, paddle_upper_l, paddle_upper_w], center = true);
			translate([paddle_bar_h/2,paddle_upper_l/2,0])
				cube([paddle_upper_t, paddle_upper_l, paddle_upper_w], center = true);
		}
	}

	module arm(reverse){
		paddle_gear();
		translate([paddle_shaft_h/2,0,0])
			paddle_shaft();
		translate([paddle_shaft_h/2,0,0]){
			if(reverse){
				mirror([0,1,0])
					paddle();
			}else{
				paddle();
			}
		}
	}

	translate([0,paddle_gear_span,-paddle_gear_depth])
		arm(false);
	translate([0,-paddle_gear_span,-paddle_gear_depth])
		arm(true);

}