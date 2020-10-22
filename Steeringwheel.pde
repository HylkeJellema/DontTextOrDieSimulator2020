class Wheel { 
 
  PImage wheel; 
 
  Wheel() { 
    wheel = loadImage("steering.png"); 
  } 
  void straight() { 
    image(wheel, 200, 400); 
  }
  void left() {
    pushMatrix();
    imageMode(CENTER);
    rotate(PI/2);
    image(wheel, 200, 400);
    imageMode(CORNER);
    popMatrix();
  }
  void right() {
    pushMatrix();
    imageMode(CENTER);    
    rotate(-(PI/2));
    image(wheel, 200, 400);
    imageMode(CORNER);    
    popMatrix();
  }
} 
