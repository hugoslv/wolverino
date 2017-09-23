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
    
    // Bottom opening
    translate([0,-4,0]) scale([60,40,3]) cube(1,1,1,center=true);
    
    // Servo lever opening
    translate([-24,1,80]) scale([9.5,7.5,200]) cube(1,1,1,center=true);
    
    //translate([0,8.5,13.5+32]) scale([13.5,5.5,25]) cube(1,1,1,center=true);
    
    // Servo mount cut points
    translate([6.5,10,57.5]) rotate([90,0,0]) cylinder(r = 1, h = 10, center = true);
    translate([-6.5,10,57.5]) rotate([90,0,0]) cylinder(r = 1, h = 10, center = true);
    translate([6.5,10,32.5]) rotate([90,0,0]) cylinder(r = 1, h = 10, center = true);
    translate([-6.5,10,32.5]) rotate([90,0,0]) cylinder(r = 1, h = 10, center = true);
    translate([6.5,10,45]) rotate([90,0,0]) cylinder(r = 1, h = 10, center = true);
    translate([-6.5,10,45]) rotate([90,0,0]) cylinder(r = 1, h = 10, center = true);
    
    // Servo lever screwing point
    translate([0,-10,50]) rotate([90,0,0]) cylinder(r = 4, h = 30, center = true);
    
}


module fillet(r, h) {
    translate([r / 2, r / 2, 0])

        difference() {
            cube([r + 0.01, r + 0.01, h], center = true);

            translate([r/2, r/2, 0])
                cylinder(r = r, h = h + 1, center = true);

        }
}
