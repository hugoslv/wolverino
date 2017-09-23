difference() {
    // Bottom bracket base
    scale([4,20,5]) cube(1,1,1,center=true);
    
    // PCB craddle
    translate([0,0,1.25]) scale([4,11.5,2.5]) cube(1,1,1,center=true);
}

translate([0,0,8]) rotate([180,0,0]) difference() {
    // Top bracket base
    translate([0,.5,0]) scale([4,21,5]) cube(1,1,1,center=true);
    
    // PCB craddle
    translate([0,0,1.25]) scale([4,11.5,2.5]) cube(1,1,1,center=true);
}

// PCB bumper
translate([0,8.75,4]) scale([4,2.5,4]) cube(1,1,1,center=true);

// Clip lock
translate([0,-11,6.5]) scale([4,1,8]) cube(1,1,1,center=true);
