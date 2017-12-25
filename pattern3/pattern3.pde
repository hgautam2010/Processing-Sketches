float x, y;
void setup()
{
  size(1080, 720);
}
void draw()
{
  background(50);
  for (x = 0; x <= width; x = x + 20)
  {
    for (y = 0; y <= height; y = y + 20)
    {
      fill(dist(mouseX, mouseY, x, y),90,155);
      stroke(dist(mouseX, mouseY, x, y),90,155);
      rect(x, y, 20, 20);
    }
  }
}