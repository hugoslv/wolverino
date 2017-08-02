difference() {
    // Outer volume
    hull(){
        translate([-22.75,4.5,0]) cylinder(r=5,h=150);
        translate([-22.75,-12.5,0]) cylinder(r=5,h=150);
        translate([22.75,-12.5,0]) cylinder(r=5,h=150);
        translate([22.75,4.5,0]) cylinder(r=5,h=150);
    }
    
    // Inner space
    hull(){
        translate([-21.25,3.5,1]) cylinder(r=5,h=150);
        translate([-21.25,-11.5,1]) cylinder(r=5,h=150);
        translate([21.25,-11.5,1]) cylinder(r=5,h=150);
        translate([21.25,3.5,1]) cylinder(r=5,h=150);
    }
    
    // Middle claw slot
    translate([0,-17.5,0]) scale([9.5,35,3]) cube(1,1,1,center=true);
    
    // Right claw slot
    translate([21.4,-17.5,0]) scale([9.5,35,3]) cube(1,1,1,center=true);
    
    // Left claw slot
    translate([-21.4,-17.5,0]) scale([9.5,35,3]) cube(1,1,1,center=true);
    
    // Servo lever opening
    translate([-24,1,160]) scale([9.5,7.5,200]) cube(1,1,1,center=true);
}

module fillet(r, h) {
    translate([r / 2, r / 2, 0])

        difference() {
            cube([r + 0.01, r + 0.01, h], center = true);

            translate([r/2, r/2, 0])
                cylinder(r = r, h = h + 1, center = true);

        }
}

// Right guide pyramid
difference() {
    translate([10.75,-4,5]) scale([11.75,25,10]) cube(1,1,1,center=true);
    translate([12,0,19]) rotate([0,55,0]) scale([40,35,13]) cube(1,1,1,center=true);
    translate([9,0,19]) rotate([0,-55,0]) scale([40,35,13]) cube(1,1,1,center=true);
}

// Left guide pyramid
difference() {
    translate([-10.7,-4,5]) scale([11.75,25,10]) cube(1,1,1,center=true);
    translate([-12,0,19]) rotate([0,55,0]) scale([40,35,8]) cube(1,1,1,center=true);
    translate([-9,0,19]) rotate([0,-55,0]) scale([40,35,8]) cube(1,1,1,center=true);
}

// Top guide plate
rotate([-15,0,0]) difference() {
    translate([-55/2,0,.5]) scale([55,1,32.5]) cube(1,1,1);
    translate([-55/2,0,33.5]) rotate([0,90,-90]) fillet(15,25);
    translate([55/2,0,33.5]) rotate([0,90,90]) fillet(15,25);
}
