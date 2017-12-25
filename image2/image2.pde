PImage pic;
int x, y;
float b, b2;
color c;
boolean go;
void setup()
{
  size(750, 750, P2D);
  pic = loadImage("pic1.png");
  pic.loadPixels();
  go = true;
}
void draw()
{
  //background(0);
  for (int i=0; i < 1000; i++)
  {
    x = (int)random(width);
    y = (int)random(height);
    fill( red(pic.get(x, y)), green(pic.get(x, y)), blue(pic.get(x, y)), 25);
    noStroke();
    ellipse(x, y, 5, 5);
  }
  if(go)
    saveFrame("output/pic_#####.png");
  println(go + "" + frameCount);
}
void keyPressed()
{
  if(key == 'r' || key == 'R')
    go = !go;
}