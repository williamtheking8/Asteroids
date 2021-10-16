class GameObject{
  int lives;
  
  int size, a;
  
  
  PVector loc;
  PVector vel; 
  PVector dir;
  
  
  GameObject(){
    
    
  }
  
  void show() {
    
  }
  
  void act() {
    
    
    loc = loc.add(vel);
     
   if (loc.x < -size) loc.x = width+size;
   if (loc.x > width+size) loc.x = -size;
   if (loc.y < -size) loc.y = height+size;
   if (loc.y > height+size) loc.y = -size;
  }
}
