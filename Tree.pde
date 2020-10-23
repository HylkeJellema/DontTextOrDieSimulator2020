class Tree {
  color leaveColor; //initiate colors
  color trunkColor;
  float leaveHeight;  // initiate number variables
  float leaveWidth;
  float trunkWidth;
  float trunkHeight;
  int counter;
  float speedVert;
  float speedHori;
  float rando;  
  float x;  //initiate local coordinates
  float y;

  Tree() {
    leaveColor = color(0,51,0);    //set colors
    trunkColor = color(51, 25, 0);
    leaveHeight = 80;  //set height of leaves to 80
    leaveWidth = 40;   //set width of leaves to 40
    x = xCoor+320;     //set local coordinates
    y = yCoor-10;
    counter = 0;       //set initial value counter
    speedVert = 1;     //set initial speed values
    speedHori = 1;
  }

  void display() {
    trunkWidth = leaveWidth/4;  //change width of tree trunk for width of leaves
    trunkHeight = leaveHeight/6;  //change height of tree trunk for height of leaves
    fill(leaveColor);
    triangle(x, y, x+leaveWidth, y, x+(leaveWidth/2), y-leaveHeight); //draw leaves
    fill(trunkColor);
    rectMode(CENTER);  
    rect(x+(2*trunkWidth), y+(trunkHeight/2), trunkWidth, trunkHeight); //draw tree trunk
    rectMode(CORNER);
    if (counter%2==0) {  //loop for changing coordinates and dimensions of the tree
        leaveWidth= leaveWidth +4;  //increase width of leaves
        x = x + 2*speedHori;  //increase x coordinates using horizontal speed
      leaveHeight= leaveHeight+8;  //increase height of leaves
      speedVert = speedVert*1.1;  //increase vertical speed exponentially
      speedHori = speedHori*1.1;  //increase horizontal speed exponentially
      y = y + speedVert;  //change y coordinates using vertical speed
      if (y>=yCoor+300) {  // reset trees on a random side after y has increased to certain value
        y=yCoor-10;  //initial values reset
        leaveWidth = 40;
        leaveHeight = 80; 
        speedVert = 1;
        rando = int(random(2)); //randomly assign 0 or 1 to rando
        if(rando==0){ //if 0 draw tree right
          x=xCoor+320;
          speedHori = 1; //horizontal speed positive to move right
        }else if(rando==1){ //if 1 draw tree left
          x=xCoor-330-leaveWidth;
          speedHori = -1; //horizontal speed negative to move left
        }
        
      }
    }    
    counter++;  //increase counter
  }
}
