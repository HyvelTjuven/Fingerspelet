int[] fingerArray = new int[20];
float average = 0;
int pointer = 0; 


void checkAnswer() {

  for (int i = 0; i < 20; i++) {
    average += fingerArray[i];
  }
  average = int(round(average/20));

  if (keyPressed && key == 'a' && noAnswerGiven) {

    if (average == answer) {
      noAnswerGiven = false;
      rightAnswerGiven = true;
      correctSound.trigger();
    } else if (average != answer) {
      noAnswerGiven = false;
      wrongAnswerGiven = true;
      wrongSound.trigger();

      if (level == 1 && average == 1 || level == 5 && average == 2 || 
        level == 9 && average == 3) {
        noAnswerGiven = true;
        wrongAnswerGiven = false;
        wrongSound.stop();
      }
    }
  }


  if (rightAnswerGiven) {
    imageMode(CENTER);
    fadeIn = fadeIn + 10;

    tint(255, fadeIn);
    image(thumbsUp, width/3, height/1.8);

    if (fadeIn > 300) {
      level++;
      noAnswerGiven = true;
      rightAnswerGiven = false;
      fadeIn = 0;
    }

    // Go back to main menu after three stages on any level
    if (level == 4 || level == 8 || level == 12) {
      level = 0;
    }
  } 

  if (wrongAnswerGiven) {
    imageMode(CENTER);
    fadeIn = fadeIn + 10;

    tint(255, fadeIn);
    image(thumbsDown, width/3, height/1.8);

    if (fadeIn > 300) {
      noAnswerGiven = true;
      wrongAnswerGiven = false;
      fadeIn = 0;
    }
  }
}

