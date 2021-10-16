void mousePressed() {
  if(mode == INTRO) {
    introClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
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
  mode = GAME;
}
void gameoverClicks() {
  mode = INTRO;
}
