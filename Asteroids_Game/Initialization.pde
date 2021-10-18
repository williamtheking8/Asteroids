void init() {
  

  
    wkey = false;
  skey = false;
  dkey = false;
  akey = false;
  space = false;
  
  
  
  MyObjects = new ArrayList<GameObject>();
  
  Ship = new MyShips();                          //VARIABLES THAT NEED TO BE RESET
  
  MyObjects.add(Ship);
   
  t = 3000;    
  
  Ship.teleT = 0;
  
  score = 0;
  
  titleX = width/2;
  titleY = height/2;
  
  
  


  
  
  
  
  
  
}
