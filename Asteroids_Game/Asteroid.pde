class Asteroid extends GameObject {
  
  
  Asteroid() {
    lives = 1;
    
    size = int (random(25,100));
    
    loc = new PVector(random(0,width), random(0,height)); 
    
    vel = new PVector (0,1);
    
    vel.rotate(random(0,TWO_PI));
  }
  Asteroid(int s,  float x, float y) {
   lives = 1;
    size = s;
    loc = new PVector(x, y);; 
    vel = new PVector (0,1);
    vel.rotate(random(0,TWO_PI));
    
  }
  void show() {
    strokeWeight(3);
    fill(0);
    stroke(255);
    ellipse(loc.x,loc.y,size,size);
  }
  void act() {
    super.act();
    
    int i = 0;
    while( i < MyObjects.size()) {
      GameObject MyObj = MyObjects.get(i);
      if (MyObj instanceof Bullet) {
        if ( dist(loc.x,loc.y,MyObj.loc.x,MyObj.loc.y) <= size/2 + MyObj.size/2){
         MyObj.lives = 0;
         lives = 0;
         if(size >= 50) {
         MyObjects.add(new Asteroid(size/2, loc.x+random(-20,20),loc.y+random(-20,20)));
         MyObjects.add(new Asteroid(size/2, loc.x+random(-20,20),loc.y+random(-20,20)));
         }
        }
      }
      i++;
    }
  }
}
