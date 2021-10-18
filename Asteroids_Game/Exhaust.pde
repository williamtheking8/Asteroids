class Fire extends GameObject{
  
  float h;
  
  int t; // transparency
  PVector nudge;
  
  Fire() {
    lives = 1;
    size = int( random(5,10));
    t   = int(random(155,255));
    loc = Ship.loc.copy();
    
    h = 0;                            //GETTING EXHAUST TO LOOK REALISTIC
    
    nudge = Ship.dir.copy();
    nudge.rotate(PI);
    nudge.setMag(20);
    nudge.sub(Ship.vel);
    loc.add(nudge);
    
    vel = Ship.dir.copy();
    vel.rotate(PI+random(-0.5,0.5));
    vel.setMag(5);
    
    
  }
  void show(){
    noStroke();
    fill(h,255,255,t);                            // VARIANCE IN EXHAUST
    int i = 0;
    while (i < 3) {
      if(i == 0)  square(loc.x,loc.y,size/1.5);
      if(i == 1)  circle(loc.x,loc.y,size);
      if(i == 2)  triangle(loc.x-size/1.5,loc.y+size/1.5,loc.x+size/1.5,loc.y+size/1.5,loc.x,loc.y-size/1.5);
      i++;
    }
  }
  void act(){
  loc = loc.add(vel);
  t -= 5;
  if(t<= 0) lives = 0;              //COLOUR CHANGE
  
  if(h < 25) h = h +0.8;
 
  }
  
  
  
  
  
  
  
  
  
}
