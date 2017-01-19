/**********************
* Made by:            *
* Andrée Rehnberg,    *
* Marcus Olofsson,    *
* Emil Berzén         *
*                     *
* Malmö University,   *
* Interaction design, *
* 19/01-17            *
**********************/

import ddf.minim.*;
import fingertracker.*;
import SimpleOpenNI.*;

int level = 0;
int answer;

boolean noAnswerGiven = true;
boolean rightAnswerGiven = false;
boolean wrongAnswerGiven = false;

PImage kinectImg;
PImage bgImg;

PImage menuBG;
PImage lvlBG_1_1;
PImage lvlBG_1_2;
PImage lvlBG_1_3;
PImage lvlBG_2_1;
PImage lvlBG_2_2;
PImage lvlBG_2_3;
PImage lvlBG_3_1;
PImage lvlBG_3_2;
PImage lvlBG_3_3;

PImage thumbsUp;
PImage thumbsDown;

PImage griffel;

PFont font;

int fadeIn = 0;
int kinectThres = 800;

SimpleOpenNI  kinect;
FingerTracker fingers;

Minim minim;

AudioPlayer bgMusic;

AudioSample correctSound;
AudioSample wrongSound;

AudioSample level1Intro;
AudioSample level2Intro;
AudioSample level3Intro;


void setup() {
  size(1920, 1080);
  setupKinect();

  menuBG = loadImage("mainmenu.png");

  lvlBG_1_1 = loadImage("lvlBG_1_1.jpg"); 
  lvlBG_1_2 = loadImage("lvlBG_1_2.jpg");
  lvlBG_1_3 = loadImage("lvlBG_1_3.png");
  lvlBG_2_1 = loadImage("lvlBG_2_1.jpg");
  lvlBG_2_2 = loadImage("lvlBG_2_2.png");
  lvlBG_2_3 = loadImage("lvlBG_2_3.png");
  lvlBG_3_1 = loadImage("lvlBG_3_1.jpg");
  lvlBG_3_2 = loadImage("lvlBG_3_2.png");
  lvlBG_3_3 = loadImage("lvlBG_3_3.png");

  thumbsUp = loadImage("thumbsup.png");
  thumbsDown = loadImage("thumbsdown.png");

  griffel = loadImage("griffeltavla.png");

  font = loadFont("SoftMarshmallow-50.vlw");

  minim = new Minim(this);

  bgMusic = minim.loadFile("backgroundmusic.mp3");

  correctSound = minim.loadSample("correctSound.mp3");
  wrongSound = minim.loadSample("wrongSound.mp3");

  level1Intro = minim.loadSample("level1Sound.mp3");
  level2Intro = minim.loadSample("level2Sound.mp3");
  level3Intro = minim.loadSample("level3Sound.mp3");
}

void draw() {
  levelSelect();
  background(bgImg);
  bgMusic();
  drawKinect(kinectX, kinectY);
  checkAnswer();
}

void bgMusic() {
  if ( bgMusic.position()+680 == bgMusic.length() )
  {
    bgMusic.rewind();
  }
  
  bgMusic.setGain(-10);
  bgMusic.play();
  println("pos: " + bgMusic.position()+680 + " length: " + bgMusic.length());
}

