void game() {
  
  background(0);
  
   int i = 0;
 while(i < MyObjects.size()){
  GameObject MyObj = MyObjects.get(i);              //MYOBJECT LOGIC IN-GAME
   MyObj.show();
   MyObj.act();
   
   if (MyObj.lives == 0) {
     MyObjects.remove(i);
   }else {
     i++;
   }
 }
 if(timer%150 == 0)  MyObjects.add(new Asteroid());      //SPAWNERS
 if(timer%1000 == 0) MyObjects.add(new UFO());
 
 timer++;
 t--;
 

  
  fill(t*10,255,255);
  textSize(50);
    text("Time Left",width-200,height-200);                // UI
  text(t/60,width-200,height-100);
  
  
  text("Asteroids Destroyed: " + score +"/10",300,height-100);
  
  text("Lives: " + Ship.lives +"/3",width/2,height-100);
  
  if (score >= 10) {
   gs = true;
   mode = GAMEOVER;
  }
   if(t <= 0){                // GAMEOVER LOGIC
   gs = false;
   mode = GAMEOVER;
 }
   if(Ship.lives <= 0) mode = GAMEOVER;
}
