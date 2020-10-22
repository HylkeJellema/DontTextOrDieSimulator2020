class Wheel { 
 
  PImage wheel; 
 
  Wheel() { 
    wheel = loadImage("steering.png"); 
  } 
  void display() { 
    rectMode(CENTER); 
    image(wheel, xCoor-300, yCoor+100); 
  } 
} 
