/*
 * ih: inner cylinder height
 * ir: inner cylinder radius
 * oh: outer cylinder height
 * or: outer cylinder radius
 * sh: strut height
 * sw: strut width
 * sd: strut depth
 * hr: hole radius
 * of: how much the hole portrudes
 */
module gear_strut(ih=50, ir=3, oh=10, or=5, sh=25, sw=2, sd=10, hr=1, of=10) {
    difference() {
        union() {
            cylinder(h=ih, r=ir);
            cylinder(h=oh, r=or);
            for(i=[0:2]) {
                rotate(120*i) translate([-sw/2, ir, oh]) cube([sw,sd,sh]);
            }
        }
        translate([0,0,-of/2]) cylinder(h=(ih+of), r=hr);
    }
}

gear_strut(ih=28.4, ir=2.70, oh=5.70, or=4.00, sh=16.70, sw=1.40, sd=3.00, hr=1.50);