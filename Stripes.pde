class Stripes {
  int counter;  //initiate number variables
  int widt;
  int lengt;
  float a;
  float y;  //initiate local coordinates
  float x;
  color stripesColor; //initiate stripe color

  Stripes() {
    stripesColor = color(250, 250, 250); //set stripecolor
    counter = 0;  //give number variables initial values
    a = 2;
    lengt=3;
    widt=1;
    x = xCoor;  //set local coordinates
    y = yCoor;
  }

  void display() {
    fill(stripesColor);  
    rect(x, y, widt, lengt);//draw stripe
    if (counter%2==0) {     //loop for changing stripe coordinates and dimensions
      if (counter%8==0) {   //loop for changing x coordinate and width dimensions which happens 4 times less often
        widt= widt +2;      //stripewidth increase
        x--;                //x coordinate decrease so stripe stays centered
      }
      lengt= lengt+2;       //increase stripelength
      a = a*1.1;            //increase speed variable +- exponentionaly 
      y = y +a ;            //increase y coordinate with speed var
      if (y>=yCoor+150) {   //loop to reset stripe after certain coordinate
        y=yCoor;
        x=xCoor;
        widt = 1;
        lengt = 3;
        a = 2;
      }
    }
    counter++;              //increase counter
  }
  void left(){              //function for moving stripes when steering left
    x=x+2;                  
  }
  void right(){             //function for moving stripes when steering right
    x=x-2;
  }
}
