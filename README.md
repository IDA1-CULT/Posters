# Posters

Here you can share your poster code with other classmates if you want.

## Starting code if you are having trouble

```processing
import processing.pdf.*;

boolean record = false;

void keyPressed() {
  record = true;
}

void setup() {
  size(594, 841);
  //background(0); 
  
}


void draw() {
  
   String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();
  
  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf");
  
  //  Put your poster code below this line
  
  
  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");
  
  record = false;
}

```
