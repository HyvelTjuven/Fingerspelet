void keyPressed() {

  // Increase or decrease the distance the Kinect reads from
  if (key == '-') {
    kinectThres -= 10;
  } else if (key == '+') {
    kinectThres += 10;
  }

  //Go back to main menu
  if (key == 'r' || key == 'R') {
    level = 0;
  }
}

