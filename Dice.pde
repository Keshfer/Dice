int globalX = 125;
int globalY = 50;
int countOne;
int countTwo = 0;
int countThree = 0;
int countFour = 0;
int countFive = 0;
int countSix = 0;
int count = 0;
void setup() {
  background(94, 215, 155);
  textSize(22);
  rectMode(CENTER);
  noStroke();
  size(500, 500);
  noLoop();
}

void draw() {
  background(94, 215, 155);
  for (int i = 1; i <= 3; i++) {
    for (int k = 1; k <= 3; k++) {
      Die result = new Die(globalX, globalY);
      result.roll();
      result.show();
      globalX = globalX + 120;
    }
    globalY = globalY + 120;
    globalX = 125;
  }
  count = count + 9;
  fill(0);
  text("1s:" + countOne, 50, 400);
  text("2s:" + countTwo, 165, 400);
  text("3s:" + countThree, 275, 400);
  text("4s:" + countFour, 385, 400);
  text("5s:" + countFive, 105, 440);
  text("6s:" + countSix, 330, 440);
  text("rolls:" + count, 215, 465);
  
}
void mousePressed() {
  globalX = 125;
  globalY = 50;
  redraw();
}

class Die {
  int number;
  int dieX;
  int dieY;

  Die(int x, int y) { 
    dieX = x;
    dieY = y;
  }
  //picks a random number for dice
  void roll() {
    number =(int)(Math.random() * 6) + 1;
    //System.out.println(number);
  }
  //draws the dice
  void show() {
    fill(127, 0, 0);
    rect(dieX, dieY, 100, 100, 25);
    fill(255, 219, 98);
    if (number == 1) {
      ellipse(dieX, dieY, 23, 23);
      countOne = countOne + 1;
      //System.out.println(countOne);
    }
    if (number == 2) {
      ellipse(dieX + 20, dieY - 20, 23, 23);
      ellipse(dieX - 20, dieY + 20, 23, 23);
      countTwo = countTwo + 1;
    }
    if (number == 3) {
      ellipse(dieX, dieY, 23, 23);
      ellipse(dieX + 25, dieY - 25, 23, 23);
      ellipse(dieX - 25, dieY + 25, 23, 23);
      countThree = countThree + 1;
    }
    if (number == 4) {
      ellipse(dieX + 25, dieY - 25, 23, 23);
      ellipse(dieX - 25, dieY + 25, 23, 23);
      ellipse(dieX + 25, dieY + 25, 23, 23);
      ellipse(dieX - 25, dieY - 25, 23, 23);
      countFour = countFour + 1;
    }
    if (number == 5) {
      ellipse(dieX, dieY, 25, 25);
      ellipse(dieX + 25, dieY - 25, 23, 23);
      ellipse(dieX - 25, dieY + 25, 23, 23);
      ellipse(dieX + 25, dieY + 25, 23, 23);
      ellipse(dieX - 25, dieY - 25, 23, 23);
      countFive = countFive + 1;
    }
    if (number == 6) {
      ellipse(dieX + 25, dieY - 25, 23, 23);
      ellipse(dieX + 25, dieY, 23, 23);
      ellipse(dieX + 25, dieY + 25, 23, 23);
      ellipse(dieX - 25, dieY + 25, 23, 23);
      ellipse(dieX - 25, dieY, 23, 23);
      ellipse(dieX - 25, dieY - 25, 23, 23);
      countSix = countSix + 1;
    }
  }
}
