// Push Button Cap for 8mm hole and 3x2mm switch stem

$fn=36;
button_h=7;
button_d=7;

union() {
    difference() {
        translate([0 ,0, button_h/2]) {
            cylinder(button_h, button_d/2, button_d/2, center=true);
        }
        translate([0, 0, 1.99]) {
            cube([3.1, 2.1, 4], center=true);
        }
    }
    color([0,0,1]) {
        difference() {
            translate([0, 0, 2]) {
                cube([4, 4, 0.2], center=true);
            }
            translate([0, 0, 2.5]) {
                cube([3, 2, 10], center=true);
            }
        }
    }
}
