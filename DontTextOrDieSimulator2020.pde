/* Hylke Jellema S2192098
 Hans Nielen S2336693
 Final Project: DontTextOrDieSimulator2020
 Based on a don't text or die PSA.
 You'll get the choice to either text and drive or don't text and drive.
 Based on this decision your experience will change.
 sounds by freesfx.co.uk
 */

import processing.sound.*;
import processing.video.*;

boolean withText; //general boolean for text and drive
boolean pressedMouse;
float xMouse;
float yMouse;
float xCoor;
float yCoor;
int stage;
int timerStart;
SoundFile vib;
SoundFile crashSound;
Phone phone;
Start startscrn;
Drive drivescrn;
PImage stage3;
PImage dad;
int counter;

void setup() {
  stage=1;
  withText = false;
  size(1000, 600);
  xCoor = width/2;
  yCoor = height/2;
  phone = new Phone(350, 800);
  vib = new SoundFile(this, "vib.mp3");
  crashSound = new SoundFile(this, "car.mp3");
  stage3= loadImage("stage3.png");
  dad = loadImage("dad.png");
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
  if (stage==3) {
    counter++;
    if (counter<100) {
      background(0);
    } 
    if (counter>=100&&counter<500) {
      image(stage3, 0, 0);
    }
    if (counter>=500&&counter<1000) {
      background(0);
      image(dad, 50, 0);
    }
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
