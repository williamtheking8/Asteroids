void mousePressed() {
  if(mode == INTRO) {
    introClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();                                    //MODE FRAMWORK MOUSE EDITION
  } else if (mode == GAME) {
  gameClicks();
  } else if (mode == PAUSE) {
  pauseClicks();
  }
}







void keyPressed() {
  if (key == 'w'|| key == 'W') {
    wkey = true;
  }
  if (key == 's'|| key == 'S') {
    skey = true;
  }
  if (key == 'a'|| key == 'A') {
    akey = true;
  }
  if (key == 'd'|| key == 'D') {
    dkey = true;
  }
  if (key == 'e'|| key == 'E') {
    ekey = true;
  }
  if (key == ' ') {
    space = true;
  }
}
void keyReleased() {
  if (key == 'w'|| key == 'W') {
    wkey = false;
  }
  if (key == 's'|| key == 'S') {
    skey = false;
  }
  if (key == 'a'|| key == 'A') {
    akey = false;
  }
  if (key == 'D'|| key == 'D') {
    dkey = false;
  }
   if (key == 'E'|| key == 'e') {
    ekey = false;
  }
  if (key == ' ') {
    space = false;
  }
}
void pauseClicks() {
  mode = GAME;
}
void gameClicks() {
  mode = PAUSE;
}
void introClicks() {
  if(mouseX > width/2-150 && mouseX < width/2+150 && mouseY > height/2-50 && mouseY < height/2+50)  {
  i = 0;
  titleX = width/2;                          //SPECIAL LOGIC FOR INTRO
  titleY = height/2;
  mode = GAME;
  }
}
void gameoverClicks() {
  init();                        // TOO LAZY FOR BUTTONS IN GAMEOVER
  mode = INTRO;
}
