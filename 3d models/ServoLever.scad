difference(){
    // Servo lever base
    scale([10,125,2]) cube(1,1,1, center=true);
    
    // Servo screwing hole
    translate([0,-57.5,0]) cylinder(d=8,h=10, center=true);
    
    // Claw pulling hook
    translate([0,57.5,0]) cylinder(d=4,h=10, center=true);
    
    // Servo lever fasteners
    translate([0,-57.5+9,0]) cylinder(d=2,h=10, center=true);
    translate([0,-57.5+11.5,0]) cylinder(d=2,h=10, center=true);
    translate([0,-57.5+14,0]) cylinder(d=2,h=10, center=true);
    translate([0,-57.5+16.5,0]) cylinder(d=2,h=10, center=true);
}

