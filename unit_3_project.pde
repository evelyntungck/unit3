// Evelyn Tung
// 2-3
// March 5th, 2025

PImage ladybug;
PImage eraser;
PImage savebutton;
PImage loadbutton;
boolean ladybugOn;
boolean eraserOn;
boolean savebuttonOn;
boolean loadbuttonOn;

//pallette of colours
color pink = #EF476F;
color orange = #F78C6B;
color yellow = #FFD166;
color green = #06D6A0;
color blue = #118AB2;
color navy = #073B4C;
color white = #FFFFFF;
color black = #000000;

float sliderY;
float thickness;

//variable for colour selection
color currentColor;

void setup () {
  size (800, 800);
  background (255);
  stroke (0);
  strokeWeight (1);
  ladybug = loadImage("ladybug.png");
  ladybugOn = false;
  eraser = loadImage ("eraser.png");
  eraserOn = false;
  savebutton = loadImage ("save button.png");
  loadbutton = loadImage ("load.png");
  currentColor = color(black);
  sliderY = 100;
  thickness = 5;
}

void draw () {
  //toolbar
  stroke (0);
  strokeWeight (1);
  fill (100);
  rect (0, 0, 800, 200);

  //indicator
  stroke (black);
  fill (currentColor);
  rect (700, 125, 100, 75);

  fill (255);
  thickness = map(sliderY, 50, 150, 0, 20);
  line (600, 50, 600, 150);
  circle (600, sliderY, 50);


  //buttons
  tactile (150, 100, 75);
  fill (black);
  circle (150, 100, 75);

  tactile (250, 50, 75);
  fill (pink);
  circle (250, 50, 75);

  tactile (350, 50, 75);
  fill (orange);
  circle (350, 50, 75);

  tactile (450, 50, 75);
  fill (yellow);
  circle (450, 50, 75);

  tactile (250, 150, 75);
  fill (green);
  circle (250, 150, 75);

  tactile (350, 150, 75);
  fill (blue);
  circle (350, 150, 75);

  tactile (450, 150, 75);
  fill (navy);
  circle (450, 150, 75);

  //ladybug button
  tactile (0, 0, 100, 100);
  ladybugOnOff ();
  rect (0, 0, 100, 100);
  image(ladybug, 0, 0, 100, 100);

  //eraser button
  tactile (700, 0, 50, 50);
  eraserOnOff ();
  rect (700, 0, 50, 50);
  image (eraser, 700, 0, 50, 50);

  //save button
  tactile (750, 0, 50, 50);
  savebuttonOnOff ();
  rect (750, 0, 50, 50);
  image (savebutton, 750, 0, 50, 50);

  //load button
  tactile (750, 50, 50, 50);
  loadbuttonOnOff ();
  rect (750, 50, 50, 50);
  image (loadbutton, 750, 50, 50, 50);

  //indicator
  stroke (thickness);
  fill (currentColor);
}

void mouseDragged () {
  if (ladybugOn == false) {
    // squiggly line
    //eraserOn = false;
    strokeWeight (thickness);
    stroke (currentColor);
    line (pmouseX, pmouseY, mouseX, mouseY);
  } else {
    // ladybug drawing
    image (ladybug, mouseX, mouseY, 100, 100);
  }

  if (eraserOn == true) {
    // erasing job
    stroke (white);
    strokeWeight (thickness*2);
    line (pmouseX, pmouseY, mouseX, mouseY);
  }

  println(eraserOn);
  controlSlider ();
}

void mouseReleased () {
  // ladybug button
  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
    ladybugOn = !ladybugOn;
    eraserOn = false;
  }
  // eraser button
  if (mouseX > 700 && mouseX < 750 && mouseY > 0 && mouseY < 50) {
    eraserOn = !eraserOn;
    ladybugOn = false;
  }
  // save button
  if (mouseX > 750 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    selectOutput ("New image file", "saveImage");
  }

  // load button
  if (mouseX > 750 && mouseX < 800 && mouseY > 50 && mouseY < 100) {
    selectInput ("Pick an image to load", "openImage");
  }

  ////colour buttons

  if (dist(150, 100, mouseX, mouseY) < 37.5) {
    currentColor = black;
    ladybugOn = false;
  }

  if (dist(250, 50, mouseX, mouseY) < 37.5) {
    currentColor = pink;
    ladybugOn = false;
  }

  if (dist(350, 50, mouseX, mouseY) < 37.5) {
    currentColor = orange;
    ladybugOn = false;
  }

  if (dist(450, 50, mouseX, mouseY) < 37.5) {
    currentColor = yellow;
    ladybugOn = false;
  }

  if (dist(250, 150, mouseX, mouseY) < 37.5) {
    currentColor = green;
    ladybugOn = false;
  }

  if (dist(350, 150, mouseX, mouseY) < 37.5) {
    currentColor = blue;
    ladybugOn = false;
  }

  if (dist(450, 150, mouseX, mouseY) < 37.5) {
    currentColor = navy;
    ladybugOn = false;
  }

  controlSlider ();
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    fill (255, 255, 0);
  } else {
    fill (255);
  }
}

void tactile (int x, int y, int r) {
  if (dist (x, y, mouseX, mouseY) < 50) {
    stroke (white);
  } else {
    stroke (0);
  }
}

void ladybugOnOff () {
  if (ladybugOn == true) {
    stroke (255, 0, 0);
    strokeWeight (5);
  }
}

void eraserOnOff () {
  if (eraserOn == true) {
    stroke (0, 255, 0);
    strokeWeight (5);
  }
}

void savebuttonOnOff () {
  if (savebuttonOn == true) {
    stroke (70, 203, 191);
    strokeWeight (5);
  }
}

void loadbuttonOnOff () {
  if (loadbuttonOn == true) {
    stroke (70, 203, 191);
    strokeWeight (5);
  }
}

void controlSlider () {
  if (mouseX > 575 && mouseX < 625 && mouseY > 50 && mouseY < 150) {
    sliderY = constrain(mouseY, 50, 150);
  }
}
