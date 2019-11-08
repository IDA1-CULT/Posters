import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////

void yourPosterCode() {
frameRate(60);
  beginRecord(PDF, "OUTPUT.PDF");
  background(255);
  beginShape();
  translate(297, 420);
  for (int i = 0; i < mouseY; i++) {
    fill(i++, mouseX, i++, mouseY);
    quad(420, 420, random(30), mouseX, mouseY, 297, mouseY, random(255));
    line(i++, mouseX, i++ - mouseY, i++);
    quad(297, 297, i++, mouseY, -mouseX, 420, mouseX, i++);
    rotate(PI/i++ + random(255));
    
    endShape();
    
    beginShape(VERTEX);

    //for (float x = 0.5*mouseY; i < mouseX; i++) {
      noStroke();
      translate(0, 0);
      //fill(x++, mouseY, x++, x++);
    //  vertex(mouseX, mouseY+297);
      //vertex(mouseY+420, mouseX+420);
      //vertex(mouseX, mouseY+420);
      //vertex(mouseY, mouseX);
      //rotate(PI*mouseY);
    }
    endShape();
  }
  //  noStroke();
  //  beginShape();
  //  vertex(mouseX,297);
  //  vertex(mouseY, 420);
  //  vertex(mouseX, 297);
  //  vertex(mouseX, 420);
  //  vertex(mouseY, 297);
  //  endShape();
//}


////////////////////////////////////////////
/// Check below if you're interested :-) ///
////////////////////////////////////////////

boolean record = false;

void keyPressed() {
  record = true;
}



void setup() {
  size(594, 841);
  background(255);
}

void draw() {
  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();

  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf");



  yourPosterCode();

  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");

  record = false;
}
