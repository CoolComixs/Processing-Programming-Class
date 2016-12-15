void setup() {
  size(600, 600);
  frameRate(1000);
}

void draw() {
  stroke(0);
  ellipse(300, 300, 250, 250);
  float color1 = random(0, 255);
  float color2 = random(0, 255);
  float color3 = random(0, 255);
  stroke (color1, color2, color3);

  float x = random(100, 500);
  float y = random(100,500);
  line(300, 300, x, y);
}