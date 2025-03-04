// Evelyn Tung
// 2-3
// February 26th, 2025

// pallette of colours
color feldgrau = #506C64;
color tiffanyBlue = #77CBB9;
color moonstone  = #75B8C8;
color silver = #CDD3D5;
color white = #FFFFFF;

// variables for color selection

color selectedColor;

void setup () {

size (600, 600);
strokeWeight (2);
stroke (feldgrau);
selectedColor = feldgrau;
}

void draw () {
background (146, 215, 216);

// buttons
tactile (100, 100, 100);
fill (tiffanyBlue);
circle (100, 100, 100);

tactile (300, 100, 100);
fill (moonstone);
circle (300, 100, 100);

tactile (500, 100, 100);
fill (silver);
circle (500, 100, 100);

// indicator
stroke (feldgrau);
fill (selectedColor);
square (200, 250, 200);

}

void tactile (int x, int y, int r) {

if (dist(x, y, mouseX, mouseY) < 50) {

stroke(white);

} else {

   stroke(feldgrau);

}} // end tactile

void mouseReleased () {
  //tiffanyBlue
if (dist(100, 100, mouseX, mouseY) < 50) {
selectedColor = tiffanyBlue;
}

  //moonstone
if (dist(300, 100, mouseX, mouseY) < 50) {
selectedColor = moonstone;
}

  //silver
if (dist(500, 100, mouseX, mouseY) < 50) {
selectedColor = silver;

}
} //end mouseReleased
