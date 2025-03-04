// Evelyn Tung
// 2-3
// February 26th, 2025

// pallette
color feldgrau = #506C64;
color tiffanyBlue = #77CBB9;
color moonstone  = #75B8C8;
color silver = #CDD3D5;
color white = #FFFFFF;
color shade = #92D7D8;

float sliderY;

void setup () {
  size (800, 600);
  strokeWeight (4);
  stroke (feldgrau);
  fill (white);
  sliderY = 300;
  shade = color(146, 215, 216);
}

void draw () {
  background (shade);
  shade = color(map(sliderY, 100, 500, 0, 255), 215, 216);
  line (400, 100, 400, 500);
  circle (400, sliderY, 50);
}

void mouseDragged () {
  controlSlider ();
}

void mouseReleased () {
  controlSlider ();
}

void controlSlider () {
  if (mouseX > 375 && mouseX < 425 && mouseY > 100 && mouseY < 500) {
    sliderY = mouseY;
  }
}
