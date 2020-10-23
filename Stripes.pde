class Stripes {
  int counter;
  int widt;
  int lengt;
  float a;
  float y;
  float x;
  color stripesColor;

  Stripes() {
    stripesColor = color(250, 250, 250);
    counter = 0;
    a = 2;
    lengt=3;
    widt=1;
    x = xCoor;
    y = yCoor;
  }

  void display() {
    fill(stripesColor);
    rect(x, y, widt, lengt);
    if (counter%2==0) {
      if (counter%8==0) {
        widt= widt +2;
        x--;
      }
      lengt= lengt+2;
      a = a*1.1;
      y = y +a ;
      if (y>=yCoor+150) {
        y=yCoor;
        x=xCoor;
        widt = 1;
        lengt = 3;
        a = 2;
      }
    }
    counter++;
  }
  void left(){
    x=x+2;
  }
  void right(){
    x=x-2;
  }
}
