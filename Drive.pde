class Drive{
 color interiorColor;
 color skyColor;
 color roadColor;
 color wheelColor;
 color grassColor;
 
 Drive(){
   interiorColor = color(150,75,0);
   grassColor = color(0,60,20);
   skyColor = color(42,26,71);
 }
 
 void displayScrn(){
   background(interiorColor);
   fill(skyColor);
   quad(xCoor-400, yCoor-280, xCoor-300,yCoor+150,xCoor+300, yCoor+150 ,
     xCoor+400, yCoor-280);
   triangle(0, yCoor-250, xCoor-350, yCoor+150, 0, yCoor+170);
   triangle(2*(xCoor), yCoor-250, xCoor+350, yCoor+150, 2*(xCoor), yCoor+170);
   fill(grassColor);
   quad(xCoor-300, yCoor+150, xCoor+300, yCoor+150, 
   xCoor+300+(100.0/3.0), yCoor-1,xCoor-300-(100.0/3.0), yCoor-1);
   quad(0, yCoor-1, 0, yCoor+170, xCoor-350, yCoor+150, xCoor-410, yCoor-1);
   quad(2*(xCoor), yCoor-1, 2*(xCoor), yCoor+170, xCoor+350, yCoor+150, xCoor+410, yCoor-1);
 }
}
