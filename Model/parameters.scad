//All parameters

link_gear_r = 25;
link_gear_h = 10;

paddle_gear_r = 20;
paddle_gear_h = 10;

paddle_shaft_r = 5;
paddle_shaft_h = 400;

upper_length_resolution = 8;
hook_w = 5;
hook_t = 2;
hook_gap = 0.1;
shell = 1.5;
groove = 2.5;

paddle_upper_l = 35;
paddle_upper_t = shell*3.2;
paddle_upper_w = 12;

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

pos1 = 1;
pos2 = 0;
wrist_angle = 0;
paddle_upper_declination = 180;
declination_offset = (paddle_upper_w)/(paddle_upper_l*2)*(180/3.1415);

paddle_bar_h = 100;
paddle_bar_r = 10;

paddle_upper_declination = 210;
paddle_gear_elivation = 45;




