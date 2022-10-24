Walker[] walter;
void setup()
{
  size(400, 400);
  walter = new Walker[50];
  for (int i = 0; i < walter.length; i++)
  {
    walter[i] = new Walker();
  }
  frameRate(100);
}
void draw()
{
  background(255, 255, 255);
  for (int i = 0; i < walter.length; i++)
  {
    walter[i].show();
    walter[i].walk();
  }
}
  class Walker
  {
    int myX, myY, myColor;
    Walker()
    {
      myX = myY = 200;
    {
      myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      }
    }
    void walk()
    {
      myX = myX + (int)(Math.random()*7)-3;
      myY = myY + (int)(Math.random()*7)-3;
      
      show();
    }
    void show()
    {
      fill(myColor);
      ellipse(myX, myY, 10, 10);
    }
  }
