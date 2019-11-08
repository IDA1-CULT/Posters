//DECLARE ANY GLOBAL VARIABLE HERE




//YOUR SETUP FUNCTION GOES HERE ( normally "void setup() { }" )
void posterSetup() {

  //size(594, 841); <- you put this in but you don't need to in this version, cause it's already in your actual void setup(){}
  //background(0);
  
}

//YOUR DRAW FUNCTION GOES HERE ( normally "void draw() { }" )
void posterDraw() {

 rect(mouseX*PI*0.10, mouseY, mouseX,mouseY);
  rotate(PI/3+mouseY);
  fill(mouseX, mouseY, 255);
  beginShape();
  translate(width/2, height/2);
  if(mousePressed){  
    line(mouseX*PI/2, mouseX,mouseY,mouseX);
    rotate(PI/3+mouseY);
    ellipse(mouseY, mouseX, mouseX, mouseX);
    stroke(mouseY*PI/2);
    rotate(PI*2+mouseX);
  endShape();
    
}
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
