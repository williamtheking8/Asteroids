class Bullet extends GameObject {

  int r;
 

  Bullet () {
    r = 70;
    lives = 1; 
    loc = new PVector(Ship.loc.x,Ship.loc.y);
    
    vel = new PVector(Ship.dir.x,Ship.dir.y);
    vel.setMag(10);
  }

  void show() {
    fill(255);
    noStroke();
    strokeWeight(1);
    stroke(0,10);
   ellipse(loc.x,loc.y,10,10);
  }
  void act() {
   loc = loc.add(vel);
    if (loc.x < 0) loc.x = width;
   if (loc.x > width) loc.x = 0;
    if (loc.y < 0) loc.y = height;
   if (loc.y > height) loc.y = 0;
   
   r--;
   if (r >=0) {
     lives = 0;
   }
   
   
     }
  
}
