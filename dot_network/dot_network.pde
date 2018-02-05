particle p[];
float dist;
int total;
void setup()
{
  size(1080, 720, P2D);
  background(255);
  total = 20;
  p = new particle[total];
  for(int i = 0; i < total; i++)
  {
    p[i] = new particle();
  }
}
void draw()
{
  background(255);
  for(int i = 0; i < total; i++)
  {
    for(int j = i + 1; j < total; j++)
    {
      dist = p[i].dist(p[j].loc);
      if(map(1300 - dist, 0, 1300, -1500, 255) > 0)
        p[i].lineWith(p[j].loc);
    }
    p[i].display();
  }
}