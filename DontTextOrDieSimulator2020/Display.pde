class Display {
  boolean hoverSafe;
  boolean hoverUnsafe;
  Start startscrn;
  Drive drivescrn;

  Display() {
    startscrn = new Start();
    drivescrn = new Drive();
    hoverSafe = false;
    hoverUnsafe = false;
  }

  void showDisplay(boolean pressed) {
    if (start == true) {  //checks if startscreen
      startscrn.displayScrn();
      if (xMouse <= xCoor+100 && xMouse >= xCoor-100) {  //checks coordinates if mouse is above don't
        if (yMouse < yCoor-70 && yMouse > yCoor-150) {  //""
          hoverSafe = true;  //booleans set which update function depends on
          hoverUnsafe = false;
          startscrn.updateScrn(hoverSafe, hoverUnsafe, pressed); //update screen
        }
        if (yMouse > yCoor-70 && yMouse < yCoor+185) {  //checks if mouse is above text and drive
          hoverUnsafe = true;  //booleans set for the update function
          hoverSafe = false;
          startscrn.updateScrn(hoverSafe, hoverUnsafe, pressed);  //update screen
        }
      }
    }
   else{
    drivescrn.displayScrn(); //display driving screen after an option has been selected
   }
  }
}
