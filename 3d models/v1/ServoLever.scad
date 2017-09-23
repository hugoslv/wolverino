difference(){
    // Servo lever base
    scale([10,105,2]) cube(1,1,1, center=true);
    
    margin = 47.5;
    // Servo screwing hole
    translate([0,-margin,0]) cylinder(d=8,h=10, center=true);
    
    // Claw pulling hook
    translate([0,margin,0]) cylinder(d=4,h=10, center=true);
    
    // Servo lever fasteners
    translate([0,-margin+9,0]) cylinder(d=2,h=10, center=true);
    translate([0,-margin+11.5,0]) cylinder(d=2,h=10, center=true);
    translate([0,-margin+14,0]) cylinder(d=2,h=10, center=true);
    translate([0,-margin+16.5,0]) cylinder(d=2,h=10, center=true);
}

