wall        = 2.0;
depth       = 11.5;

led_count   = 12;
led_width   = 5.5;
led_height  = 2.0;
led_space   = 0.5;

all_length = led_count*(led_height + led_space);

// main housing
difference() {
    cube([all_length + 2*wall,
      led_width + 2*wall,
      depth + wall]);
    
    translate([wall,wall,wall]) {
        // LED cutout
        cube([all_length,
              led_width,
              depth]);
        
        // resistor cutout
        cutout_depth = 1;
        cutout_diff = 0.5;
        translate([+cutout_diff/2,led_width,depth-cutout_depth]) {
            cube([all_length - cutout_diff, wall, cutout_depth]);
        }
        
        // capacitor cutout
        cutout_len = 3.5;
        cutout_offset = 0.8;
        translate([all_length,((led_width-cutout_len)/2+cutout_offset),depth-cutout_depth]) {
            cube([wall, cutout_len, cutout_depth]);
        }
    }
}

// ribs
rib_gap = 0.2;
rib_height = 2.5;
translate([wall+led_height+(rib_gap/2)+(led_space/2), wall, wall]){
    for (i = [0 : 1 : (led_count-2)]) {
        translate([i*(led_height+led_space), 0, 0]){
            cube([led_space - rib_gap, led_width, rib_height]);
        }
    }
}
