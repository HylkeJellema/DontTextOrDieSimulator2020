class Phone {

  float x, y; //used for location
  int counter, counter1, i; //counter for phone movement animaion, counter for ring animation, i for current frame phone
  boolean hansPhone;  //when true hans will call, else hylke
  boolean floatUp; //true alsong as phone has movement up
  boolean remove; //makes phone dissapear
  PImage[] phoneHans = new PImage[3]; //load images
  PImage[] phoneHylke = new PImage[3];


  Phone(float x, float y) { //contructor
    this.x=x; //sets object x,y equal to given
    this.y=y;
    i=0;
    floatUp=true;
    for (int i=0; i<phoneHylke.length; i++) { //load 3 frames for both phones
      int a=i+1;
      phoneHylke[i] = loadImage("PhoneHy"+a+".png");
    }    
    for (int i=0; i<phoneHans.length; i++) {
      int a=i+1;
      phoneHans[i] = loadImage("PhoneHa"+a+".png");
    }
    if (random(1)>0.5) { //50/50 chance between both callers
      hansPhone=true;
    }
  }

  void display() {
    if (!remove) { //only displays phone when remove is still false
      counter1++;

      if (hansPhone) { //depending which caller will choose correct image
        image(phoneHans[i], x, y, 300, 600);
      } else {
        image(phoneHylke[i], x, y, 300, 600);
      }
      if (counter1%40==0) { //math behind animation. every 40 frames new iamge.
        if (i<2) {
          i++;
        } else {
          i=0;
        }
      }
    }
    if (y==42) { //when phone is high enough it will stop floatup 
      floatUp=false;
      counter++;
    }
    if (floatUp) { //only when not at level will move phone up
      y=y-2;
    }
    if (counter==120) { //when counted to 120 frames phone will dissapear and dad will be spawned
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
