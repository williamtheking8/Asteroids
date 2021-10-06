class MyShips extends GameObject {
  
 
   
  MyShips(){
   lives = 3; 
   
    loc = new PVector(width/2,height/2);
    
    vel = new PVector(0,0);
    
    dir = new PVector(0,-0.1);
    
    
  }
  void act() {
     loc = loc.add(vel);
    
   
   float lx = vel.x;
   float ly = vel.y;
    if (wkey == true) vel.add(dir); 
    if (skey == true) vel.sub(dir); 
    if (dkey == true) dir.rotate(radians(5)); 
    if (akey == true) dir.rotate(radians(-5)); 
    if (space == true) MyObjects.add(new Bullet());
    
    if(lx == vel.x) vel.x *= .95;
    if(ly == vel.y) vel.y *= .95;
    
    if(vel.x > 20) vel.x = 20;
    if(vel.y > 20) vel.y = 20;
    if(vel.x < -20) vel.x = -20;
    if(vel.y < -20) vel.y = -20;
    
   if (loc.x < -22) loc.x = width+22;
   if (loc.x > width+22) loc.x = -22;
   if (loc.y < -20) loc.y = height+20;
   if (loc.y > height+20) loc.y = -20;
    
    
  }
  
  void show(){
    strokeWeight(10);
    stroke(0,10);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    fill(255);
    triangle(-20,-20,-20,20,25,0);
    fill(0);
    triangle(-15,-15,-15,15,17,0);
    fill(255);
    triangle(-5,-5,-5,5,5,0);
  //  image(PShip,loc.x,loc.y);
    popMatrix();
  }
  
  
  
  
}
