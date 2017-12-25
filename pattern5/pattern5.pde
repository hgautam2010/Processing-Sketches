bubble[] arr; 
void setup()
{
  arr = new bubble[1000];
  for(int i = 0; i < 1000; i++)
    arr[i] = new bubble();
  size(1080, 720, P2D);
  background(255);
}
void draw()
{
  background(50);
  for(int i = 0; i < 1000; i++)
  {
    arr[i].update();
    arr[i].display();
    arr[i].move();
  }
  println(arr[0].x);
}
void mousePressed()
{
  background(50);
}

void keyPressed()
{
  background(50);
}