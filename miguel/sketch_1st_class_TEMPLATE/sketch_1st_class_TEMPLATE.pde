import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////

void yourPosterCode() {
 
  beginRecord(PDF, "OUTPUT.PDF");
  background(255);
  
  ellipse(297,420,500,500);
  fill(
  random(255),
  random(255),
  random(255),
  random(30)
 );
 PImage img = loadImage("design.jpg");
noStroke();
  beginShape(TRIANGLE_STRIP);
  texture(img);

vertex(mouseX, random(30));
vertex(height/2, mouseX);
vertex(mouseX, mouseY);
vertex(random(120), width/2);
vertex(mouseX, mouseY);
vertex(mouseY, random(40));
vertex(mouseX, mouseY);
vertex(mouseY, random(255));
vertex(0, mouseY);
vertex(mouseY, 25);
vertex(mouseX, mouseY);
vertex(mouseY, mouseX);
vertex(mouseX, 0);
vertex(mouseY, 0);
endShape();



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
}

void draw() {
  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();
  
  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf");
  
  background(255);
  
  yourPosterCode();
  
  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");
  
  record = false;
}
