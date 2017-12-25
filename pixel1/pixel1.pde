void setup()
{
  size(1080,720);
  background(0);
}
void draw()
{
  loadPixels();
  for(int i=0;i<width;i++)
    for(int j=0;j<height;j++)
      {
        pixels[i+j*width] = color(dist(mouseX,mouseY,i,j),123,123);
      }
   updatePixels();
}