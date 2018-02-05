class particle {
  PVector loc, vel, acc;
  particle()
  {
    loc = new PVector(random(width), random(height));
    vel = new PVector(random(-2, 2), random(-2, 2));
    acc = new PVector(0, 0);
  }
  void move()
  {
    loc.add(vel);
    check();
    vel.add(acc);
    acc.mult(0);
  }
  void applyForce(PVector f)
  {
    acc.add(f);
  }
  void display()
  {
    move();
    noStroke();
    fill(0);
    ellipseMode(CENTER);
    ellipse(loc.x, loc.y, 10, 10);
  }
  void check()
  {
    if(loc.x < 0)
    {
      loc.x = 0;
      vel.x *= -1;
    }
    if(loc.x > width)
    {
      loc.x = width;
      vel.x *= -1;
    }
    if(loc.y < 0)
    {
      loc.y = 0;
      vel.y *= -1;
    }
    if(loc.y > height)
    {
      loc.y = height;
      vel.y *= -1;
    }
  }
  float dist(PVector p)
  {
    return sqrt((loc.x - p.x)*(loc.x - p.x) + (loc.y - p.y)*(loc.y - p.y));
  }
  void lineWith(PVector p)
  {
    stroke(0, map(1300 - dist, 0, 1300, -1500, 255));
    strokeWeight(5);
    line(loc.x, loc.y, p.x, p.y);
  }
}