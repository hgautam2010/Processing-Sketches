int s,x,y;
void setup()
{
  size(720,480);
  s = 5;
  x = width/2;
  y = height/2;
}
void draw()
{
  background(50,50,50);
  fill(200,0,0);
  stroke(1);
  ellipse(x+s,y,15,15);
  updateX();
  updateSpeed();
}
void updateX()
{
  x = x + s;
}
void updateSpeed()
{
  if((x > width && s == 5) || (x < 0 && s == -5))
    s = -s;
}