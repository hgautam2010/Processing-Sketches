int sx, sy, x, y, px, py;
boolean go = true;
void setup()
{
  size(720, 480);
  sx = 0;
  sy = 0;
  x = width/2;
  y = height/2;
  px = (int)random(width);
  py = (int)random(height);
}
void draw()
{
  if(go)
  {
    background(50, 50, 50);
    fill(200, 0, 0);
    stroke(1);
    ellipse(x+sx, y, 20, 20);
    ellipse(px, py, 20, 20);
    check();
    updateX();
    updateSpeed();
  }
}
void check()
{
  if(sqrt(abs(px-x)*abs(px-x)+abs(py-y)*abs(py-y)) < 17)
  {
    px = (int)random(width);
    py = (int)random(height);
  }
}
void updateX()
{
  x = (x + sx + width) % width;
  y = (y + sy + height) % height;
}
void updateSpeed()
{
  if (x > width || x < 0)
    sx = -sx;
  if (y > height || y < 0)
    sy = -sy;
}
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      sx = 0;
      sy = -5;
    } else if (keyCode == DOWN) 
    {
      sx = 0;
      sy = 5;
    } else if (keyCode == LEFT)
    {
      sx = -5;
      sy = 0;
    } else if (keyCode == RIGHT)
    {
      sx = 5;
      sy = 0;
    }
  }
  else
  {
    go = ! go;
  }
}