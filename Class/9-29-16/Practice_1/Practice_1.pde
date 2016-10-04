
void setup() {
  size(600, 600);
}

int x = 0;
int y = 0;

void draw() {
  fill(255,255,255,0);
  rect(x, y, 100, 100);
  x = x+10;
  y = y+10;
}