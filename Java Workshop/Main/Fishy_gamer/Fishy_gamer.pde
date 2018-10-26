import javax.swing.JOptionPane;

String testcurrentGamemode = "";
int currentGamemode = 0;
int currentScore = 0;

// Fish Feeeder :)
void setup() {
  // Size the window
  size(1000,750);
  String testcurrentGamemode = JOptionPane.showInputDialog("Please select the current gamemode (Easiest 1 - 3 Hardest)");
  Integer.parseInt(testcurrentGamemode);
}

int food1X = (int)random(0,500);
int food1Y = (int)random(0,500);
int currentPosition = 0;

void drawFish() { // Draw fish method
  noStroke();   
  fill(255,255,255);
  ellipse(mouseX-17,mouseY-17,20,20); //back side eye
  fill(255,200,88);
  ellipse(mouseX,mouseY,90,50); //body
  triangle(mouseX+30,mouseY,mouseX+70,mouseY+30,mouseX+70,mouseY-30); //tail
  stroke(0);
  triangle(mouseX,mouseY,mouseX+15,mouseY+10,mouseX+15,mouseY-10); //side fin
  noStroke();
  fill(255,200,88);
  ellipse(mouseX,mouseY,15,15); //side fin cover
  noStroke();
  fill(255,255,255);
  ellipse(mouseX-25,mouseY-15,20,20); //front eye 
  fill(0,0,0);
  ellipse(mouseX-25,mouseY-15,5,5); //pupil
  fill(141,233,237);
  ellipse(mouseX-45,mouseY,25,25); //mouth
}

void checkCatch(int x, int y) {
  if (x > mouseX-58 && x < mouseX-30){
    if (y > mouseY-17 && y < mouseY + 30){
      currentScore++; // Add to the current score
    }
  } 
  else if (food1Y > height && currentScore > 0) {
    currentScore--;
  }
}

void draw() {
  checkCatch(food1X,food1Y);
  // Set some settings
  background(141,233,237);

  fill(0, 0, 0);
  noStroke();
  if (food1Y+currentPosition > 720) {
    currentPosition = 0;
    food1X = (int)random(0,500);
    food1Y = (int)random(0,500);
    ellipse(food1X,food1Y+currentPosition,30,30); // Creates the "food"
  }
  else
  {
    ellipse(food1X,food1Y+currentPosition,30,30); // Creates the "food"
  }
  currentPosition += 1;
  drawFish();
  fill(0,0,0);
  textSize(16);
  text("Score: " + currentScore, 20, 20);
}