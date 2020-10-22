// sharp distance sensor stepper coupler
/* [Hidden] */
$fn =64;

/* [General coupler dimensions] */
// stepper shaft diameter
d_shaft_stepper = 4;
// coupler height
h_coupler = 30;
// coupler external diameter
D_coupler = 15;
/* [Sharp sensor dimensions] */
// distance between bolts
l_bolts_sharp = 37;
// bolts diameter
d_bolt_sharp = 3.2;
// bolt setling diameter
D_bolt_sharp = 7.5;
// sensor heigth
h_sharp = 13.5;
// sensor weigth
w_sharp = 13;
// sensor length
l_sharp = l_bolts_sharp + D_bolt_sharp;


difference(){
    union(){
        cylinder(r = D_coupler/2, h = h_coupler,center = [0, 0, h_coupler/2]);
        translate([D_coupler/4,0,h_coupler-w_sharp/2])
            cube([D_coupler/2,l_sharp,w_sharp], center = true);
    }
    translate([-D_coupler/4,0,h_coupler-w_sharp/2])
            cube([D_coupler/2,l_sharp,w_sharp], center = true);
    cylinder(r = d_shaft_stepper/2, h = h_coupler/2, center = [0, 0, h_coupler/4]);
    translate([D_coupler/4, l_bolts_sharp/2, h_coupler-w_sharp/2])
        rotate([0,90,0])
            #cylinder(r = d_bolt_sharp/2, h = D_coupler/2, center = true);
    translate([D_coupler/4, -l_bolts_sharp/2, h_coupler-w_sharp/2])
        rotate([0,90,0])
            #cylinder(r = d_bolt_sharp/2, h = D_coupler/2, center = true);
}
