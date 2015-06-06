include <forearm.scad>;

pos1 = 1;
pos2 = 0;
wrist_angle = 45;
module side(){
	paddle_upper();
	translate([0,upper_length_resolution/2+upper_length_resolution*pos1,0]){ 
		mirror([1,0,0]){
			forearm(true);
			translate([forearm_t+slide_gap,forearm_l/2,0]){
				rotate([-wrist_angle,0,0]){
					lower_forearm(pos2);
				}
			}
		}
	}
}

//side();