import processing.pdf.*; //<>//

void setup() {
  String img = "your_image_here.png";

  PImage loadimg = loadImage(img);

  size(594, 841);
  loadimg.resize(width, height);

  pixelToVector(loadimg);
}


void pixelToVector(PImage input) {

  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();
  beginRecord(PDF, "output/PDF/" + filename + ".pdf");
  noStroke();


  //PImage input = get();  //input image
  for (int y =0; y<height; y+=1) {
    for (int x =0; x<width; x+=1) {

      int index = y * width  + x;
      color col = input.pixels[index];

      //draw a rect with the new color
      fill(col);
      rect(x, y, 1, 1);
    }
  }

  endRecord();
}

void draw() {
}
