void setup()
{
  size(400,450);
  noLoop();
}
void draw()
{
  background(201,201,201);
  int sum = 0;
  for(int y = -50; y <= 340; y = y+50)
  {
    for(int x = -50; x <= 350; x = x+50)
    {
      Die bob = new Die(x,y);
      bob.show();
      sum = sum + bob.myDots;
    }
  }
  textAlign(CENTER);
  textSize(20);
  
  text("Total: " + sum,200,425);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY,myDots;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    myDots = (int) (Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    int x = (int)(Math.random()*256);
    int y = (int)(Math.random()*256);
    int z = (int)(Math.random()*256);
    fill(x,y,z);
    rect(myX+50,myY+50,50,50); 
    fill(255,255,255);
    if(myDots <= 1)
    {
      ellipse(myX+75,myY+75,10,10); 
    }
       else if (myDots <= 2) 
       {
        ellipse(myX+62.5,myY+62.5,10,10);
        ellipse(myX+87.5,myY+87.5,10,10);
         } 
         else if(myDots <= 3) 
         {
          ellipse(myX+75,myY+75,10,10); 
          ellipse(myX+62.5,myY+62.5,10,10); 
          ellipse(myX+87.5,myY+87.5,10,10);
           } 
           else if(myDots <= 4) 
           {
            ellipse(myX+62.5,myY+62.5,10,10); 
            ellipse(myX+87.5,myY+87.5,10,10); 
            ellipse(myX+62.5,myY+87.5,10,10);
            ellipse(myX+87.5,myY+62.5,10,10);
           }
            else if(myDots <= 5)
             {
             ellipse(myX+75,myY+75,10,10);
             ellipse(myX+62.5,myY+62.5,10,10); 
             ellipse(myX+87.5,myY+87.5,10,10);
             ellipse(myX+62.5,myY+87.5,10,10);
             ellipse(myX+87.5,myY+62.5,10,10);
             }
               else if(myDots <= 6)
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


