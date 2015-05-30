include <paddle_bar.scad>

upper_length_resolution = 12;
hook_w = 6;
hook_t = 3;
hook_gap = 0.1;
shell = 2.5;
groove = 3;

module paddle_upper(){

	l = 75;
	t = 8;
	w = 15;
	notches = round((l-hook_t-shell*2)/upper_length_resolution-0.5);

	difference(){
		cube([t, l, w], center = true);
		cube([t-shell*2, l+1, w-shell*2], center = true);
		translate([-t/2,0,0])
			cube([t, l+1, groove], center = true);
		translate([-t/2,+l/2-hook_t/2-shell,0])
			for(i = [0:notches]){
				translate([0,-upper_length_resolution*i,0])
					cube([t+1, hook_t+hook_gap, hook_w+hook_gap], center = true);
			}
	}
}

//paddle_upper();