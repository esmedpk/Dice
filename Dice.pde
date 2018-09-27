void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(255,255,255);
  for(int y = -50; y <= 350; y = y+50)
  {
    for(int x = -50; x <= 350; x = x+50)
    {
      Die bob = new Die(x,y);
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
    rect(myX+50,myY+50,50,50); 
    fill(255,255,255);
    if(diceRoll < 0.16)
    {
      ellipse(myX+75,myY+75,10,10); 
    }
       else if (diceRoll < 0.33) 
       {
        ellipse(myX+62.5,myY+62.5,10,10);
        ellipse(myX+87.5,myY+87.5,10,10);
         } 
         else if(diceRoll < 0.5) 
         {
          ellipse(myX+75,myY+75,10,10); 
          ellipse(myX+62.5,myY+62.5,10,10); 
          ellipse(myX+87.5,myY+87.5,10,10);
           } 
           else if(diceRoll < 0.66) 
           {
            ellipse(myX+62.5,myY+62.5,10,10); 
            ellipse(myX+87.5,myY+87.5,10,10); 
            ellipse(myX+62.5,myY+87.5,10,10);
            ellipse(myX+87.5,myY+62.5,10,10);
           }
            else if(diceRoll < 0.83)
             {
             ellipse(myX+75,myY+75,10,10);
             ellipse(myX+62.5,myY+62.5,10,10); 
             ellipse(myX+87.5,myY+87.5,10,10);
             ellipse(myX+62.5,myY+87.5,10,10);
             ellipse(myX+87.5,myY+62.5,10,10);
             }
               else if(diceRoll < 1)
               {
                 ellipse(myX+62.5,myY+62.5,10,10); 
                 ellipse(myX+87.5,myY+87.5,10,10); 
                 ellipse(myX+62.5,myY+87.5,10,10); 
                 ellipse(myX+87.5,myY+62.5,10,10);
                 ellipse(myX+62.5,myY+75,10,10); 
                 ellipse(myX+87.5,myY+75,10,10);
                 }
  }
}


