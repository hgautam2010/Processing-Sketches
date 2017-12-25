class bubble
{
  int x, y, r, R, G, B, s;
  PImage pg;
  bubble(int i)
  {
    x=(int)random(1,width-1);
    y=(int)random(0,height);
    R=(int)random(255);
    G=(int)random(255);
    B=(int)random(255);
    s=10;
    pg = akuma;
  }
  void move()
  {
    y-=s;
    x-=random(-2, 2);
  }
  void update()
  {
    if (y + s*20 <= 0 || x<= 0 || x >= width)
    {
      y=(int)random(height-20,height+200);
      x=(int)random(width);
      s=(int)random(2, 10);
    }
  }
  void display()
  {
    tint(R, G, B);
    image(pg, x, y, s*20, s*20);
  }
}