include <standard.scad>

rotate([90,10.65,0]) difference() {
    // Overall claw shape
    chain_hull(){
        translate([0,2,1.5]) cylinder(d=2,h=1);
        translate([120,0,0]) cylinder(d=10,h=6);
        translate([200,20,1]) cylinder(d=20,h=4);
    }
    
    // Left bevel
    rotate([-20,-1,0]) translate([59,0,8]) scale([120,10,10]) cube(1,1,1, center=true);
    
    // Right bevel
    rotate([20,.15,0]) translate([59,3,-4]) scale([120,10,10]) cube(1,1,1, center=true);
    
    // Shaft hole
    translate([197,19,0]) rotate([90,0,15]) scale([12,25,6]) cube(1,1,1, center=true);       
}

