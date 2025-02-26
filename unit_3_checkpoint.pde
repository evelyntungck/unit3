// Evelyn Tung
// 2-3
// February 26th, 2025

// pallette of colours
color feldgrau = #506C64;
color tiffanyBlue = #77CBB9;
color moonstone  = #75B8C8;
color silver = #CDD3D5;

void setup () {

size (600, 600);
strokeWeight (5);
stroke (feldgrau);

}

void draw () {
background (255);

// buttons
fill (tiffanyBlue);
circle (100, 100, 75);

fill (moonstone);
circle (300, 100, 75);

fill (silver);
circle (500, 100, 75);

// indicator
fill (tiffanyBlue);
square (200, 250, 200);

}
