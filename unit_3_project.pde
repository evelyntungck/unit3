// Evelyn Tung
// 2-3
// March 5th, 2025

PImage ladybug;
PImage eraser;
PImage savebutton;
boolean ladybugOn;
boolean eraserOn;
boolean savebuttonOn;

void setup () {
size (800, 800);
background (255);
ladybug = loadImage("ladybug.png");
ladybugOn = false;
eraser = loadImage ("eraser.png");
eraserOn = false;
savebutton = loadImage ("save button.png");
savebuttonOn = false;
}

void draw () {
fill (255);

//toolbar
stroke (0);
strokeWeight (1);
fill (100);
rect (0, 0, 800, 200);

//ladybug button
tactile (0, 0, 100, 100);
ladybugOnOff ();
rect (0, 0, 100, 100);
image(ladybug, 0, 0, 100, 100);

//eraser button
tactile (700, 0, 50, 50);
//eraserOnOff ();
rect (700, 0, 50, 50);
image (eraser, 700, 0, 50, 50);

//save button
tactile (750, 0, 50, 50);
//savebuttonOnOff ();
rect (750, 0, 50, 50);
image (savebutton, 750, 0, 50, 50);
}

void mouseDragged () {
if (ladybugOn == false) {
//squiggly line
strokeWeight (5);
stroke (0);
line (pmouseX, pmouseY, mouseX, mouseY);
} else {
// ladybug drawing
image (ladybug, mouseX, mouseY, 100, 100);
}

//if (eraserOn == false) {
////squiggly line
//strokeWeight (5);
//stroke (0);
//line (pmouseX, pmouseY, mouseX, mouseY);
//} else {
//// erasing job
//stroke (255);
//strokeWeight (15);
//line (pmouseX, pmouseY, mouseX, mouseY);
//}

//if (savebuttonOn == false) {
////squiggly line
//strokeWeight (5);
//stroke (0);
//line (pmouseX, pmouseY, mouseX, mouseY);
//}

}

void mouseReleased () {
// ladybug button
if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
  ladybugOn = !ladybugOn;
}

//// eraser button
//if (mouseX > 700 && mouseY < 750 && mouseY > 0 && mouseY < 100) {
//  eraserOn = !eraserOn;
//}

//// save button
//if (mouseX > 750 && mouseX < 800 && mouseY > 0 && mouseY < 100) {
//  selectOutput ("New Image File", "Save Image");
//}

}

void tactile (int x, int y, int w, int h) {
if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
fill (255, 255, 0);
} else {
fill (255);
}

}

void ladybugOnOff () {
if (ladybugOn == true) {
eraserOn = false;
} else {
stroke (0);
strokeWeight (1);
line (pmouseX, pmouseY, mouseX, mouseY);
}

}

//void eraserOnOff () {
//if (eraserOn == true) {
//  ladybugOn = false;
//} else {
//stroke (255);
//strokeWeight (5);
//line (pmouseX, pmouseY, mouseX, mouseY);
//}

//}

//void savebuttonOnOff () {
//if (savebuttonOn == true) {
//stroke (70, 203, 191);
//}
