class UFO_Bullet extends GameObject {
  
  
  int r;
 

  UFO_Bullet (float vx, float vy, float  x, float y) {
    r = 100;
    lives = 1; 
    size = 10;
    
    loc = new PVector(x,y);
    
    vel = new PVector(vx,vy);
    vel.setMag(5);
    vel.add(vel);
    
    
    
  }

  void show() {
    fill(255,255,255);
    noStroke();
    strokeWeight(1);
    stroke(0,10);
   ellipse(loc.x,loc.y,size,size);
  }
  void act() {
   loc = loc.add(vel);
   // if (loc.x < 0) loc.x = width;
   //if (loc.x > width) loc.x = 0;
   // if (loc.y < 0) loc.y = height;
   //if (loc.y > height) loc.y = 0;
   
   r--;
   if (r <= 0) {
     lives = 0;
   }
   
   
     }
  
  
  
  
}
