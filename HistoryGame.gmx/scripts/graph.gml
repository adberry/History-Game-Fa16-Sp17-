// Matthew Mosby
// Draws graph axes

length = 320;
height = 300;
offset = 10;
array[0] = 100;
array[1] = 130;
array[2] = 80;
array[3] = 110;
array[4] = 10;
array[5] = 200;
array[6] = 180;

maxCal = 100000;
while (rounds > 6) {
    rounds--;
}

while (rounds < 0) {
    rounds++;
}


var i = 0;
var largest = array[0];
repeat(rounds) {
    i++;
    if (largest < array[i]) {
        largest = array[i];
    }
}

var topVal = largest * (4/3);
var midVal = topVal / 2;

draw_line_width_color(offset, offset + height, offset + length, offset + height, 3, c_black, c_black);
draw_line_width_color(offset, offset, offset, offset + height, 3, c_black, c_black);

i = 0;
var prev = 0;
var d = length / rounds;
draw_text(0, 0, topVal);
draw_text(0, height/2, midVal);
var perCal = 0;
var perCal2 = 0;
repeat(rounds) { 
    perCal = (array[i] / height) * topVal;
    perCal2 = (array[i + 1] / height) * topVal;
    //draw_line_width_color(offset + prev, offset + (height - array[i]), offset + prev + d, offset + (height - array[i + 1]), 1, c_red, c_red);    
    draw_line_width_color(offset + prev, offset + (height - perCal), offset + prev + d, offset + (height - perCal2), 1, c_red, c_red);    
    draw_text(offset + prev, offset + offset + height, i);
    prev += d;
    i += 1;
}
draw_text(offset + prev, offset + offset + height, i);
