class Asteroid extends GameObject {
  
  int MyAng;
  int a;
  int r;
 // int split;
  
  Asteroid() {
    lives = 1;
    r = 0;
    a = 1;
    
  //  split = 0;
    
    size = int (random(25,100));
    
    loc = new PVector(random(height-size*2,width+size*2), random(width+size*2,height+size*2)); 
    
    vel = new PVector (0,1);
    
    vel.rotate(random(0,TWO_PI));
  }
  Asteroid(int s,  float x, float y, float d) {
   lives = 1;
    size = s;
    loc = new PVector(x, y);; 
    vel = new PVector (1,1);
   // if(split == 0) {
    vel.rotate(d);
   // }
    
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
         lives = 0;   //Could take Bullet vel and rotate it to make asteroids split convincingly
        int j = 0;
        while( j <= 360) {
          MyObjects.add(new Particle(loc.x,loc.y,size/9, r, 0));
          j++;
          r++;
        }
         if(size >= 50) {
         MyAng = int(random(PI, TWO_PI));
         MyObjects.add(new Asteroid(size/2, loc.x+MyObj.vel.x,loc.y+MyObj.vel.y,90));
         MyObjects.add(new Asteroid(size/2, loc.x-MyObj.vel.x,loc.y-MyObj.vel.y,270));
         } else a++;
        }
      }
      i++;
    }
    if(a >= 2) {
      MyObjects.add(new Asteroid());
      a--;
    }
  }
  
}
