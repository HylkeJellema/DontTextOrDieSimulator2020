class Tree {
  color leaveColor;
  color trunkColor;
  float leaveHeight;
  float leaveWidth;
  float trunkWidth;
  float trunkHeight;
  float x;
  float y;
  int counter;
  float a;
  float b;

  Tree() {
    leaveColor = color(0,51,0);
    leaveHeight = 80;
    leaveWidth = 40;
    x = xCoor+320;
    y = yCoor-30;
    counter = 0;
    a = 1;
    b = 1;
  }

  void display() {
    trunkWidth = leaveWidth/4;
    trunkHeight = leaveHeight/6;  
    fill(leaveColor);
    triangle(x, y, x+leaveWidth, y, x+(leaveWidth/2), y-leaveHeight);

    if (counter%2==0) {
      if (counter%4==0) {
        leaveWidth= leaveWidth +8;
        b = b * 1.1;
        x = x+a;
      }
      leaveHeight= leaveHeight+8;
      a = a*1.1;
      y = y +a ;
      if (y>=yCoor+300) {
        y=yCoor-30;
        x=xCoor+320;
        leaveWidth = 40;
        leaveHeight = 80;
        a = 1;
        b = 1;
      }
    }    
    counter++;
  }
}
