PImage akuma, img2;
bubble[] arr; 
void setup()
{
  akuma = loadImage("pic2.png");
  arr = new bubble[100];
  for (int i = 0; i < arr.length; i++)
    arr[i] = new bubble(i%2);
  size(1080, 720, P2D);
  background(255);
}

void draw()
{
  imageMode(CENTER);
  tint(255, mouseX, mouseY);
  image(akuma, mouseX, mouseY, mouseX+50, mouseY+70);
  background(255);
  for (int i = 0; i < arr.length; i++)
  {
    arr[i].update();
    arr[i].display();
    arr[i].move();
  }
}