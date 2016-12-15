
void setup() {
  size(1440, 900);
}


void draw() {
  float col1 = random(0, 255);
  float col2 = random(0, 255);
  float col3 = random(0, 255);

  fill(col1, col2, col3);
  ellipse(mouseX, mouseY, mouseY, mouseX);
}