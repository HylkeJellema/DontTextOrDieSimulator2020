class Drive {
  boolean left, right;
  boolean showDad;
  color interiorColor;
  color skyColor;
  color roadColor;
  color wheelColor;
  color grassColor;
  Wheel wheel;
  PImage background;
  PImage dad;
  Tree tree;
  Stripes stripe;
  float xpand=237;
  float ypand=496;

  Drive() {
    interiorColor = color(150, 75, 0);
    grassColor = color(0, 60, 20);
    skyColor = color(42, 26, 71);
    roadColor = color(37, 37, 37);
    background = loadImage("background.png");
    dad = loadImage("dad.png");
    wheel = new Wheel();
    tree = new Tree();
    stripe = new Stripes();
  }

  void display() {
    noStroke();
    background(grassColor);

    rectMode(CORNER);
    image(background, 0, 0);
    fill(roadColor);
    quad(xCoor+275, yCoor, xCoor-275, yCoor, 
      xCoor-500, 2*(yCoor), xCoor+500, 2*(yCoor));
    stripe.display();  
    dad();
    tree.display();
    fill(interiorColor);
    rect(0, 0, 1000, 20);
    quad(100, 20, 200, 450, 160, 450, -10, 20);
    quad(900, 20, 800, 450, 840, 450, 1010, 20);
    quad(840, 450, 1000, 480, 0, 480, 160, 450);
    rect(0, 480, 1000, 120);
    steering();
    if (withText /*&& (millis()-timerStart>=5000)*/) {
      phone.display();
      phone.ring();
    }
  }
  void dad() {
    if (showDad) {
      xpand= xpand *1.03;
      ypand= ypand  *1.03;
      imageMode(CENTER);
      image(dad, 525, 400, xpand, ypand);
      imageMode(CORNER);
      if (xpand >1100) {
        stage = 3;
      }
    }
  }
  void spawnDad() {
    showDad=true;
  }
  void right() {
    left = false;
    right = true;
  }
  void left() {
    left = true;
    right = false;
  }
  void straight() {
    left = false;
    right = false;
  }
  void steering() {
    if (left) {
      wheel.left();      
      xCoor=xCoor+2;
      stripe.left();
    } else {
      if (right) {
        wheel.right();      
        xCoor=xCoor-2;
        stripe.right();
      }
    } 
    if (!left && !right) {
      wheel.straight();
    }
  }
}
