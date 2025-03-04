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
  tactile (100, 100, 100, 100);
  fill (tiffanyBlue);
  rect (100, 100, 100, 100);

  tactile (250, 100, 100, 100);
  fill (moonstone);
  rect (250, 100, 100, 100);

  tactile (400, 100, 100, 100);
  fill (silver);
  rect (400, 100, 100, 100);

  // indicator
  stroke (feldgrau);
  fill (selectedColor);
  circle (300, 400, 200);
}

void tactile (int x, int y, int w, int h) {

  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(white);
  } else {

    stroke(feldgrau);
  }
} // end tactile

void mouseReleased() {
  // tiffanyBlue
  if (mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 200) {
    selectedColor = tiffanyBlue;
  }

  // moonstone
  if (mouseX > 250 && mouseX < 350 && mouseY > 100 && mouseY < 200) {
    selectedColor = moonstone;
  }

  // silver
  if (mouseX > 400 && mouseX < 500 && mouseY > 100 && mouseY < 200) {
    selectedColor = silver;
  }
} //end mouseReleased
