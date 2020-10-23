class Wheel { 

  PImage wheel; //initiate image and variables
  int x, y;

  Wheel() { 
    wheel = loadImage("steering.png"); //load image and set local coordinates
    x=300;
    y=520;
  } 
  void straight() { //function for normal steering wheel
    imageMode(CENTER); //change imageMode for placing wheel
    image(wheel, x, y); //draw steering wheel
    imageMode(CORNER); //reset for other parts of program
  }
  void left() {
    pushMatrix();  //push matrix so steering wheel is isolated
    imageMode(CENTER);//change imageMode for placing wheel
    translate(x,y); //translate so rotate happens in center of the steering wheel
    rotate(radians(-20)); //rotate matrix
    image(wheel, 0, 0);  //draw steering wheel
    imageMode(CORNER); //reset for other parts of program
    popMatrix(); //pop matrix so only steering wheel is turned
  }
  void right() {
    pushMatrix();  //push matrix so steering wheel is isolated
    imageMode(CENTER);  //change imageMode for placing wheel  
    translate(x,y);  //translate so rotate happens in center of the steering wheel
    rotate(radians(20)); //rotate matrix
    image(wheel, 0, 0);  //draw steering wheel
    imageMode(CORNER); //reset for other parts of program   
    popMatrix(); //pop matrix so only steering wheel is turned
  }
} 
