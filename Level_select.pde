void levelSelect() {

  if (level == 0) {
    mainMenu();
  }

  if (level == 0 && average == 1 && keyPressed && key == 'a') {
    
    for (int i = 0; i <= 300; i++){
     fadeIn++; 
    }
    
    if (fadeIn > 300) {
      level = 1;
      fadeIn = 0;
    }
  } else if (level == 0 && average == 2 && keyPressed && key == 'a') {
    level = 5;
  } else if (level == 0 && average == 3 && keyPressed && key == 'a') {
    level = 9;
  } 

  //Level 1
  if (level == 1) {
    Level_1_1();
  }

  if (level == 2) {
    Level_1_2();
  }

  if (level == 3) {
    Level_1_3();
  }

  //Level 2
  if (level == 5) {
    Level_2_1();
  }

  if (level == 6) {
    Level_2_2();
  }

  if (level == 7) {
    Level_2_3();
  }

  //Level 3
  if (level == 9) {
    Level_3_1();
  }

  if (level == 10) {
    Level_3_2();
  }

  if (level == 11) {
    Level_3_3();
  }
}

