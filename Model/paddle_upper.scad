include <paddle_bar.scad>;

module paddle_upper(){
	notches = round((paddle_upper_l-hook_t-shell*2)/upper_length_resolution-0.5);

	difference(){
		cube([paddle_upper_t, paddle_upper_l, paddle_upper_w], center = true);
		cube([paddle_upper_t-shell*2, paddle_upper_l+1, paddle_upper_w-shell*2], center = true);
		translate([-paddle_upper_t/2,0,0])
			cube([paddle_upper_t, paddle_upper_l+1, groove], center = true);
		translate([-paddle_upper_t/2,+paddle_upper_l/2-hook_t/2-shell,0])
			for(i = [0:notches]){
				translate([0,-upper_length_resolution*i,0])
					cube([paddle_upper_t+1, hook_t+hook_gap, hook_w+hook_gap], center = true);
			}
	}
}

paddle_upper();