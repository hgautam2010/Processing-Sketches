int px, py,speed;
snake snk;
boolean go = true;
void setup()
{
  size(720, 480);
  speed = 20;
  px = (int)random(20,width-20);
  py = (int)random(20,height-20);
  snk = new snake();
}
void draw()
{
  if(go)
  {
    delay(100);
    background(50, 50, 50);
    fill(200, 0, 0);
    stroke(1);
    ellipse(px, py, 20, 20);
    check();
    snk.shift();
    snk.print();
    gameOver();
    //snk.move();
  }
}
void check()
{
  if(snk.isCollide(px,py))
  {
    px = (int)random(20,width-20);
    py = (int)random(20,height-20);
  }
}
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      snk.sx = 0;
      snk.sy = -speed;
    } else if (keyCode == DOWN) 
    {
      snk.sx = 0;
      snk.sy = speed;
    } else if (keyCode == LEFT)
    {
      snk.sx = -speed;
      snk.sy = 0;
    } else if (keyCode == RIGHT)
    {
      snk.sx = speed;
      snk.sy = 0;
    }
  }
  else
  {
    go = ! go;
  }
}
void gameOver()
{
  if(snk.isOkay())
    go = !go;
}