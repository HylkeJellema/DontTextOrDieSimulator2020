class Stripes {
  int counter;  //initiate number variables
  int widt;
  int lengt;
  float speed;
  float xPos,yPos;  //initiate local coordinates
  color stripesColor; //initiate stripe color

  Stripes() {
    stripesColor = color(250, 250, 250); //set stripecolor
    counter = 0;  //give number variables initial values
    speed = 2;
    lengt=3;
    widt=1;
    xPos = xCoor;  //set local coordinates
    yPos = yCoor;
  }

  void display() {
    fill(stripesColor);  
    rect(xPos, yPos, widt, lengt);//draw stripe
    if (counter%2==0) {     //loop for changing stripe coordinates and dimensions
      if (counter%8==0) {   //loop for changing x coordinate and width dimensions which happens 4 times less often
        widt= widt +2;      //stripewidth increase
        xPos--;                //x coordinate decrease so stripe stays centered
      }
      lengt= lengt+2;       //increase stripelength
      speed = speed*1.1;            //increase speed variable +- exponentionaly 
      yPos = yPos +speed ;            //increase y coordinate with speed var
      if (yPos>=yCoor+150) {   //loop to reset stripe after certain coordinate
        yPos=yCoor;
        xPos=xCoor;
        widt = 1;
        lengt = 3;
        speed = 2;
      }
    }
    counter++;              //increase counter
  }
  void left(){              //function for moving stripes when steering left
    xPos=xPos+2;                  
  }
  void right(){             //function for moving stripes when steering right
    xPos=xPos-2;
  }
}
