class Drive {
  boolean left, right;  //initiate steering booleans
  color interiorColor;  //initiate colors
  color skyColor;
  color roadColor;
  color wheelColor;
  color grassColor;
  PImage background;    //initiate images
  PImage dad;
  Tree tree;            //initiate objects
  Stripes stripe;
  Wheel wheel;
  
  Drive() {
    interiorColor = color(150, 75, 0);  //set colors
    grassColor = color(0, 60, 20);
    skyColor = color(42, 26, 71);
    roadColor = color(37, 37, 37);
    background = loadImage("background.png"); //set images
    dad = loadImage("dad.png");
    wheel = new Wheel();  //set objects
    tree = new Tree();
    stripe = new Stripes();
  }

  void display() {
    noStroke();
    background(grassColor);  //draw grass as background
    rectMode(CORNER);
    image(background, 0, 0);  //draw background image
    fill(roadColor);
    quad(xCoor+275, yCoor, xCoor-275, yCoor,   //draw road
    xCoor-500, 2*(yCoor), xCoor+500, 2*(yCoor));
    stripe.display();                 //call object for moving stripes
    dad.resize(400, 550);             //adjust image dimensions for a good fit
    image(dad, xCoor-100, yCoor-300); //draw image
    tree.display();                   //call object for moving trees
    fill(interiorColor);
    rect(0, 0, 1000, 20);             //draw interior
    quad(100, 20, 200, 450, 160, 450, -10, 20);
    quad(900, 20, 800, 450, 840, 450, 1010, 20);
    quad(840, 450, 1000, 480, 0, 480, 160, 450);
    rect(0, 480, 1000, 120);
    steering();                       //call object for steering wheel
    if (withText /*&& (millis()-timerStart>=5000)*/) { //if text and drive,
      phone.display();                                 //call object for phone
      phone.ring();                                    //and play sound
    }
  }
  void right() {
    left = false;                                      //change booleans for steering right
    right = true;
  }
  void left() {                                        //change booleans for steering left
    left = true;
    right = false;
  }
  void straight() {                                    //change booleans for driving straight
    left = false;
    right = false;
  }
  void steering() {                                    //function for steering and steering wheel
    if (left) {
      wheel.left();                                    //call function for steering wheel turning left
      xCoor=xCoor+2;                                   //change general x coordinate to the right
      stripe.left();                                   //function so stripes also move to the right
    } else {
      if (right) {                                     
        wheel.right();                                 //call function for steering wheel turning right
        xCoor=xCoor-2;                                 //change general x coordinate to the left
        stripe.right();                                //function so stripes also move to the left
      }
    } 
    if (!left && !right) {  
      wheel.straight();                                //function for normal steering wheel                                                        
    }
  }
}
