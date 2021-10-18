/*Bouncers with Arraylist
William T-D
Oct 1, 2021
*/

PFont teko;  //font

PImage[] Introgif;       //Lazily added gif arrays
PImage[] Wingif;
PImage[] Losegif;

ArrayList<GameObject> MyObjects;


// Le Epic Mode Framework
int mode = 0 ;
int INTRO = 0;
int GAME = 1;
int GAMEOVER = 2;
int PAUSE = 3;

float t; //game timer
int Intf,Winf,Losef,i; //gif timer
int titleX, titleY; //freedom to move titles
boolean gs; //which gameover screen 
int timer = 0;     
int score = 0;  //gameplay variables

MyShips Ship;


//PImage PShip;

boolean wkey,skey,dkey,akey,ekey,space;

void setup() {
  
  // Gif Setups forget how to make them neat
  
  Intf = 40;
  Winf = 12;
  Losef = 58;
  
  
  
  
  Introgif = new PImage[Intf];
    i = 0;    
    while (i < Intf) {
     Introgif[i] = loadImage("IntroGif/frame_"+i+"_delay-0.1s.png");
     i++; 
  }
   Wingif = new PImage[Winf];
    i = 0;    
    while (i < Winf) {
     Wingif[i] = loadImage("WinGif/frame_"+i+"_delay-0.1s.png");
     i++; 
  }
   Losegif = new PImage[Losef];
   i = 0;    
    while (i < Losef) {
     Losegif[i] = loadImage("LoseGif/frame_"+i+"_delay-0.1s.png");
     i++; 
  }
  i = 0;
//  PShip = loadImage("Space_Ship.png");
  teko = createFont("Teko-Medium.ttf",100);
  textFont(teko);
  
  
  gs = false;
  init();
  
  mode = INTRO;
  
  colorMode(HSB);
  fullScreen(FX2D);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  wkey = false;
  skey = false;
  dkey = false;
  akey = false;
  space = false;
  ekey = false;
  
  init();
  
  
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
