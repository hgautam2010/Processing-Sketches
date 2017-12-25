import processing.video.*;
Capture video;
void setup()
{
  size(1080,720);
  video = new Capture(this,640,480,20);
  video.start();
}
void draw()
{
  if(video.available())
  {
    video.read();
  }
  background(0);
  image(video,0,0);
}