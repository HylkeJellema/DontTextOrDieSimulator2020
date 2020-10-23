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
  float speedVert;
  float speedHori;
  float rando;

  Tree() {
    leaveColor = color(0,51,0);
    trunkColor = color(51, 25, 0);
    leaveHeight = 80;
    leaveWidth = 40;
    x = xCoor+320;
    y = yCoor-10;
    counter = 0;
    speedVert = 1;
    speedHori = 1;
  }

  void display() {
    trunkWidth = leaveWidth/4;
    trunkHeight = leaveHeight/6;  
    fill(leaveColor);
    triangle(x, y, x+leaveWidth, y, x+(leaveWidth/2), y-leaveHeight);
    fill(trunkColor);
    rectMode(CENTER);
    rect(x+(2*trunkWidth), y+(trunkHeight/2), trunkWidth, trunkHeight);
    rectMode(CORNER);
    if (counter%2==0) {
      if (counter%4==0) {
        leaveWidth= leaveWidth +8;
        x = x + 2*speedHori;
      }
      leaveHeight= leaveHeight+8;
      speedVert = speedVert*1.1;
      speedHori = speedHori*1.1;
      y = y + speedVert;
      if (y>=yCoor+300) {
        y=yCoor-10;
        leaveWidth = 40;
        leaveHeight = 80; 
        speedVert = 1;
        rando = int(random(2));
        if(rando==0){
          x=xCoor+320;
          speedHori = 1;
        }else if(rando==1){
          x=xCoor-320-leaveWidth;
          speedHori = -1;
        }
        
      }
    }    
    counter++;
  }
}
