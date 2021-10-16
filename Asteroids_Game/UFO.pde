class UFO extends GameObject {
  
  int TimeShot = -30;
  int r; 
  UFO() {
     lives = 1;
     
     
     size = 50;
    
    loc = new PVector(random(height-size*2,width+size*2), random(width+size*2,height-size*2)); 
    
    vel = new PVector (0,1);
    
    vel.rotate(random(0,TWO_PI));
    
   r = 0;
  }
  void show() {
    strokeWeight(4);
    fill(0);
    stroke(#67E310);
    circle(loc.x,loc.y,size);
    circle(loc.x,loc.y,size/2);
    circle(loc.x,loc.y,size/3);
    circle(loc.x,loc.y,size/4);
  }
  void act() {
    super.act();
     TimeShot++;
  if (TimeShot >= 90) {
    MyObjects.add(new UFO_Bullet(Ship.loc.x - loc.x, Ship.loc.y - loc.y,loc.x,loc.y));
    TimeShot = 0;
   }
   
   int i = 0;
    while( i < MyObjects.size()) {
      GameObject MyObj = MyObjects.get(i);
      if (MyObj instanceof Bullet) {
        if ( dist(loc.x,loc.y,MyObj.loc.x,MyObj.loc.y) <= size/2 + MyObj.size/2){
          lives = 0;
          MyObj.lives = 0;
        int j = 0;
        while( j <= 360) {
          MyObjects.add(new Particle(loc.x,loc.y,size/9, r, 80));
          j++;
          r++;
        }
          
        }
  }
  
  
  
  
  i++;
  }
}

}
