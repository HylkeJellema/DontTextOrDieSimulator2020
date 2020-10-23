class Phone {

  float x, y;
  int counter;
  boolean hansPhone;
  boolean floatUp;
  boolean remove;
  PImage[] phoneHans = new PImage[3];
  PImage[] phoneHylke = new PImage[3];


  Phone(float x, float y) {
    this.x=x;
    this.y=y;
    floatUp=true;
    for (int i=0; i<phoneHylke.length; i++) {
      int a=i+1;
      phoneHylke[i] = loadImage("PhoneHy"+a+".png");
    }    
    for (int i=0; i<phoneHans.length; i++) {
      int a=i+1;
      phoneHans[i] = loadImage("PhoneHa"+a+".png");
    }
    if (random(1)>0.5) {
      hansPhone=true;
    }
  }

  void display() {
    if (!remove) {
      if (hansPhone) {
        image(phoneHans[0], x, y, 300, 600);
      } else {
        image(phoneHylke[0], x, y, 300, 600);
      }
    }
    if (y==42) {
      floatUp=false;
      counter++;
    }
    if (floatUp) {
      y=y-2;
    }
    if (counter==120) {
      remove =true;
      drivescrn.spawnDad();
    }
  }

  void ring() {                 //ring phone
    if (!vib.isPlaying()) {     //checks if sound is already playing
      vib.play();               //plays sound if not already
    }
  }
}
