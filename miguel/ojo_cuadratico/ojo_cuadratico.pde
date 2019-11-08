import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////
int x =  mouseY+100 ;

void yourPosterCode() {


  beginShape();

  fill(mouseX+mouseY,mouseY,mouseX*mouseY, 255);
  stroke(mouseX-x, 100);
  rectMode(CENTER);
  line(297, 420, random(10+mouseX), random(100));
  line(297, 420, random(50*mouseY), random(25*mouseX));
  line(297, 420, random(75+mouseX), random(125+mouseY));
  line(297, 420, random(10+mouseX), random(50));

  endShape();



  beginShape();

  fill(mouseX+mouseY,mouseY,mouseX*mouseY, 10);
  ellipse(297, 420, 500, 500);
  
  noFill();
  rect(297, 420, 100, mouseX); 
  x =  mouseX;
  
  fill(mouseX+mouseY,mouseY,mouseX*mouseY, 10);
  ellipse(297, 420, 500, 500);
  
  noFill();
  rect(mouseX, mouseY, 100, mouseX); 
  x =  mouseX;


  endShape();


  beginShape();
  for (int i = 5+width; i < height; i += 5) {
    stroke(mouseX);   // Set the color to white
    if (i < height) {  // When 'i' is less than 35...
      stroke(0);   //...set the color to black
    }
    line(mouseY, i, mouseX, i);
  }

  fill(250, 0, 180, 100);
  rect(297, 420, 100, 100);
  ellipse(297, 420, 100, 100);


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
  frameRate(60);
}

void draw() {
  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second(); 

  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf"); 

//  background(255); 

  yourPosterCode(); 

  if (record) endRecord(); 
  if (record) save("output/PNG/" + filename + ".png"); 

  record = false;
}
