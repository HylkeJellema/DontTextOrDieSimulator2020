class Drive {
  boolean left, right;
  color interiorColor;
  color skyColor;
  color roadColor;
  color wheelColor;
  color grassColor;
  color stripesColor;
  int counter;
  float a;
  float lengt;
  float widt;
  float x;
  float y;
  Wheel wheel;
  PImage background;

  Drive() {
    interiorColor = color(150, 75, 0);
    grassColor = color(0, 60, 20);
    skyColor = color(42, 26, 71);
    roadColor = color(37, 37, 37);
    stripesColor = color(250, 250, 250);
    background = loadImage("background.png");
    counter = 0;
    a = 2;
    lengt=3;
    widt=1;
    x = xCoor;
    y = yCoor;
    wheel = new Wheel();
  }

  void display() {
    noStroke();
    background(grassColor);

    rectMode(CORNER);
    image(background,0,0);
    fill(roadColor);
    quad(xCoor+275, yCoor, xCoor-275, yCoor, 
      xCoor-500, 2*(yCoor), xCoor+500, 2*(yCoor));
    fill(stripesColor);
    rect(x, y, widt, lengt);
    if (counter%2==0) {
      if (counter%8==0) {
        widt= widt +2;
        x--;
      }
      lengt= lengt+2;
      a = a*1.1;
      y = y +a ;
      if (y>=yCoor+150) {
        y=yCoor;
        x=xCoor;
        widt = 1;
        lengt = 3;
        a = 2;
      }
    }    
    counter++;
    fill(interiorColor);
    rect(0, 0, 1000, 20);
    quad(100, 20, 200, 450, 160, 450, -10, 20);
    quad(900, 20, 800, 450, 840, 450, 1010, 20);
    quad(840, 450, 1000, 480, 0, 480, 160, 450);
    rect(0, 480, 1000, 120);
    steering();
    if (withText) {
      phone.display();
      phone.ring();
    }
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
      x=x+2;
    } else {
      if (right) {
        wheel.right();      
        xCoor=xCoor-2;
        x=x-2;
      }
    } 
    if (!left && !right) {
      wheel.straight();
    }
  }
}
