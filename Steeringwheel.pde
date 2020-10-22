class Wheel { 

  PImage wheel; 
  int x, y;

  Wheel() { 
    wheel = loadImage("steering.png"); 
    x=300;
    y=520;
  } 
  void straight() { 
    pushMatrix();
    imageMode(CENTER);
    image(wheel, x, y); 
    imageMode(CORNER);
    popMatrix();
  }
  void left() {
    pushMatrix();
    imageMode(CENTER);
    translate(x,y);
    rotate(radians(-20));
    image(wheel, 0, 0);
    imageMode(CORNER);
    popMatrix();
  }
  void right() {
    pushMatrix();
    imageMode(CENTER);    
    translate(x,y);
    rotate(radians(20));
    image(wheel, 0, 0);
    imageMode(CORNER);    
    popMatrix();
  }
} 
