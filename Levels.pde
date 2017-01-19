boolean lvlSoundPlayed;


void mainMenu() {
  bgImg = menuBG;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());

  lvlSoundPlayed = false;
}

void Level_1_1() {
  bgImg = lvlBG_1_1;

  if (lvlSoundPlayed == false) { 
    level1Intro.trigger();
  }

  lvlSoundPlayed = true;

  answer = 9;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_1_2() {
  bgImg = lvlBG_1_2;
  answer = 15;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_1_3() {
  bgImg = lvlBG_1_3;
  answer = 12;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_2_1() {
  bgImg = lvlBG_2_1;

  if (lvlSoundPlayed == false) { 
    level2Intro.trigger();
  }

  lvlSoundPlayed = true;

  answer = 5;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_2_2() {
  bgImg = lvlBG_2_2;
  answer = 12;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_2_3() {
  bgImg = lvlBG_2_3;
  answer = 4;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_3_1() {
  bgImg = lvlBG_3_1;

  if (lvlSoundPlayed == false) { 
    level3Intro.trigger();
  }

  lvlSoundPlayed = true;

  answer = 5;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_3_2() {
  bgImg = lvlBG_3_2;
  answer = 16;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void Level_3_3() {
  bgImg = lvlBG_3_3;
  answer = 20;
  kinectX = width - (kinect.depthWidth()-55);
  kinectY = height - (kinect.depthHeight());
}

void congratz() {
}

