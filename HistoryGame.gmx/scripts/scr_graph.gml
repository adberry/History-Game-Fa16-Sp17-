// Matthew Mosby
// Draws graph axes and lines
offset = 10;
margin = 60;
var i;

//Draw x-axis
draw_line_width_color(x + margin, y + offset + height, x + margin + length + offset, y + offset + height, 5, c_black, c_black);

//Draw y-axis
draw_line_width_color(x + margin, y + offset, x + margin, y + offset + height, 5, c_black, c_black);

i = 0;
var prev = 0;
var d = length / rounds; 

//Y-Axis Values
var yDiv = yMax / 10; //Determines how much each unit on the y-axis is valued
var yDivInc = yDiv; //yDiv value which increments by yDiv for each y-axis unit
var dInc = yMax / yDivInc; 
var currHeight = 0;
//Draws each of the horizontal grid lines on the graph and each y-axis number
repeat (10) {
    i++;
    currHeight = (height * (dInc-i)/dInc);
    draw_line_width_color(x + margin, y + currHeight + offset * (2/3), x + margin + length, y + currHeight + offset * (2/3), 3, c_gray, c_gray);    
    draw_text_colour(x + offset, y + currHeight + offset, yDivInc, c_black, c_black, c_black, c_black, 1);
    yDivInc += yDiv;    
}

i = 0;
//the PER variables will be used to hold the values of the data converted into a drawable coordinate on the y-axis
var per = 0;
var per2 = 0;

//Draw Lines
repeat(rounds) {  
    draw_line_width_color(x + margin + prev + d, y + offset + height, x + margin + prev + d, y + offset, 1, c_gray, c_gray); //Draw vertical grid line for each data point
    
    //Student Data
    per = (array[i] / yMax) * height; //Convert data for current data point to a drawable y-coordinate
    per2 = (array[i + 1] / yMax) * height; //Convert data for current data point to a drawable y-coordinate
    draw_circle_colour(x + margin + prev, y + offset + (height - per), 10, color, color, false);
    draw_line_width_color(x + margin + prev, y + offset + (height - per), x + margin + prev + d, y + offset + (height - per2), 5, color, color);
    
    //Comparative data which marks where the player should be at that point of the game ideally
    per3 = (ideal[i] / yMax) * height;
    per4 = (ideal[i + 1] / yMax) * height;
    draw_circle_colour(x + margin + prev, y + offset + (height - per3), 10, color2, color2, false);
    draw_line_width_color(x + margin + prev, y + offset + (height - per3), x + margin + prev + d, y + offset + (height - per4), 5, color2, color2);
        
    draw_text_colour(x + margin + prev - offset, y + offset + offset + height, i, c_black, c_black, c_black, c_black, 1);

    prev += d;
    i += 1;
}
per = (array[i] / yMax) * height;
per3 = (ideal[i] / yMax) * height;

//Draw the data points at the end of the graphs
draw_circle_colour(x + margin + prev, y + offset + (height - per), 10, color, color, false); //Student 
draw_circle_colour(x + margin + prev, y + offset + (height - per3), 10, color2, color2, false); //Comparative

//Draw at the end of the line the display of what the line is at on the y-axis
draw_text_colour(x + margin + prev + offset + offset + offset, y + height - per - offset, array[i], c_black, c_black, c_black, c_black, 1);
draw_text_colour(x + margin + prev - offset, y + offset + offset + height, i, c_black, c_black, c_black, c_black, 1);
