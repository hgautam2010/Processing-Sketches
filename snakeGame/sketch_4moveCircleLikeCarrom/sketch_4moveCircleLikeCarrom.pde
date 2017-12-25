int sx,sy,x,y;
void setup()
{
  size(720,480);
  sx = 10;
  sy = 10;
  x = width/2;
  y = height/2;
}
void draw()
{
  background(50,50,50);
  fill(200,0,0);
  stroke(1);
  ellipse(x+sx,y,20,20);
  updateX();
  updateSpeed();
}
void updateX()
{
  x = x + sx;
  y = y + sy;
}
void updateSpeed()
{
  if((x > width && sx == 10) || (x < 0 && sx == -10))
    sx = -sx;
  if((y > height && sy == 10) || (y < 0 && sy == -10))
    sy = -sy;
}