class Start {

  color backgroundColor;
  color textColor;
  color boxColor;
  boolean hoverSafe;
  boolean hoverUnsafe;

  Start() { 
    backgroundColor = color(0, 0, 0);
    textColor = color(255, 255, 255);
    boxColor = color(255, 255, 255, 100);
  }

  void display() {
    background(backgroundColor);
    textSize(60);
    textAlign(CENTER);
    fill(textColor);
    rectMode(CENTER);
    text("DON'T", xCoor, yCoor-80);
    text("TEXT", xCoor, yCoor);
    text("AND", xCoor, yCoor+80);
    text("DRIVE", xCoor, yCoor+ 160);
        if (xMouse <= xCoor+100 && xMouse >= xCoor-100) {  //checks coordinates if mouse is above don't
      if (yMouse < yCoor-70 && yMouse > yCoor-150) {  //""
        hoverSafe = true;  //booleans set which update function depends on
        hoverUnsafe = false;
        hover(hoverSafe, hoverUnsafe, pressedMouse); //update screen
      }
      if (yMouse > yCoor-70 && yMouse < yCoor+185) {  //checks if mouse is above text and drive
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
      rect(xCoor, yCoor+15, 200, 330); //shows box above all text if mouse is above dont
      if (pressed) {
        withText = true; 
        stage = 2;
      }
    }
    if (unsafe) {  //shows box above 
      rect(xCoor, yCoor+60, 200, 250);
      if (pressed) {
        withText = false;
        stage = 2;
      }
    }
  }
}
