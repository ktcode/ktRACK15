//
// ktRACK15
//

gap1 = 0.001;
gap2 = 0.002;
th = 4;

difference()
{
    union()
    {
        translate([0, 0, 0]) cube( [25, 15, 12]);
        translate([0, -6, 0]) cube( [25, 6, th]);
        translate([0, -2.47, 0.46]) rotate([45, 0, 0]) cube( [25, 9, th+1]);
        translate([0, 15, 0]) cube( [25, 6, th]);
        translate([25, 15+2.47, 0.46]) rotate([45, 0, 180]) cube( [25, 9, th+1]);
    }
    translate([-gap1, 3, -gap1]) cube( [30+gap2, 9, 7]);
    translate([-gap1, 15/2, 7+4/2-1]) rotate([-90, 0, -90]) cylinder(  25+gap2, d1=4, d2=4, $fn=100);
    translate([-gap1, 15/2-4/2, 7-4/2-1]) cube( [25+gap2, 4, 4]);
    
    translate([(25/10)*5, -3, 2-gap1]) rotate([0, 0, 0]) cylinder(  2+gap2, d1=2.5, d2=4.5, $fn=100);
    translate([(25/10)*5, -3, 2]) rotate([180, 0, 0]) cylinder(  10, d1=2.5, d2=2.5, $fn=100);
    translate([(25/10)*5, -3, 2+2-gap1]) rotate([0, 0, 0]) cylinder(  10, d1=6, d2=6, $fn=100);
    
    translate([(25/10)*5, +3+15, 2-gap1]) rotate([0, 0, 0]) cylinder(  2+gap2, d1=2.5, d2=4.5, $fn=100);
    translate([(25/10)*5, +3+15, 2]) rotate([180, 0, 0]) cylinder(  10, d1=2.5, d2=2.5, $fn=100);
    translate([(25/10)*5, +3+15, 2+2-gap1]) rotate([0, 0, 0]) cylinder(  10, d1=6, d2=6, $fn=100);
}
