import processing.pdf.*;

boolean record = false;

ArrayList<Root> roots = new ArrayList<Root>();
ArrayList<Root> balls = new ArrayList<Root>();

int rootAmount = 50;

void keyPressed() {
  record = true;
}

void setup() {
  size(594, 841);
  //background(0); 

  frameRate(40);

  for (int c =0; c<rootAmount; c+=1) {
    roots.add(
      new Root(random(width), random(height), 50)
      );
  }


  for (int c =0; c<200; c+=1) {
    balls.add(
      new Root(random(width), random(height), 5)
      );
  }
}


void draw() {

  String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();

  if (record) beginRecord(PDF, "output/PDF/" + filename + ".pdf");

  //  Put your poster code below this line

if(frameCount < 1000){
  for (int i=0; i<balls.size(); i+=1) {
    noStroke();
    colorMode(HSB, 100);
    Root ball = balls.get(i);
    //ball.render();

    Root target = roots.get(i%rootAmount);

    float newX = ball.x + (
    (target.x - ball.x)*ball.r*0.00001
    );
    
    float newY = ball.y + (
    (target.y - ball.y)*ball.r*0.00001
    );
    
    ball.setPosition(newX, newY);
    ball.setRadius(100- (frameCount/10));
    
    
    
    ball.setColor(color(frameCount%50+30, 50, 100));
    ball.render();
  }

}
  for (Root r : roots) {
        r.setPosition(r.x + random(-40,50), r.y +random(-50,40));
  }

  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");

  record = false;
}
