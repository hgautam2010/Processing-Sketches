float x, y, r;
boolean going = false;
void setup()
{
  size(1080, 720);
  background(255);
  x = width/2;
  y = height/2;
  r = 0;
}
void draw()
{
  //background(50);
  if (going)
  {
    fill(random(255), random(255), random(255), 200);
    stroke(255);
    r = random(100);
    ellipse(x, y, r, r);
    x = random(width);
    y = random(height);
  }
}
void mousePressed()
{
  /*background(50);
   fill(150);
   stroke(255);
   ellipse(mouseX, mouseY,20,20);*/
  going = !going;
}

void keyPressed()
{
  background(0);
}