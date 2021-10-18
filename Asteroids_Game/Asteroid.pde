class Asteroid extends GameObject {
  
  int MyAng;  //Variables for Asteroids
  int a;
  int r;
 // int split;
  
  Asteroid() {
    lives = 1;
    r = 0;                              //ASTEROID SETUP
    a = 1;
    
    
    size = int (random(25,100));
    
    loc = new PVector(random(height-size*2,width+size*2), random(width+size*2,height+size*2)); 
    
    vel = new PVector (0,1);
    
    vel.rotate(random(0,TWO_PI));
  }
  Asteroid(int s,  float x, float y, float d) {
   lives = 1;
    size = s;
    loc = new PVector(x, y);      //ASTEROID CREATION LOGIC WHEN SPLITTING
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
         lives = 0;   //ASTEROID COLLISION LOGIC, DENSE CODE
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
         score++;
        }
      }
      i++;
    }
    if(a >= 2) {
      MyObjects.add(new Asteroid());    //UNUSED AND FORGOTTEN CODE MAY BE VITAL SO IT AVOIDS THE "//"
      a--;
    }
  }
  
}
