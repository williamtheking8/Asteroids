class Asteroid extends GameObject {
  
  
  Asteroid() {
    loc = new PVector (random(0,width), random(0,height)); 
    
    vel = new PVector (0,1);
    
    vel.rotate(random(0,TWO_PI));
  }
  void show() {
    fill(255);
    stroke(255);
    ellipse(loc.x,loc.y,50,50);
  }
  void act() {
    super.act();
  }
}
