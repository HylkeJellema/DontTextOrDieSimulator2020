class Drive {
  color interiorColor;
  color skyColor;
  color roadColor;
  color wheelColor;
  color grassColor;
  color stripesColor;
  int counter;
  float a;
  float lengt;
  float widt;
  float x;
  float y;

  Drive() {
    interiorColor = color(150, 75, 0);
    grassColor = color(0, 60, 20);
    skyColor = color(42, 26, 71);
    roadColor = color(37, 37, 37);
    stripesColor = color(250, 250, 250);
    counter = 0;
    a = 2;
    lengt=3;
    widt=1;
    x = xCoor;
    y = yCoor;
  }

  void displayScrn() {
    noStroke();
    background(grassColor);
    fill(skyColor);
    rectMode(CORNER);
    rect(0, 0, 2*(xCoor), yCoor);
    fill(roadColor);
    quad(xCoor+20, yCoor, xCoor-20, yCoor, 
      xCoor-500, 2*(yCoor), xCoor+500, 2*(yCoor));
    fill(stripesColor);
    rect(x, y, widt, lengt);
    if (counter%2==0) {
      if(counter%8==0){
      widt= widt +2;
      x--;      
      }
      lengt= lengt+2;
      a = a*1.1;
      y = y +a ;
      if(y>=yCoor+150){
        y=yCoor;
        x=xCoor;
        widt = 1;
        lengt = 3;
        a = 2;
      }
    }
    
    counter++;
    fill(interiorColor);
    rect(0, 0, (2*xCoor), 20);
    quad(xCoor-400, yCoor-280, xCoor-300, yCoor+150, 
      xCoor-340, yCoor+150, xCoor-510, yCoor-280);
    quad(xCoor+400, yCoor-280, xCoor+300, yCoor+150, 
      xCoor+340, yCoor+150, xCoor+510, yCoor-280);
    quad(xCoor+340, yCoor+150, xCoor+500, yCoor+180, xCoor-500, yCoor+180, 
      xCoor-340, yCoor+150);
    rect(0, yCoor+180, (2*xCoor), 120);
      phone.display();
      phone.ring();
  }
}
