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
    vel.setMag(5);
    
    
  }
  void show(){
    noStroke();
    fill(h,255,255,t);  
 //   int i = 0;
   // while (i < 3) {
    //  if(i == 0) 
    square(loc.x,loc.y,size/1.5);
    //  if(i == 1)  circle(loc.x,loc.y,size);
    //  if(i == 2)  triangle(loc.x-size/1.5,loc.y+size/1.5,loc.x+size/1.5,loc.y+size/1.5,loc.x,loc.y-size/1.5);
     // i++;
   // }
  }
  void act(){
  loc = loc.add(vel);
  t -= 5;
  if(t <= 0) lives = 0;
  h = h +0.8;
 
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
