//Standard library of useful constants and some utility functions.
//Alex English - ProtoParadigm LLC
//Published under the CC BY-SA 4.0 license

IN = 25.4;
PI = 3.14159265359;
PHI = 1.61803398875;
E = 2.71828;
ROOT2 = 1.41421;
ROOT3 = 1.73205;
HEX = 2/ROOT3; //proportion of the radius of a circle inscribed in a hexagon with that of a circle that inscribes a hexagon (diameter or radius of points vs flats on a hexagon)



// Equal divisions of 360 into sections, mainly for use in for loops to iterate a rotation in even divisions. Latin and Greek prefixes both defined so either can be used.
d_bi = [0, 180];
d_duo = d_bi;
d_tri = [0, 120, 240];
d_quad = [0, 90, 180, 270];
d_tetra = d_quad;
d_quint = [0, 72, 144, 216, 288];
d_penta = d_quint;
d_sex = [0, 60, 120, 180, 240, 300];
d_hex = d_sex;
d_sept = [0, 360/7, 360/7*2, 360/7*3, 360/7*4, 360/7*5, 360/7*6]; //expressed as fractions because the numbers are messy
d_hept = d_sept;
d_oct = [0, 45, 90, 135, 180, 225, 270, 315];
d_non = [0, 40, 80, 120, 160, 200, 240, 280, 320];
d_ennea = d_non;
d_dec = [0, 36, 72, 108, 144, 180, 216, 252, 288, 324];
//11 omitted
d_dodec = [0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330];



//chains multiple child elements together with discreet hull operations, useful for complex and organic(ish) geometries - concept and implementation originally from Whosa Whatsis on G+ (as far as I'm aware)
module chain_hull() for (i = [0 : $children - 2]) hull() for(j = [i, i+1]) children(j);



//makes a hexagonal projection using the dimension of the diameter on flats of a hexagon; particularly useful for making the cutouts for captive nuts
module hex_rod(d, h) cylinder(d=d*HEX, h=h, $fn=6);



//makes a geometry that can be subtracted from a part to make a hole with the countersink needed for 80/20 t-slot bolts
module tslot_hole()
{
	translate([0, 0, -1]) cylinder(d=IN/4+1, h=50, $fn=16); //through-hole
	translate([0, 0, 3/16*IN+1]) cylinder(d=IN/2, h=50, $fn=24); //countersink
}



//makes a nub of the desired length to go on the bottom of a part to engage with t-slot to keep a part from rotating - this makes it possible for a part to be relatively secure with a single bolt mounting it. It should be shallow enough to not interfere with a t-slot nut
module tslot_nub(l)
{
	translate([0, -6.4/2, -2]) cube([l, 6.4, 2.1]);
}



//Update: 4/1/16 - Additions below

//translate child elements down 1 unit in the z-axis - this is a really common operation I use to avoid clipping issues that happen with coincident faces - typing down1() is faster than typing translate([0, 0, -1])
module down1() translate([0, 0, -1]) children();




//boolean xor module - credit goes to reddit user roman_fyseek in this post: https://www.reddit.com/r/openscad/comments/4cpos8...
module xor(){
    difference(){
        union(){
            children(0);
            children(1);
        };
        intersection(){
            children(0);
            children(1);
        }
    }
}