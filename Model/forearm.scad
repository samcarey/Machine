include <paddle_upper.scad>

slide_gap = 0.1;
forearm_w = paddle_upper_w-shell*2-slide_gap*2;
wrist_joint_outer = forearm_w/2;
wrist_joint_inner = wrist_joint_outer/3;

forearm_t = paddle_upper_t-shell*2-slide_gap*2;
forearm_l = paddle_upper_l+wrist_joint_outer;

bolt_r = wrist_joint_inner-slide_gap;
bolt_h = forearm_t*2+slide_gap;
bolt_groove = bolt_r*0.4;

head_hook = bolt_groove/2-slide_gap*2;
head_r = bolt_r+head_hook;

clip_l = shell*4+hook_t+slide_gap;
clip_h = shell*2+forearm_t;

thumb_hook_h = shell*2;
thumb_hook_t = shell;
thumb_hook_l = shell*3;
hook_h = shell*2+thumb_hook_h;

module bolt(){
	module slug(){
		rotate([0,90,0])
			cylinder(h = bolt_h, r = bolt_r, center = true);
		translate([bolt_h/2,0,0])
			difference(){
				sphere(r = head_r, center = true);
				translate([-head_r,0,0])
					cube([head_r*2,head_r*2,head_r*2], center = true);
				translate([0,head_r+bolt_r,0])
					cube([head_r*2,head_r*2,head_r*2], center = true);
				translate([0,-head_r-bolt_r,0])
					cube([head_r*2,head_r*2,head_r*2], center = true);
		}
	}
	difference(){
		slug();
		translate([bolt_h*0.5,0,0])
				cube([bolt_h,bolt_r*2+0.1,bolt_groove],center = true);
	}
}

module clip(){
	cube([clip_h ,forearm_t,groove-slide_gap], center = true);
	translate([clip_h/2-shell/2,-clip_l/2,0]){
		cube([shell,clip_l,groove-slide_gap], center = true);
		translate([hook_h/2-shell,-clip_l/2,0]){
			cube([hook_h,hook_t-slide_gap,hook_w-slide_gap],center = true);
			translate([hook_h/2,-thumb_hook_l/2+hook_t/2,0])
				cube([thumb_hook_t,thumb_hook_l,hook_w],center = true);
		}
	}
}

module forearm(bolt){
	module slug(){
		cube([forearm_t, forearm_l, forearm_w], center = true);
		translate([0,forearm_l/2,0]){
			rotate([0,90,0])
				cylinder(h = forearm_t, r = wrist_joint_outer, center = true);
		}
	}
	if(bolt){
		slug();
		translate([0,forearm_l/2,0]){
			translate([bolt_h/4,0,0]){
				bolt();
			}
		}
	}else{
		difference(){
			slug();
			translate([0,forearm_l/2,0]){
				translate([bolt_h/4,0,0]){
					bolt();
				}
			}
		}
		
	}

	translate([-forearm_t/2+clip_h/2,-forearm_l/2+clip_l+thumb_hook_l])
		clip();
}

module lower_forearm(pos2){
	translate([0,forearm_l/2,0]){
		mirror([0,1,0]){
			forearm(false);
			mirror([1,0,0])
					translate([0,-upper_length_resolution/2-upper_length_resolution*pos2,0])
						paddle_upper();
		}
	}
}

//lower_forearm(1);
//forearm(true);


