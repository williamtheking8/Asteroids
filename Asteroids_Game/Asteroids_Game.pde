/*Bouncers with Arraylist
William T-D
Oct 1, 2021
*/


ArrayList<GameObject> MyObjects;

int mode = 0 ;
int INTRO = 0;
int GAME = 1;
int GAMEOVER = 2;
int PAUSE = 3;

int timer = 0;

MyShips Ship;


//PImage PShip;

boolean wkey,skey,dkey,akey,space;

void setup() {
  
//  PShip = loadImage("Space_Ship.png");
  
  mode = INTRO;
  
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
 
}
void draw() {
  
  if(mode == INTRO)  intro();
  if(mode == GAMEOVER) gameover();
  if(mode == GAME) game();
  if(mode == PAUSE) pause();

 
 
 
}
