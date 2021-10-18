class Particle extends GameObject {
  
  
  
  float h;
  
  int r;
  int size;
  int t; // transparency
  PVector nudge;
  
  Particle(float x, float y, int s, int r, int g) {
    lives = 1;
    size = s;
    t   = int(random(155,255));
    loc = new PVector(x,y);
      
      h = g;
    
    vel = new PVector (0,1);
    
    vel.rotate(r);
    vel.setMag(5);                  //PARTICLE SPAWN LOGIC/VARIABLES
    
    
  }
  void show(){
    noStroke();
    fill(h,255,255,t);  

    square(loc.x,loc.y,size/1.5);
    
  }
  void act(){
  loc = loc.add(vel);
  t -= 5;
  if(t <= 0) lives = 0;        //COLOUR CHANGE
  h = h +0.8;
 
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
