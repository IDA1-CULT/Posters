//import processing.pdf.*;
import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////

float shapeWidth = 1;
float shapeHeight = 1;


int x = 250;
int y = 250;

void yourPosterCode() {
  // Your code goes here.
  // For example:
    //background(random(2r55), random(255), random(200));
    //background(255);


  //for (int i = 0; i < 100; i = i+1) {
    fill(mouseY / 2, mouseY - mouseX, mouseX /  2);
    stroke(random(0));
     ellipse(x, y, shapeWidth, shapeHeight);
//}

 x += random(-50, 50 );
  y += random(-50, 50 );
  //if ()
  shapeWidth += 0.05;
  shapeHeight += 0.05;
  
   if (x < 0) {
    x = width;
  } else if ( x > width ) {
    x = 0;
  }
  
   if (y < 0) {
    y = height;
  } else if ( y > height ) {
    y = 0;
  }
  
}

////////////////////////////////////////////
/// Check below if you're interested :-) ///
////////////////////////////////////////////

boolean record = false;

void keyPressed() {
  record = true;
}

void setup() {
  size(594, 841);
  //frameRate(2);
background(0);
}


void draw() {
  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();
  
  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf");
  
  
  yourPosterCode();
  
  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");
  
  record = false;
}
