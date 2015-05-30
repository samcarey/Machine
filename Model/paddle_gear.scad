paddle_gear_r = 50;
paddle_gear_h = 15;
paddle_gear_declination = 45;
paddle_gear_span = link_gear_r+(link_gear_r+paddle_gear_r)*cos(paddle_gear_declination);
paddle_gear_depth = (link_gear_r+paddle_gear_r)*sin(paddle_gear_declination);
module paddle_gear(){
	cylinder(r = paddle_gear_r, h = paddle_gear_h, center = true);
}

//paddle_gear();