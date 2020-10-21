class Phone {

  float x, y;
  PImage[] phoneHans = new PImage[3];
  PImage[] phoneHylke = new PImage[3];


  Phone(float x, float y) {
    this.x=x;
    this.y=y;
    for (int i=0; i<phoneHylke.length; i++) {
      int a=i+1;
      phoneHans[i] = loadImage("img/PhoneHy"+a+".png");
    }    
    for (int i=0; i<phoneHans.length; i++) {
      int a=i+1;
      phoneHans[i] = loadImage("img/PhoneHa"+a+".png");
    }
  }

  void display() {
  
  }
  void ring() {                 //used for only ring sound if you dont want phone to show
    if (!vib.isPlaying()) {     //checks if sound is already playing
      vib.play();               //plays sound if not already
    }
  }
}
