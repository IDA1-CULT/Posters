//import processing.pdf.*;








  
import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////

void yourPosterCode() {
  // Your code goes here.
  // For example:
    background(random(255));

       stroke(0,0,0,0);
  for (int i = 0; i < 80; i = i+1) {
          fill(random(255), random(255), random(255));

  ellipse(random(549), random(841), 80, 80);
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
  frameRate(2);
}

void draw() {
  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();
  
  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf");
  
  //background(255);
  
  yourPosterCode();
  
  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");
  
  record = false;
}
