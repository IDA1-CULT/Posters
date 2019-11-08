//DECLARE ANY GLOBAL VARIABLE HERE




//YOUR SETUP FUNCTION GOES HERE ( normally "void setup() { }" )
float x;

void posterSetup() {
x=mouseX;
  //size(594, 841); <- you put this in but you don't need to in this version, cause it's already in your actual void setup(){}
  //background(0);
  
}

//YOUR DRAW FUNCTION GOES HERE ( normally "void draw() { }" )
void posterDraw() {
frameRate(60);
  
  //background(255);
  beginShape();
  translate(width/2, height/2);
  stroke(255);
  for (int i = 0; i < mouseY; i++) {
    
    fill(i++, mouseX, i++, mouseY);
    stroke(255);
    quad(420, 420, random(30), mouseX, mouseY, 297, mouseY, random(255));
    line(i++, mouseX+i, i++ - mouseY, i++);
    quad(297, 297, i++, mouseY, -mouseX, 420, mouseX, i++);
    rotate(PI/i++ + random(255));
    
    endShape();
    
    beginShape(VERTEX);

    //for (float x = 0.5*mouseY; i < mouseX; i++) {
      noStroke();
      translate(0, 0);
      fill(x++, mouseY, x++, x++);
      vertex(mouseX, mouseY+297);
      vertex(mouseY+420, mouseX+420);
      vertex(mouseX, mouseY+420);
      vertex(mouseY, mouseX);
      rotate(PI*mouseY);
    }
    endShape();
  
    noStroke();
    beginShape();
    vertex(mouseX,297);
    vertex(mouseY, 420);
    vertex(mouseX, 297);
    vertex(mouseX, 420);
    vertex(mouseY, 297);
    endShape();
}



    




//IGNORE THIS PART - IT OUTPUTS YOUR POSTER AND STUFF

import processing.pdf.*;

String filename = "poster-" + year() + "." + month() + "." + day() + "-" + hour() + "." + minute() + "." + second();

void setup() {
  // Set the canvas size
  size(594, 841);

  // Generate a file name composed of the current date and time

  // Begin the recording of an PDF file
  beginRecord(PDF, sketchPath("/Users/admin/Documents/Interaction Design 2018:19:20/Design by Code/SKETCHES/posters" + filename + ".pdf"));

  // Run the posterCode() function, which contains your drawing
  posterSetup();
}

void draw() {
  posterDraw();
}

// This will run when a key is pressed
void keyPressed() {
  // If the key you pressed is the spacebar
  if (key == ' ') {
    // Finish recording the SVG and save it
    endRecord();

    // Save a PNG screenshot
    //save(sketchPath("/Users/admin/Documents/Interaction Design 2018:19:20/Design by Code/SKETCHES/posters" + filename + ".png"));

    // Exit the sketch
    exit();
  }
}
