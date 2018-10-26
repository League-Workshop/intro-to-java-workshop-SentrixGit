void setup() {
  size(500,500);
  noStroke();
}

void draw() {
  if (mousePressed) {
    fill(random(1,255),random(1,255),random(1,255));
    delay(100);
  }
  ellipse(300,300,300,300);
}