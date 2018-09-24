void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(0);
  for(int i = 0; i < 5; i++)
  {
    Die bob = new Die();
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    double diceRoll = Math.random();
    int x = (int)(Math.random()*256);
    int y = (int)(Math.random()*256);
    int z = (int)(Math.random()*256);
    fill(x,y,z);
    rect(50,50,50,50);
    if(diceRoll < 0.5)
    {
      ellipse(75,75,10,10);
      if(diceRoll < 0.83)
        ellipse(62.5,62.5,10,10);
      }
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
