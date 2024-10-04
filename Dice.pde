void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  int sum = 0;
  background(#1AA232);
  for(int y = 35; y < 450; y += 90) {
    for(int x = 35; x < 450; x += 90) {
      Die bob = new Die (x, y);
      bob.show();
      sum += bob.numDots;
    }
  }
  
  textSize(20);
  textAlign(CENTER);
  text("Sum: " + sum, 245, 485);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int numDots, myX, myY, total;
  
  Die(int x, int y) //constructor
  {
    numDots = (int)((Math.random()*6) + 1);
    myX = x;
    myY = y;
    total = 0;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if(numDots == 1){
      ellipse(myX + 25, myY  + 25, 10, 10);
    } 
    if((numDots == 2) || (numDots == 3) || (numDots == 4) || (numDots == 5) || (numDots == 6)){
      ellipse(myX + 15, myY + 10, 10, 10);
      ellipse(myX + 35, myY + 40, 10, 10);
    } 
    if((numDots == 3) || (numDots == 5)){
      ellipse(myX + 25, myY + 25, 10, 10);
    } 
    if((numDots == 4) || (numDots == 5) || (numDots == 6)) {
      ellipse(myX + 35, myY + 10, 10, 10);
      ellipse(myX + 15, myY + 40, 10, 10);
    }
    if(numDots == 6) {
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
    }
  }
}
