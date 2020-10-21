/* Hylke Jellema S......
 Hans Nielen S2336693
 Final Project: DontTextOrDieSimulator2020
 Based on a don't text or die PSA.
 You'll get the choice to either text and drive or don't text and drive.
 Based on this decision your experience will change.
 */

boolean start;  // boolean for startscreen
boolean Text; //general boolean for text and drive
boolean dont; //general boolean for just drive
float size;
float xMouse;
float yMouse;
float xCoor;
float yCoor;
Display scrn;

void setup() {
  start = true;
  Text = false;
  dont = false;
  size = 1;
  size(1000, 600);
  xCoor = width/2;
  yCoor = height/2;
  scrn = new Display();
}

void draw() {
  xMouse = mouseX;
  yMouse = mouseY;  
  scrn.showDisplay(mousePressed);  //display function
}
