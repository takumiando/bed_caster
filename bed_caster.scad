$fn = 120;

module nut_m6() {
    $fn = 6;
    cylinder(3.6+5, 11.5/2, 11.5/2);
}

module base() {
    hull() {
        translate([46/2, 35/2, 0])
            cylinder(38, 7, 7);
        translate([-46/2, 35/2, 0])
            cylinder(38, 7, 7);
        translate([46/2, -35/2, 0])
            cylinder(38, 7, 7);
        translate([-46/2, -35/2, 0])
            cylinder(38, 7, 7);
    }
}

module cap() {
    difference() {
            hull() {
                cylinder(38, 55/2+4, 55/2+4);
                base();
            }
 
        translate([0, 0, 8])
            cylinder(30, 55/2, 55/2);
        
        translate([46/2, 35/2, 8-3.6])
                nut_m6();
        translate([46/2, -35/2, 8-3.6])
                nut_m6();
        translate([-46/2, 35/2, 8-3.6])
                nut_m6();
        translate([-46/2, -35/2, 8-3.6])
                nut_m6();

        translate([46/2, 35/2, 0])
            cylinder(8, 3, 3);
        translate([-46/2, 35/2, 0])
            cylinder(8, 3, 3);
        translate([46/2, -35/2, 0])
            cylinder(8, 3, 3);
        translate([-46/2, -35/2, 0])
            cylinder(8, 3, 3);
    }
}

cap();
