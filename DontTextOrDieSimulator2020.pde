import processing.video.*;

import processing.video.*;

/* Hylke Jellema S2192098
 Hans Nielen S2336693
 Final Project: DontTextOrDieSimulator2020
 Based on a don't text or die PSA.
 You'll get the choice to either text and drive or don't text and drive.
 Based on this decision your experience will change.
 */

import processing.sound.*;

boolean start;  // boolean for startscreen
boolean doText; //general boolean for text and drive
boolean dontText; //general boolean for just drive
boolean left;
boolean right;
float size;
float xMouse;
float yMouse;
float xCoor;
float yCoor;
Display scrn;
SoundFile vib;
Phone phone;

void setup() {
  start = true;
  doText = false;
  dontText = false;
  left=false;
  right=false;
  size = 1;
  size(1000, 600);
  xCoor = width/2;
  yCoor = height/2;
  scrn = new Display();
  phone = new Phone(0, 0);
  vib = new SoundFile(this, "sound/vib.mp3");
}

void draw() {
  xMouse = mouseX;
  yMouse = mouseY;  
  scrn.showDisplay(mousePressed);  //display function
}

void keyPressed() {
  if (key == 'a') {
    left =true;
    right =false;
  }
  if (key == 'd') {
    right =true;
    left =false;
  }
}

  void keyReleased() {
    right = false;
    left = false;
  }
