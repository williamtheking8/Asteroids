void game() {
  
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
 if(timer%300 == 0)  MyObjects.add(new Asteroid());
 if(timer%1000 == 0) MyObjects.add(new UFO());
 
 timer++;
 
 
 background(155,5,0);
  
  
  
  
  
  
}
