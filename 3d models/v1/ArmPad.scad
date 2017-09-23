difference(){
    scale([52,75,10]) cube(1,1,1);
    translate([0,75-27-5,10-3]) scale([52,27,3]) cube(1,1,1);
    translate([26,80,-75]) rotate([90,0,0]) cylinder(d=160,h=100);
}

translate([52,0,-29+10]) difference(){
    scale([29,75-27-5,29]) cube(1,1,1);
    translate([1.5,0,1.5]) scale([26,52,26]) cube(1,1,1);
}
