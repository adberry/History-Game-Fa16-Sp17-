// Matthew Mosby
// Draws graph axes and lines

length = 320;
height = 300;
offset = 10;
margin = 60;
array[0] = 77000;
array[1] = 1000;
array[2] = 32000;
array[3] = 7000;
array[4] = 9000;
array[5] = 22000;
array[6] = 67000;
array[7] = 11000;
calMax = 100000;
while (rounds > 7) {
    rounds--;
}

while (rounds < 0) {
    rounds++;
}


var i;

//x-axis
draw_line_width_color(margin, offset + height, margin + length + offset, offset + height, 3, c_black, c_black);

//y-axis
draw_line_width_color(margin, offset, margin, offset + height, 3, c_black, c_black);

i = 0;
var prev = 0;
var d = length / rounds;
//draw_text(0, 0, calMax);

//Y-Axis Values
var currCal = 10000;
var dInc = calMax / currCal;
var currHeight = 0;
repeat (10) {
    i++;
    currHeight = (height * (dInc-i)/dInc);
    draw_line_width_color(margin, currHeight + offset * (2/3), margin + length, currHeight + offset * (2/3), 1, c_gray, c_gray);    
    draw_text(0, currHeight, currCal);
    currCal += 10000;    
}

i = 0;
var perCal = 0;
var perCal2 = 0;
repeat(rounds) { 
    perCal = (array[i] / calMax) * height;
    perCal2 = (array[i + 1] / calMax) * height;
    draw_line_width_color(margin + prev + d, offset + height, margin + prev + d, offset, 1, c_gray, c_gray);
    draw_circle_colour(margin + prev, offset + (height - perCal), 5, c_red, c_red, false);
    draw_line_width_color(margin + prev, offset + (height - perCal), margin + prev + d, offset + (height - perCal2), 2, c_red, c_red);    
    draw_text(margin + prev - offset, offset + offset + height, i);
    draw_text(margin + prev - offset, height - perCal - offset, array[i]);

    prev += d;
    i += 1;
}
perCal = (array[i] / calMax) * height;
draw_circle_colour(margin + prev, offset + (height - perCal), 5, c_red, c_red, false);
draw_text(margin + prev - offset, height - perCal - offset, array[i]);
draw_text(margin + prev - offset, offset + offset + height, i);
