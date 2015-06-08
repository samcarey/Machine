include <parameters.scad>;

module link_gear(){
	cylinder(r = link_gear_r, h = link_gear_h, center = true);
}

link_gear();
