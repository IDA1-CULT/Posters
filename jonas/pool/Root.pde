// Simple bouncing ball class

class Root {

  float x;
  float y;
  float r;
  PShape circle;
  color c = color(0,0,0);

  Root(float tempX, float tempY, float tempRadius) {
    x = tempX;
    y = tempY;
    r = tempRadius;
    circle =createShape(ELLIPSE, x, y, r, r);
  }


  void setPosition(float newX, float newY) {
    x=newX;
    y=newY;
  }

  void setRadius(float newR) {
    r=newR;
  }
  
  void setColor(color newCol){
c= newCol;
  }

  void render() {
    beginShape();
    circle =createShape(ELLIPSE, x, y, r, r);
    circle.setFill(c);
    endShape();
    shape(circle);
  }
}  
