/*Bouncers with Arraylist
William T-D
Oct 1, 2021
*/


ArrayList<GameObject> MyObjects;


MyShips Ship;


//PImage PShip;

boolean wkey,skey,dkey,akey,space;

void setup() {
  
//  PShip = loadImage("Space_Ship.png");
  
  colorMode(HSB);
  fullScreen(FX2D);
  rectMode(CENTER);
  imageMode(CENTER);
  wkey = false;
  skey = false;
  dkey = false;
  akey = false;
  space = false;
  
  
  
  MyObjects = new ArrayList<GameObject>();
  
  Ship = new MyShips();
  
  MyObjects.add(Ship);
  MyObjects.add(new Asteroid());
  MyObjects.add(new Asteroid());
  MyObjects.add(new Asteroid());
}
void draw() {
  background(0);
  int i = 0;
 while(i < MyObjects.size()){
  GameObject MyObj = MyObjects.get(i);
   MyObj.show();
   MyObj.act();
   
   if (MyObj.lives == 0) {
     MyObjects.remove(i);
   }else {
     i++;
   }
 }
 
 
 
}
