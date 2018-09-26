void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(255,255,255);
  for(int y = 0; y < 5; y++)
  {
    for(int x = 0; x < 5; x++)
    {
      Die bob = new Die(50,50);
      bob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    noStroke();
    double diceRoll = Math.random();
    int x = (int)(Math.random()*256);
    int y = (int)(Math.random()*256);
    int z = (int)(Math.random()*256);
    fill(x,y,z);
    rect(50,50,50,50);
    fill(255,255,255);
    if(diceRoll < 0.16)
    {
      ellipse(75,75,10,10);
    }
       else if (diceRoll < 0.33) 
       {
        ellipse(62.5,62.5,10,10);
        ellipse(87.5,87.5,10,10);
         } 
         else if(diceRoll < 0.5) 
         {
          ellipse(75,75,10,10); 
          ellipse(62.5,62.5,10,10); 
          ellipse(87.5,87.5,10,10);
           } 
           else if(diceRoll < 0.66) 
           {
            ellipse(62.5,62.5,10,10); 
            ellipse(87.5,87.5,10,10); 
            ellipse(62.5,87.5,10,10);
            ellipse(87.5,62.5,10,10);
           }
            else if(diceRoll < 0.83)
             {
             ellipse(75,75,10,10);
             ellipse(62.5,62.5,10,10); 
             ellipse(87.5,87.5,10,10);
             ellipse(62.5,87.5,10,10);
             ellipse(87.5,62.5,10,10);
             }
               else if(diceRoll < 1)
               {
                 ellipse(62.5,62.5,10,10); 
                 ellipse(87.5,87.5,10,10); 
                 ellipse(62.5,87.5,10,10); 
                 ellipse(87.5,62.5,10,10);
                 ellipse(62.5,75,10,10); 
                 ellipse(87.5,75,10,10);
                 }
  }
}

//1:ellipse(75,75,10,10);
//2:ellipse(62.5,62.5,10,10); ellipse(87.5,87.5,10,10);
//3:ellipse(75,75,10,10); ellipse(62.5,62.5,10,10); ellipse(87.5,87.5,10,10);
//4:ellipse(62.5,62.5,10,10); ellipse(87.5,87.5,10,10); ellipse(62.5,87.5,10,10);
//ellipse(87.5,62.5,10,10);
//5:ellipse(75,75,10,10); ellipse(62.5,62.5,10,10); ellipse(87.5,87.5,10,10);ellipse(62.5,87.5,10,10);
//ellipse(87.5,62.5,10,10);
//6:ellipse(62.5,62.5,10,10); ellipse(87.5,87.5,10,10); ellipse(62.5,87.5,10,10); ellipse(87.5,62.5,10,10);
//ellipse(62.5,75,10,10); ellipse(87.5,75,10,10);
