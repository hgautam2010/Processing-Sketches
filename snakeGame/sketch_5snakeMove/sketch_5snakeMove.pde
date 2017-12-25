int x, y, i, k, s;
int dot[][] = new int[2][5];
int sx[] = new int[5];
int sy[] = new int[5];
boolean go; 
void setup()
{
  s = 5;
  go = true;
  size(720, 480);
  for (i = 0; i < 5; i++)
  {
    dot[0][i] = width/2+i*15;
    dot[1][i] = height/2+i*15;
    sx[i] = 5;
    sy[i] = 5;
  }
  k = 1;
}
void draw()
{
  if (go)
  {
    background(50, 50, 50);
    fill(200, 0, 0);
    stroke(1);
    for (i = 0; i < 5; i++)
    {
      ellipse(dot[0][i], dot[1][i], 20, 20);
    }
    updateX();
    updateSpeed();
  }
}
void updateX()
{
  int l;
  for (l = 0; l < 5; l++)
  {
    dot[0][l] += sx[l];
    dot[1][l] += sy[l];
  }
}
void updateSpeed()
{
  int l;
  for (l = 0; l < 5; l++)
  {
    if ((dot[0][l] > width && sx[l] == s) || (dot[0][l] < 0 && sx[l] == -s))
      sx[l] = -sx[l];
    if ((dot[1][l] > height && sy[l] == s) || (dot[1][l] < 0 && sy[l] == -s))
      sy[l] = -sy[l];
  }
}
void mousePressed()
{
  go = !go;
}