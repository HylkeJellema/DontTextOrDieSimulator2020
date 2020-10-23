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
int opacity;
SoundFile vib;
SoundFile crashSound;
Phone phone;
Start startscrn;
Drive drivescrn;
PImage stage3;
PImage dad;
PImage family;
int counter;

void setup() {
  stage=1;
  withText = false;
  opacity=255;
  size(1000, 600);
  xCoor = width/2;
  yCoor = height/2;
  phone = new Phone(350, 800);
  vib = new SoundFile(this, "vib.mp3");
  crashSound = new SoundFile(this, "car.mp3");
  stage3= loadImage("stage3.png");
  dad = loadImage("dad.png");
  family = loadImage("fam.png");
  startscrn = new Start();
  drivescrn = new Drive();
}

void draw() {
  xMouse = mouseX;
  yMouse = mouseY;  
  pressedMouse = mousePressed;  //display function

  if (stage==1) { //start screen stage
    startscrn.display();
  }

  if (stage==2) { //game stage
    drivescrn.display();
  }
  if (stage==3) { //end screen
    counter++;
    if (counter<100) { //black screen first
      background(0);
    } 
    if (counter>=100&&counter<500) { //then lives left
      image(stage3, 0, 0);
    }
    if (counter>=500&&counter<1000) { //then family with dad disapearing
      background(0);
      image(family, 250,0);
      tint(255, opacity);
      image(dad, -10, 20);
      noTint();
      opacity--;
    }
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
