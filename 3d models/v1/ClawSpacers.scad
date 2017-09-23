difference() {
    // Spacer body
    rotate([90,0,0]) cylinder(d=20,h=4, center=true);
    
    // Shaft hole
    scale([12,25,7]) cube(1,1,1, center=true);
    
    // Top shave
    translate([0,0,-10]) scale([24,25,7]) cube(1,1,1, center=true);
    
    // Bottom shave
    translate([0,0,10]) scale([24,25,7]) cube(1,1,1, center=true);
}