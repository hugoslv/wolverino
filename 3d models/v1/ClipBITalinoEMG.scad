difference() {
    // Bottom bracket base
    scale([4,34,5]) cube(1,1,1,center=true);
    
    // PCB craddle
    translate([0,0,1.25]) scale([4,28.5,2.5]) cube(1,1,1,center=true);
}

translate([0,0,8]) rotate([180,0,0]) difference() {
    // Top bracket base
    translate([0,.5,0]) scale([4,35,5]) cube(1,1,1,center=true);
    
    // PCB craddle
    translate([0,0,1.25]) scale([4,28.5,2.5]) cube(1,1,1,center=true);
}

// PCB bumper
translate([0,15,4]) scale([4,4,4]) cube(1,1,1,center=true);


difference() {
    // Clip lock
    translate([0,-18,6.5]) scale([4,1,8]) cube(1,1,1,center=true);
}
