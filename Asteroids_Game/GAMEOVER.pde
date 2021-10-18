void gameover() {
  background(0,155,0);
  if(gs == true){
 
  image(Wingif[i],width/2,height/2, width, height);  //WINNER GIF
 i++;
 if (i > Winf-1) i = 0;
 
     //GOOD VIBES FROM WINNING
 
  fill(#24C635);
  textSize(100);
  text("YOU WON",titleX,titleY-200);
  
   textSize(20);
   text("Click Anywhere to Restart",titleX,titleY+300);
   
  textSize(50);
  text("You Destroyed Enough Asteroids To Save Earth!",titleX,titleY);
  
  if(Ship.lives <= 0) text("But In The Process Died :(",titleX,titleY+200);
  }
   if(gs == false){
     
     image(Losegif[i] ,width/2,height/2, width, height); //LOSER GIF
 i++;
 if (i > Losef-1) i = 0;
  fill(#FA2A0A);
  textSize(100);
  text("You Lost!",titleX,titleY-200);              
  textSize(20);
   text("Click Anywhere to Restart",titleX,titleY+300);
     textSize(50);
  if(Ship.lives <= 0){
    text("You Died! Earth Was Destroyed!",titleX,titleY);      //SADNESS 
  } else  text("You Survived But Earth Was Destroyed!",titleX,titleY);
  
}
}
