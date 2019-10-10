//import processing.pdf.*;








  
import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////

void yourPosterCode() {
  // Your code goes here.
  // For example:
    background(random(255), random(255), random(200));

  for (int i = 0; i < 10; i = i+1) {
    fill(random(200), random(0), random(255), random(20));
    stroke(random(255), random(250), 255);
    beginShape();
    vertex(random(20), random(800));
    vertex(random(800), random(800));
    vertex(random(800), random(800));
    vertex(random(900), random(900));

    endShape();

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
