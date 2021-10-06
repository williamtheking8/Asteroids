class GameObject{
  int lives;
  
  PVector loc;
  PVector vel; 
  PVector dir;
  
  GameObject(){
    
    
  }
  
  void show() {
    
  }
  
  void act() {
    
    
    loc = loc.add(vel);
     
   if (loc.x < -22) loc.x = width+22;
   if (loc.x > width+22) loc.x = -22;
   if (loc.y < -20) loc.y = height+20;
   if (loc.y > height+20) loc.y = -20;
  }
}
