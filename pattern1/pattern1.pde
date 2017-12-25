float x, y, r, xs, ys;
void setup()
{
  size(1080, 720);
  background(50);
  x = width/2 - 5;
  y = height/2 - 5;
  r = 20;
  ys = xs = 5;
}

void draw()
{
  background(50);
  fill(10, 70, 90);
  stroke(255);
  ellipse(x, y, r, r);
  ellipse(x, y+r, r, r);
  x = x + xs;
  y = y + ys;
  
  if(x < 0 || x > width)
  {
    xs = xs * -1;
  }
  
  if(y < 0 || y > height)
  {
    ys = ys * -1;
  }
}

void mousePressed()
{
  background(50);
}

void keyPressed()
{
  background(50);
}