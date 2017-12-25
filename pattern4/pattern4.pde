bubble b1,b2;
void setup()
{
  size(1080,720);
  background(50);
  b1 = new bubble((int)random(1080),(int)random(720),(int)random(10));
  b2 = new bubble((int)random(1080),(int)random(720),(int)random(10));
}
void draw()
{
  background(50);
  b1.display();
  b1.update();
  b2.display();
  b2.update();
  b1.move();
  b2.move();
}