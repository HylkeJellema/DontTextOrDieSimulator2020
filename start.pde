class Start {

  color backgroundColor;
  color textColor;
  color boxColor;

  Start() { 
    backgroundColor = color(0, 0, 0);
    textColor = color(255, 255, 255);
    boxColor = color(255, 255, 255, 100);
  }

  void displayScrn() {
    background(backgroundColor);
    textSize(60);
    textAlign(CENTER);
    fill(textColor);
    rectMode(CENTER);
    text("DON'T", xCoor, yCoor-80);
    text("TEXT", xCoor, yCoor);
    text("AND", xCoor, yCoor+80);
    text("DRIVE", xCoor, yCoor+ 160);
  }

  void updateScrn(boolean safe, boolean unsafe, boolean pressed) {
    strokeWeight(0);
    fill(boxColor);
    if (safe) {
      rect(xCoor, yCoor+15, 200, 330); //shows box above all text if mouse is above dont
      if(pressed){
       doText = true; 
       start = false;
       background(255,255,255);
      }
    }
    if (unsafe) {  //shows box above 
      rect(xCoor, yCoor+60, 200, 250);
      if(pressed){
        dontText = true;
        start = false;
        background(255,255,255);
      }
    }
  }
}
