difference(){
    // Claw shaft
    scale([10,45,5]) cube(1,1,1, center=true);
    
    // Left pull hole
    translate([2.5,-20,0]) cylinder(d=2,h=10, center=true);
    
    // Right pull hole
    translate([2.5,20,0]) cylinder(d=2,h=10, center=true);
}