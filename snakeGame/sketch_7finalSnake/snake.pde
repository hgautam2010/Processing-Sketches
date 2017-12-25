class snake
{
  int size, headColor, tailColor, speed, sx, sy;
  mypoint[] points;
  snake()
  {
    size = 1;
    sx = sy = 0; 
    speed = 5;
    headColor =  color(#0FA020);
    tailColor = color(#27D83D);
    points = new mypoint[50];
    for (int i = 0; i < 50; i++)
      points[i] = new mypoint();
    points[0].x = width/2;
    points[0].y = height/2;
  }
  void print()
  {
    fill(headColor);
    stroke(1);
    ellipse(points[0].x, points[0].y, 20, 20);
    fill(tailColor);
    stroke(1);
    int i;
    for (i = 1; i < size; i++)
    {
      ellipse(points[i].x, points[i].y, 20, 20);
    }
  }
  void shift()
  {
    int i;
    for (i = size-1; i > 0; i--)
    {
      points[i].x = points[i-1].x;
      points[i].y = points[i-1].y;
    }
    points[0].x = (points[0].x + sx + width) % width;
    points[0].y = (points[0].y + sy + height) % height;
  }
  void move()
  {
    int i;
    for (i = 1; i < size; i++)
    {
      points[i].x = (points[i-1].x + sx + width) % width;
      points[i].y = (points[i-1].y + sy + height) % height;
    }
  }
  boolean isCollide(int px, int py)
  {
    if (sqrt(abs(px-points[0].x)*abs(px-points[0].x)+abs(py-points[0].y)*abs(py-points[0].y)) < 17)
    {
      add();
      return true;
    }
    return false;
  }
  void add()
  {
    size+=1;
  }
  boolean isOkay()
  {
    if(collide())
    {
      return true;
    }
    return false;
  }
  boolean collide()
  {
    int i;
    for(i = 1; i < size; i++)
    {
      if(points[i].x == points[0].x && points[i].y == points[0].y)
      if(sqrt(abs(points[i].x-points[0].x)*abs(points[i].x-points[0].x)+abs(points[i].y-points[0].y)*abs(points[i].y-points[0].y)) <= 5)
        return true;
    }
    return false;
  }
}