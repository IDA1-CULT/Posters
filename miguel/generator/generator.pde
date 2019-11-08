//DECLARE ANY GLOBAL VARIABLE HERE




//YOUR SETUP FUNCTION GOES HERE ( normally "void setup() { }" )
float x1;
int myXPossition = 250;
int myYPossition = 250;
int squaresize = 50;
int ellipsesize = 100;
void posterSetup() {
  //size(594, 841); <- you put this in but you don't need to in this version, cause it's already in your actual void setup(){}
  //background(0);
  
}

//YOUR DRAW FUNCTION GOES HERE ( normally "void draw() { }" )
void posterDraw() {
 noStroke();
  fill(mouseX, mouseY, mouseX, mouseY);
  rect(myXPossition, myYPossition, squaresize, ellipsesize);
  fill(mouseX, mouseY, mouseX, mouseY);
  ellipse(myYPossition, myXPossition, ellipsesize, ellipsesize);

  myXPossition += round(random(-1, 1)) * squaresize;
  myYPossition += round(random(-1, 1)) * squaresize;
  myXPossition += round(random(-1, 1)) * ellipsesize;
  myYPossition += round(random(-1, 1)) * ellipsesize;

  if (myXPossition < 0) {
    myXPossition = width;
  } else if (myXPossition > width) {
    myXPossition = 0;  
    squaresize --;
  }

  if (myYPossition < 0) {
    myXPossition = height;
  } else if (myYPossition > height) {
    myXPossition = 0;
    ellipsesize ++;
  }
}

void mousePressed() {
  if (ellipsesize < 100) {
    squaresize = width;
  } else if (ellipsesize < 100);
  myYPossition = 100;
  ellipsesize = 50;
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
