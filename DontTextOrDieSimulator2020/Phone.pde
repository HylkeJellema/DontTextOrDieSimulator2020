class Phone {

  float x, y;
  boolean hans, hylke;
  PImage[] phoneHans = new PImage[3];
  PImage[] phoneHylke = new PImage[3];


  Phone(float x, float y) {
    this.x=x;
    this.y=y;
    for (int i=0; i<phoneHylke.length; i++) {
      int a=i+1;
      phoneHylke[i] = loadImage("PhoneHy"+a+".png");
    }    
    for (int i=0; i<phoneHans.length; i++) {
      int a=i+1;
      phoneHans[i] = loadImage("PhoneHa"+a+".png");
    }
    if (random(1)>0.5) {
      hans=true;
    }
  }

  void display() {
    if (hans) {
      image(phoneHans[0], x, y,200,400);
    } else {
      image(phoneHylke[0], x, y,200,400);
    }
  }
  void ring() {                 //used for only ring sound if you dont want phone to show
    if (!vib.isPlaying()) {     //checks if sound is already playing
      vib.play();               //plays sound if not already
    }
  }
}
