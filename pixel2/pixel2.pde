PImage pic,copy; 
int k, l, j, i, d, r, g, b;
void setup()
{
  size(1440, 900);
  copy = loadImage("pic.jpg");
}

void createImage()
{
  pic = copy;
}

void draw()
{
  createImage();
  background(0);
  loadPixels();
  pic.loadPixels();
  for (i=k=0; i<2880; i+=2, k++)
    for (j=l=0; j<1800; j+=2, l++)
    {
      d = (int)dist(k, l, mouseX, mouseY);
      r = (int)red(pic.pixels[i+j*2880]);
      g = (int)green(pic.pixels[i+j*2880]);
      b = (int)blue(pic.pixels[i+j*2880]);
      if (d <= 255)
      {
        pixels[k+l*width] = color(r);
      } else
        pixels[k+l*width] = color(r, g, b);
    }
  updatePixels();
}