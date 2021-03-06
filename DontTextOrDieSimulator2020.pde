/* Hylke Jellema S2192098
 Hans Nielen S2336693
 Final Project: DontTextOrDieSimulator2020
 Based on a don't text or die PSA.
 You'll get the choice to either text and drive or don't text and drive.
 Based on this decision your experience will change.
 sounds by freesfx.co.uk
 */

import processing.sound.*;

boolean withText; //general boolean for text and drive
boolean pressedMouse;
float xMid;
float yMid;
int stage;
int timerStart;
SoundFile vib;
SoundFile crashSound;
Phone phone;
Start startscrn;
Drive drivescrn;
endScreen endscrn;
PImage dad;

void setup() {
  stage=1;
  withText = false;
  size(1000, 600);
  xMid = width/2;
  yMid = height/2;
  phone = new Phone(350, 800);
  vib = new SoundFile(this, "vib.mp3");
  crashSound = new SoundFile(this, "car.mp3");
  dad = loadImage("dad.png");
  startscrn = new Start(xMid, yMid);
  drivescrn = new Drive(xMid, yMid);
  endscrn = new endScreen();
}

void draw() {

  if (stage==1) { //start screen stage
    startscrn.display(mouseX, mouseY, mousePressed);
  }

  if (stage==2) { //game stage
    drivescrn.display();
  }
  if (stage==3) { //end screen
    endscrn.display();
  }
}

void keyPressed() { //to move the car left and right
  if (key == 'a') {
    drivescrn.left();
  }
  if (key == 'd') {
    drivescrn.right();
  }
}

void keyReleased() { //reset direction boolean in drive class
  drivescrn.straight();
}

void setStage(int stage) {
  this.stage=stage;
}
