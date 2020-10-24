class endScreen {

  int counter;
  PImage family;
  PImage stage3;
  int opacity;

  endScreen() {
    family = loadImage("fam.png");
    stage3= loadImage("stage3.png");
    opacity=255;
  }
  void display() {
    counter++;
    if (counter<100) { //black screen first
      background(0);
    } 
    if (counter>=100&&counter<500) { //then lives left
      image(stage3, 0, 0);
    }
    if (counter>=500&&counter<1000) { //then family with dad disapearing
      background(0);
      image(family, 250, 0);
      tint(255, opacity);
      image(dad, -10, 20);
      noTint();
      opacity--;
    }
  }
}
