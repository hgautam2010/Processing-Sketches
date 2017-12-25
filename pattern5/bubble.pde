class bubble
{
  int x, y, r, R, G, B, s;
  bubble()
  {
    x=(int)random(width);
    y=height;
    r=(int)random(50);
    R=(int)random(255);
    G=(int)random(255);
    B=(int)random(255);
    s=r-35;
  }
  void move()
  {
    y-=s;
    x-=random(-2, 2);
  }
  void update()
  {
    if (y <= 0 || x<= 0 || x >= width)
    {
      y=height;
      x=(int)random(width);
      s=(int)random(5, 15);
    }
  }
  void display()
  {
    fill(R, G, B, 255 - r);
    stroke(R, G, B);
    ellipse(x, y, r, r);
  }
}