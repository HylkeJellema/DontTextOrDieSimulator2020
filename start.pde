class Start {

  color backgroundColor;
  color textColor;
  color boxColor;
  boolean hoverSafe;
  boolean hoverUnsafe;
  float xPos, yPos;

  Start(float xPos, float yPos) { 
    backgroundColor = color(0, 0, 0);
    textColor = color(255, 255, 255);
    boxColor = color(255, 255, 255, 100);
    this.xPos = xPos;
    this.yPos = yPos;
  }

  void display(float xMouse, float yMouse, boolean pressedMouse) {
    background(backgroundColor);
    textSize(60);
    textAlign(CENTER);
    fill(textColor);
    rectMode(CENTER);
    text("DON'T", xPos, yPos-80); //draw dont text and drive
    text("TEXT", xPos, yPos);
    text("AND", xPos, yPos+80);
    text("DRIVE", xPos, yPos+ 160);
    if (xMouse <= xPos+100 && xMouse >= xPos-100) {  //checks coordinates if mouse is above don't
      if (yMouse < yPos-70 && yMouse > yPos-150) {  //""
        hoverSafe = true;  //booleans set which update function depends on
        hoverUnsafe = false;
        hover(hoverSafe, hoverUnsafe, pressedMouse); //update screen
      }
      if (yMouse > yPos-70 && yMouse < yPos+185) {  //checks if mouse is above text and drive
        hoverUnsafe = true;  //booleans set for the update function
        hoverSafe = false;
        hover(hoverSafe, hoverUnsafe, pressedMouse);  //update screen
      }
    }
  }

  void hover(boolean safe, boolean unsafe, boolean pressed) {
    strokeWeight(0);
    fill(boxColor);
    if (safe) {
      rect(xPos, yPos+15, 200, 330); //shows box above all text if mouse is above dont
      if (pressed) { //start stage 2 if clicked
        withText = false; 
        setStage(2);
        timerStart = millis();//create timestamd start stage 2
      }
    }
    if (unsafe) {  //shows box above 
      rect(xPos, yPos+60, 200, 250); //shows box above text and drive if mouse is above
      if (pressed) { //start stage 2 if clicked
        withText = true;
        setStage(2);
        timerStart = millis(); //creates timestamp start stage 2
      }
    }
  }
}
