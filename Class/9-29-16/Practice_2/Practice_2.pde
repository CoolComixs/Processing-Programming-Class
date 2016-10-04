
void setup() {
  size(600, 600);
}

int x = 0;
int y = 0;
int x2 = 600;
int y2 = 0;

void draw() {
  fill(255,255,255,0);
  ellipse(x, y, 100, 100);
  ellipse(x2, y2, 100, 100);
  x = x+5;
  y = y+5;
  x2 = x2-5;
  y2 = y2+5;
}