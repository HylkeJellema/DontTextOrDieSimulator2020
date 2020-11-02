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
  float xPos;  //initiate local coordinates
  float yPos;

  Tree() {
    leaveColor = color(0,51,0);    //set colors
    trunkColor = color(51, 25, 0);
    leaveHeight = 80;  //set height of leaves to 80
    leaveWidth = 40;   //set width of leaves to 40
    xPos = xCoor+320;     //set local coordinates
    yPos = yCoor-10;
    counter = 0;       //set initial value counter
    speedVert = 1;     //set initial speed values
    speedHori = 1;
  }

  void display() {
    trunkWidth = leaveWidth/4;  //change width of tree trunk for width of leaves
    trunkHeight = leaveHeight/6;  //change height of tree trunk for height of leaves
    fill(leaveColor);
    triangle(xPos, yPos, xPos+leaveWidth, yPos, xPos+(leaveWidth/2), yPos-leaveHeight); //draw leaves
    fill(trunkColor);
    rectMode(CENTER);  
    rect(xPos+(2*trunkWidth), yPos+(trunkHeight/2), trunkWidth, trunkHeight); //draw tree trunk
    rectMode(CORNER);
    if (counter%2==0) {  //loop for changing coordinates and dimensions of the tree
        leaveWidth= leaveWidth +4;  //increase width of leaves
        xPos = xPos + 2*speedHori;  //increase x coordinates using horizontal speed
      leaveHeight= leaveHeight+8;  //increase height of leaves
      speedVert = speedVert*1.1;  //increase vertical speed exponentially
      speedHori = speedHori*1.1;  //increase horizontal speed exponentially
      yPos = yPos + speedVert;  //change y coordinates using vertical speed
      if (yPos>=yCoor+300) {  // reset trees on a random side after y has increased to certain value
        yPos=yCoor-10;  //initial values reset
        leaveWidth = 40;
        leaveHeight = 80; 
        speedVert = 1;
        rando = int(random(2)); //randomly assign 0 or 1 to rando
        if(rando==0){ //if 0 draw tree right
          xPos=xCoor+320;
          speedHori = 1; //horizontal speed positive to move right
        }else if(rando==1){ //if 1 draw tree left
          xPos=xCoor-330-leaveWidth;
          speedHori = -1; //horizontal speed negative to move left
        }
        
      }
    }    
    counter++;  //increase counter
  }
}
