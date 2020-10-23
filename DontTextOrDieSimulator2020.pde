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

boolean withText; //general boolean for text and drive
boolean pressedMouse;
float xMouse;
float yMouse;
float xCoor;
float yCoor;
int stage;
int timerStart;
SoundFile vib;
Phone phone;
Start startscrn;
Drive drivescrn;

void setup() {
  stage=1;
  withText = false;
  size(1000, 600);
  xCoor = width/2;
  yCoor = height/2;
  phone = new Phone(350, 800);
  vib = new SoundFile(this, "vib.mp3");
  startscrn = new Start();
  drivescrn = new Drive();
}

void draw() {
  xMouse = mouseX;
  yMouse = mouseY;  
  pressedMouse = mousePressed;  //display function

  if (stage==1) { //start screen
    startscrn.display();
  }

  if (stage==2) { //game
    drivescrn.display();
  }
}

void keyPressed() {
  if (key == 'a') {
    drivescrn.left();
  }
  if (key == 'd') {
    drivescrn.right();
  }
}

void keyReleased() {
  drivescrn.straight();
}
