class bubble
{
  int x, y, s, t, u, v, w;
  bubble(int a, int b, int c)
  {
    x=a;
    y=b;
    s=c;
    t=c;
    u=(int)random(255);
    v=(int)random(255);
    w=(int)random(255);
  }
  void move()
  {
    x+=s;
    y+=t;
  }

  void update()
  {
    if (x <= 0 || x >= width)
    {
      s=s*-1;
    }

    if (y <= 0 || y >= height)
    {
      t=t*-1;
    }
  }

  void display()
  {
    fill(u, v, w);
    stroke(255);
    int a=(int)random(100);
    ellipse(x, y, a, a);
  }
}