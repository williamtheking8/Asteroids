void intro() {
  
 
 image(Introgif[i],width/2,height/2, width, height);          //Super fast Gif
 i++;
 if (i > Intf-1) i = 0;
  
  fill(255);
  textSize(100);
  text("ASTEROIDS",titleX,titleY-200);  //Title Card
  

  titleX = titleX + 3; 
  if(titleX >= width+150){                        //Movement of said Title Card
  titleX = -150;
  titleY = int(random(200,height/2));
  }
  
  strokeWeight(5);
  stroke(0);                      
  if(mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2-50 && mouseY < height/2+50) {
    strokeWeight(20);
    stroke(#24B5C6);                      //Cursor Checking
    fill(0);
  } else  fill(#7524C6);
   

  rect(width/2,height/2,300,100);
  
   if(mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2-50 && mouseY < height/2+50) {
    fill(#7524C6);
  } else  fill(0);               //Cursor Checking pt. 2
  textSize(50);
  text("START",width/2,height/2-5);
  
  fill(255);
  
   text("Save Earth From The Asteroids!",width/2,height/2+200);                            //INFO
 
  text("Use WASD To Move, Space to Shoot, and E to teleport!",width/2,height/2+400);

}
