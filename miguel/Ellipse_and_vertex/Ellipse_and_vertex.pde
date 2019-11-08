//DECLARE ANY GLOBAL VARIABLE HERE



float xPosition ;
float yPosition ;
float random;
float x1 = xPosition+10;
float x3 = xPosition+30;
int x =  mouseY+100 ;
//YOUR SETUP FUNCTION GOES HERE ( normally "void setup() { }" )


void posterSetup() {
  //size(594, 841); <- you put this in but you don't need to in this version, cause it's already in your actual void setup(){}
  //background(0);
  
}

//YOUR DRAW FUNCTION GOES HERE ( normally "void draw() { }" )
void posterDraw() {

  yPosition = +height*mouseX ;

  ellipse(297, 420, 500, 500);

  beginShape(TRIANGLE_FAN);
  fill(mouseX, mouseY, mouseX, random(255));
  vertex(x1, xPosition);
  vertex(random, random); 
  vertex(x1, random); 
  vertex(random, 0); 
  vertex(x3, random); 
  vertex(random, random); 
  vertex(yPosition, yPosition);
  vertex(xPosition, x3); 
  vertex(x1, -420); 
  vertex(x3, x3); 
  vertex(x3, x1); 
  vertex(yPosition, 420); 
  x1 = 100;
  x3 = random(255);
  xPosition = mouseX ;
  yPosition = mouseY ;

  endShape();


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
