void setupKinect() {
  kinect = new SimpleOpenNI(this);
  fingers = new FingerTracker(this, 640, 480);

  fingers.setMeltFactor(100);

  kinect.setMirror(true);
  kinect.enableDepth();

  kinectImg = createImage(kinect.depthWidth(), kinect.depthHeight(), RGB);
  println(kinect.depthWidth() + " " + kinect.depthHeight());
}

int kinectX;
int kinectY;

void drawKinect(int xPos, int yPos) {

  kinect.update();
  kinectImg.loadPixels();

  int[] depth = kinect.depthMap();

  fingers.setThreshold(kinectThres);

  for (int x = 0; x < kinect.depthWidth (); x++) {
    for (int y = 0; y < kinect.depthHeight (); y++) {
      int offset = x + y * kinect.depthWidth(); 
      int d = depth[offset];

      if (d > 100 && d < kinectThres) {
        kinectImg.pixels[offset] = color(255);
      } else {
        kinectImg.pixels[offset] = color(0);
      }
    }
  }


  kinect.getSmoothingHand();
  fingers.update(depth);
  kinectImg.updatePixels();

  fingerArray[pointer] = fingers.getNumFingers();
  pointer++;

  if (pointer >= 20) {
    pointer = 0;
  }

  noTint();
  imageMode(CORNER);
  image(griffel, xPos, yPos, griffel.width/1.45, griffel.height/1.45);
  image(kinectImg, xPos+50, yPos+20 , kinect.depthWidth()/1.7, kinect.depthHeight()/1.7);

  
  noStroke();
  fill(255, 0, 0);

  for (int i = 0; i < fingers.getNumFingers (); i++) {
    PVector position = fingers.getFinger(i);
    ellipse(int(position.x/1.7)+xPos+50, int(position.y/1.7)+yPos+20, 10, 10);
  }


  fill(79, 180, 249);
  textSize(35);
  textFont(font);
  text("Fingrar: " + int(average), width - 450, height/2+130);
}

