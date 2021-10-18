class MyShips extends GameObject {
  
 int TimeShot, threshold, immunity, h, teleT, stopT;
 PVector tele;
 boolean teleporting = false;
  MyShips(){
   immunity = 0;
   lives = 3; 
   
   h = 0;
   
    loc = new PVector(width/2,height/2);
    
    vel = new PVector(0,0);
    
    dir = new PVector(0,-0.2);
    
    tele = new PVector(0,0);
    
    TimeShot = 0;
    threshold = 30;
    
    size = 25;
    
    teleT = 600;
    stopT = 0;
    
  }
  void act() {
     loc = loc.add(vel);
    
    TimeShot++;
    teleT++;
    
   
   float lx = vel.x;
   float ly = vel.y;                                          //CONTROLS  AND MOVEMENT AND AIR FRICTION (in space?)
    if (wkey == true){
      vel.add(dir); 
      MyObjects.add(new Fire());
       MyObjects.add(new Fire());
        MyObjects.add(new Fire());
    }
    if (skey == true) {
      vel.sub(dir); 
      MyObjects.add(new Fire());
       MyObjects.add(new Fire());
        MyObjects.add(new Fire());
    }
    if (dkey == true) dir.rotate(radians(5)); 
    if (akey == true) dir.rotate(radians(-5)); 
    if (space == true && TimeShot >= threshold) {
      MyObjects.add(new Bullet());
      TimeShot = 0;
    }
    if (ekey == true){
    
        if(teleT > 600) {                              //HARD TELEPORTING CODE VERY FRAGILE
            teleporting = true;
         while (teleporting == true) {
        tele.set(random(width), random(height));
      int check = 1;
      int i = 0;
       stopT++;
       if(stopT >= 10) break;
       while( i < MyObjects.size()) { 
      GameObject MyObj = MyObjects.get(i);
      if (MyObj instanceof UFO_Bullet ||MyObj instanceof Asteroid || MyObj instanceof UFO  ) {
        if ( dist(tele.x,tele.y,MyObj.loc.x,MyObj.loc.y) >= Ship.size/2 + MyObj.size/2+ 100){
          check++;
        } else break;
      }else check++;
      i++;
    
     
    }
 
    if (check >= MyObjects.size()){                      
    teleporting = false;
    loc = loc.set(tele);
    check = 0;
    teleT = 0;
    stopT = 0;

     }
        }
      }
    }
    if(lx == vel.x) vel.x *= .95;
    if(ly == vel.y) vel.y *= .95;
    
    if (vel.mag() > 15) vel.setMag(15);
    
    
    
   if (loc.x < -22) loc.x = width+22;
   if (loc.x > width+22) loc.x = -22;
   if (loc.y < -20) loc.y = height+20;
   if (loc.y > height+20) loc.y = -20;
   
   
    immunity++;
    
   if(immunity >= 120 ) checkCollision();
  
  }
  void show(){
    strokeWeight(10);
    stroke(0,10);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
     if(immunity <= 120) {
      fill(h,255,255);
      
     
     
      h++;
    } else fill(255);
    
    triangle(-20,-20,-20,20,25,0);        //SPACE CRAFT VISUAL
    fill(0);
    triangle(-15,-15,-15,15,17,0);
    if(teleT > 600) {
      fill(#24C635);
    }else  fill(255);
    triangle(-5,-5,-5,5,5,0);
   
  //  image(PShip,loc.x,loc.y);
    popMatrix();
    if(immunity <= 120) {
      fill(h,255,255,100);
     circle(loc.x,loc.y,size*3);
    }
    if(h > 200) h = 0;
  }
  
  void checkCollision() {                          //COLLISION
    int i = 0;
    while( i < MyObjects.size()) {
      GameObject MyObj = MyObjects.get(i);
      if (MyObj instanceof UFO_Bullet ||MyObj instanceof Asteroid || MyObj instanceof UFO  ) {
        if ( dist(loc.x,loc.y,MyObj.loc.x,MyObj.loc.y) <= size/2 + MyObj.size/2){
          lives -= 1;
          MyObj.lives = 0;
          immunity = 0;
          
          if (MyObj instanceof Asteroid) {
            MyObjects.add(new Asteroid());
            score++;
          }

        }
  } 
  i++;
  } 
 
  }
}
